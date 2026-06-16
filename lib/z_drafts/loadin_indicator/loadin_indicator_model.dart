import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loadin_indicator_widget.dart' show LoadinIndicatorWidget;
import 'package:flutter/material.dart';

class LoadinIndicatorModel extends FlutterFlowModel<LoadinIndicatorWidget> {
  ///  Local state fields for this page.

  OrdersRecord? order;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in loadin_indicator widget.
  OrdersRecord? orderAct;
  // Stores action output result for [Backend Call - API (getPaymentById)] action in loadin_indicator widget.
  ApiCallResponse? paymentJson;
  // Stores action output result for [Backend Call - Read Document] action in loadin_indicator widget.
  OrdersRecord? orderUpdatedAct;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
