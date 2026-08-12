const axios = require("axios").default;
const qs = require("qs");

/// Start Payments Group Code

function createPaymentsGroup() {
  return {
    baseUrl: `https://api.stripe.com/v1/`,
    headers: {
      Authorization: `Bearer sk_test_51T2VrQ0XCBpwpAtmFHwlrc4sJBN09AHpYCJifeT0zVNb1K0blHCz52liAVbdGz479k4Y4kDSaabGCmSN0sCOBqxc00P8RxdVzs`,
    },
  };
}

async function _getPaymentByIdCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var paymentIntentId = ffVariables["paymentIntentId"];
  const paymentsGroup = createPaymentsGroup();

  var url = `${paymentsGroup.baseUrl}payment_intents/${paymentIntentId}`;
  var headers = {
    Authorization: `Bearer sk_test_51T2VrQ0XCBpwpAtmFHwlrc4sJBN09AHpYCJifeT0zVNb1K0blHCz52liAVbdGz479k4Y4kDSaabGCmSN0sCOBqxc00P8RxdVzs`,
  };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End Payments Group Code

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    GetPaymentByIdCall: _getPaymentByIdCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}

module.exports = { makeApiCall };
