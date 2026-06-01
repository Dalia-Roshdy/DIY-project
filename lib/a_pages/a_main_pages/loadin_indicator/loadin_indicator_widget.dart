import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loadin_indicator_model.dart';
export 'loadin_indicator_model.dart';

class LoadinIndicatorWidget extends StatefulWidget {
  const LoadinIndicatorWidget({
    super.key,
    required this.orderId,
  });

  final DocumentReference? orderId;

  static String routeName = 'loadin_indicator';
  static String routePath = '/loadinIndicator';

  @override
  State<LoadinIndicatorWidget> createState() => _LoadinIndicatorWidgetState();
}

class _LoadinIndicatorWidgetState extends State<LoadinIndicatorWidget> {
  late LoadinIndicatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadinIndicatorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderAct = await OrdersRecord.getDocumentOnce(widget.orderId!);
      _model.paymentJson = await PaymentsGroup.getPaymentByIdCall.call(
        paymentIntentId: _model.orderAct?.payment.paymentIntentId,
      );

      if ((_model.paymentJson?.succeeded ?? true)) {
        if (PaymentsGroup.getPaymentByIdCall.status(
              (_model.paymentJson?.jsonBody ?? ''),
            ) ==
            PaymentStatus.succeeded.name) {
          await _model.orderAct!.reference.update(createOrdersRecordData(
            payment: createPaymentDataStruct(
              paymentIntentId: PaymentsGroup.getPaymentByIdCall.paymentId(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              status: PaymentsGroup.getPaymentByIdCall.status(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              paidAt: dateTimeFromSecondsSinceEpoch(
                  PaymentsGroup.getPaymentByIdCall.paidAt(
                (_model.paymentJson?.jsonBody ?? ''),
              )!),
              currency: PaymentsGroup.getPaymentByIdCall.currency(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              amountTotal: PaymentsGroup.getPaymentByIdCall
                      .amount(
                        (_model.paymentJson?.jsonBody ?? ''),
                      )!
                      .round() /
                  100,
              clearUnsetFields: false,
            ),
            status: OrderStatus.paid,
            updatedAt: getCurrentTimestamp,
          ));
          FFAppState().Cart = CartStruct();
        } else {
          await _model.orderAct!.reference.update(createOrdersRecordData(
            payment: createPaymentDataStruct(
              paymentIntentId: PaymentsGroup.getPaymentByIdCall.paymentId(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              status: PaymentsGroup.getPaymentByIdCall.status(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              currency: PaymentsGroup.getPaymentByIdCall.currency(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              amountTotal: PaymentsGroup.getPaymentByIdCall
                      .amount(
                        (_model.paymentJson?.jsonBody ?? ''),
                      )!
                      .round() /
                  100,
              clearUnsetFields: false,
            ),
            updatedAt: getCurrentTimestamp,
          ));
        }

        _model.orderUpdatedAct =
            await OrdersRecord.getDocumentOnce(widget.orderId!);
        _model.order = _model.orderUpdatedAct;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_model.order == null)
                  Container(
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.1, 0.0),
                          child: Lottie.asset(
                            'assets/jsons/Data___Scanning.json',
                            width: 543.9,
                            height: 896.9,
                            fit: BoxFit.contain,
                            animate: true,
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Align(
                            alignment: AlignmentDirectional(0.95, 0.0),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Align(
                            alignment: AlignmentDirectional(0.37, 0.58),
                            child: Container(
                              width: 146.3,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                if (_model.order != null)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 220.0,
                              height: 220.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).greenLight,
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/bookingsucess_na.gif',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'status',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    _model.order?.payment.status,
                                    'status',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ]
                                  .divide(SizedBox(width: 20.0))
                                  .around(SizedBox(width: 20.0)),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'paid at',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    _model.order?.payment.paidAt?.toString(),
                                    'paid at',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ]
                                  .divide(SizedBox(width: 20.0))
                                  .around(SizedBox(width: 20.0)),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'customer',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    _model.order?.customerSnap.email,
                                    'status',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ]
                                  .divide(SizedBox(width: 20.0))
                                  .around(SizedBox(width: 20.0)),
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 20.0))
                            .around(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
