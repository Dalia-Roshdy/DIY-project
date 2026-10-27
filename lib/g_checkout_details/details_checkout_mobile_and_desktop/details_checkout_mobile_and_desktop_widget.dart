import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/stripe/payment_manager.dart';
import '/c_components/dialog_components/error_at_checkout/error_at_checkout_widget.dart';
import '/c_components/dialog_components/zip_out_of_delivery_area/zip_out_of_delivery_area_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_checkout_details/components/button8/button8_widget.dart';
import '/g_checkout_details/components/form_label2/form_label2_widget.dart';
import '/g_checkout_details/desktop/payment_badge3/payment_badge3_widget.dart';
import '/g_checkout_details/desktop/text_field7/text_field7_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'details_checkout_mobile_and_desktop_model.dart';
export 'details_checkout_mobile_and_desktop_model.dart';

class DetailsCheckoutMobileAndDesktopWidget extends StatefulWidget {
  const DetailsCheckoutMobileAndDesktopWidget({super.key});

  @override
  State<DetailsCheckoutMobileAndDesktopWidget> createState() =>
      _DetailsCheckoutMobileAndDesktopWidgetState();
}

class _DetailsCheckoutMobileAndDesktopWidgetState
    extends State<DetailsCheckoutMobileAndDesktopWidget> {
  late DetailsCheckoutMobileAndDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsCheckoutMobileAndDesktopModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DETAILS_CHECKOUT_MOBILE_AND_DESKTOP_Deta');
      logFirebaseEvent('Details_Checkout_mobile_and_desktop_fire');
      _model.returpolicyAction = await querySettingsRecordOnce(
        queryBuilder: (settingsRecord) => settingsRecord.where(
          'key',
          isEqualTo: 'return_policy',
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      logFirebaseEvent('Details_Checkout_mobile_and_desktop_upda');
      _model.orderPS = null;
      _model.paymentidPS = null;
      _model.returnPolicy = _model.returpolicyAction!.value;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 800.0,
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Checkout Details',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineMediumIsCustom,
                                ),
                          ),
                        ),
                        Text(
                          'Complete your purchase securely. Your payment information is encrypted and protected with industry-standard protocols.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                lineHeight: 1.5,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment:
                              (FFCrossAxisAlignment.start).flutterValue,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Icon(
                                Icons.info_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                valueOrDefault<String>(
                                  _model.returnPolicy,
                                  'Return Policy',
                                ),
                                textAlign: TextAlign.start,
                                maxLines: 6,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(4.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.verified_user_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Security Policy',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'Credit card details are not stored on our servers. All transactions are processed via encrypted gateways.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.4,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(0.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Billing/Shipping Information',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.4,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleMediumIsCustom,
                                          ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabel2Widget(
                                            label: 'Full Name',
                                            isRequired: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldNameModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextField7Widget(
                                            label: false,
                                            helper: false,
                                            hint: 'John Doe',
                                            value: '',
                                            leading_icon_present: false,
                                            trailing_icon_present: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabel2Widget(
                                            label: 'Email',
                                            isRequired: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldEmailModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextField7Widget(
                                            label: false,
                                            helper: false,
                                            hint: 'John@gmail.com',
                                            value: '',
                                            leading_icon_present: false,
                                            trailing_icon_present: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabel2Widget(
                                            label: 'Address',
                                            isRequired: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldAddressModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextField7Widget(
                                            label: false,
                                            helper: false,
                                            hint: '123 DIY Lane',
                                            value: '',
                                            leading_icon_present: false,
                                            trailing_icon_present: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'City',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldCityModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: 'City',
                                                  value: '',
                                                  leading_icon_present: false,
                                                  trailing_icon_present: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'State/Province',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldStateModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: 'State',
                                                  value: '',
                                                  leading_icon_present: false,
                                                  trailing_icon_present: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'ZIP Code',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textFieldZipModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: '5-digit ZIP code',
                                                  value: '',
                                                  leading_icon_present: false,
                                                  trailing_icon_present: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'Phone Number',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldPhoneModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: '(555) 000-0000',
                                                  value: '',
                                                  leading_icon_present: false,
                                                  trailing_icon_present: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (false)
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.formLabelModel8,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormLabel2Widget(
                                                    label: 'PIN',
                                                    isRequired: true,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textFieldCardModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextField7Widget(
                                                    label: false,
                                                    helper: false,
                                                    hint: '0000',
                                                    value: '0000',
                                                    leading_icon_present: false,
                                                    trailing_icon_present:
                                                        false,
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    if (false)
                                      Text(
                                        'Please remember your details  (Email, phone, PIN) to track and find your order.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFFB85757),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                thickness: 1.0,
                                indent: 0.0,
                                endIndent: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Total Amount Due',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                    ),
                                    Text(
                                      '\$${FFAppState().Cart.total.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'DETAILS_CHECKOUT_MOBILE_AND_DESKTOP_Butt');
                                    if (_model.paymentInProgress == false) {
                                      logFirebaseEvent('Button_validate_form');
                                      _model.checkData = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        _model.checkData = false;
                                      }
                                      if (_model.checkData == false) {
                                        logFirebaseEvent('Button_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: ErrorAtCheckoutWidget(),
                                            );
                                          },
                                        );
                                      } else {
                                        logFirebaseEvent(
                                            'Button_firestore_query');
                                        _model.zipRecord =
                                            await queryDeliveryZipCodesRecordOnce(
                                          queryBuilder:
                                              (deliveryZipCodesRecord) =>
                                                  deliveryZipCodesRecord.where(
                                            'zipCode',
                                            isEqualTo: _model.textFieldZipModel
                                                .inputTextController.text,
                                          ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        if (_model.zipRecord?.zipCode == null ||
                                            _model.zipRecord?.zipCode == '') {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          var deliveryZipCodesRecordReference =
                                              DeliveryZipCodesRecord.collection
                                                  .doc();
                                          await deliveryZipCodesRecordReference
                                              .set(
                                                  createDeliveryZipCodesRecordData(
                                            zipCode: _model.textFieldZipModel
                                                .inputTextController.text,
                                            isActive: false,
                                          ));
                                          _model.createinactivezip =
                                              DeliveryZipCodesRecord
                                                  .getDocumentFromData(
                                                      createDeliveryZipCodesRecordData(
                                                        zipCode: _model
                                                            .textFieldZipModel
                                                            .inputTextController
                                                            .text,
                                                        isActive: false,
                                                      ),
                                                      deliveryZipCodesRecordReference);
                                          logFirebaseEvent(
                                              'Button_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child:
                                                    ZipOutOfDeliveryAreaWidget(),
                                              );
                                            },
                                          );
                                        } else if ((_model.zipRecord?.zipCode !=
                                                    null &&
                                                _model.zipRecord?.zipCode !=
                                                    '') &&
                                            _model.zipRecord!.isActive) {
                                          if (_model.orderPS == null) {
                                            logFirebaseEvent(
                                                'Button_validate_form');
                                            _model.form01 = true;
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              safeSetState(
                                                  () => _model.form01 = false);
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'Button_update_component_state');
                                            _model.paymentInProgress = true;
                                            logFirebaseEvent(
                                                'Button_custom_action');
                                            _model.linsACTC = await actions
                                                .cartItemsToOrderLinesA(
                                              FFAppState()
                                                  .Cart
                                                  .cartItems
                                                  .toList(),
                                            );
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            var ordersRecordReference =
                                                OrdersRecord.collection.doc();
                                            await ordersRecordReference.set({
                                              ...createOrdersRecordData(
                                                createdAt: getCurrentTimestamp,
                                                updatedAt: getCurrentTimestamp,
                                                status: OrderStatus.submitted,
                                                totalsSnap:
                                                    createTotalSnapStruct(
                                                  subtotal: FFAppState()
                                                      .Cart
                                                      .subtotal,
                                                  shipping: FFAppState()
                                                      .Cart
                                                      .shipping,
                                                  tax: FFAppState().Cart.tax,
                                                  total:
                                                      FFAppState().Cart.total,
                                                  motorSLFees: FFAppState()
                                                      .Cart
                                                      .motorSLFees,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                payment:
                                                    createPaymentDataStruct(
                                                  provider: 'Strip',
                                                  currency: 'usd',
                                                  status: PaymentStatus
                                                      .pending.name,
                                                  amountTotal:
                                                      FFAppState().Cart.total,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                customerSnap:
                                                    createCustomerStruct(
                                                  email: _model
                                                      .textFieldEmailModel
                                                      .inputTextController
                                                      .text,
                                                  shippingAddress:
                                                      '${_model.textFieldAddressModel.inputTextController.text}, ${_model.textFieldCityModel.inputTextController.text}, ${_model.textFieldStateModel.inputTextController.text} ${_model.textFieldZipModel.inputTextController.text}',
                                                  phone: _model
                                                      .textFieldZipModel
                                                      .inputTextController
                                                      .text,
                                                  name: _model
                                                      .textFieldNameModel
                                                      .inputTextController
                                                      .text,
                                                  pin: _model.textFieldCardModel
                                                      .inputTextController.text,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                comment:
                                                    FFAppState().Cart.comment,
                                                acCustomer:
                                                    updateAcCustomerDataStruct(
                                                  FFAppState().acCustomer,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                orderNumber: (String var1) {
                                                  return 'TT-'
                                                      '${DateTime.now().day.toString().padLeft(2, '0')}'
                                                      '${DateTime.now().month.toString().padLeft(2, '0')}'
                                                      '-${var1.replaceAll(RegExp(r'\D'), '').substring(
                                                            var1
                                                                    .replaceAll(
                                                                        RegExp(
                                                                            r'\D'),
                                                                        '')
                                                                    .length -
                                                                4,
                                                          )}'
                                                      '-${DateTime.now().hour.toString().padLeft(2, '0')}'
                                                      '${DateTime.now().minute.toString().padLeft(2, '0')}'
                                                      '${DateTime.now().second.toString().padLeft(2, '0')}';
                                                }(_model.textFieldZipModel
                                                    .inputTextController.text),
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'lines':
                                                      getOrderLinesListFirestoreData(
                                                    _model.linsACTC,
                                                  ),
                                                },
                                              ),
                                            });
                                            _model.order = OrdersRecord
                                                .getDocumentFromData({
                                              ...createOrdersRecordData(
                                                createdAt: getCurrentTimestamp,
                                                updatedAt: getCurrentTimestamp,
                                                status: OrderStatus.submitted,
                                                totalsSnap:
                                                    createTotalSnapStruct(
                                                  subtotal: FFAppState()
                                                      .Cart
                                                      .subtotal,
                                                  shipping: FFAppState()
                                                      .Cart
                                                      .shipping,
                                                  tax: FFAppState().Cart.tax,
                                                  total:
                                                      FFAppState().Cart.total,
                                                  motorSLFees: FFAppState()
                                                      .Cart
                                                      .motorSLFees,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                payment:
                                                    createPaymentDataStruct(
                                                  provider: 'Strip',
                                                  currency: 'usd',
                                                  status: PaymentStatus
                                                      .pending.name,
                                                  amountTotal:
                                                      FFAppState().Cart.total,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                customerSnap:
                                                    createCustomerStruct(
                                                  email: _model
                                                      .textFieldEmailModel
                                                      .inputTextController
                                                      .text,
                                                  shippingAddress:
                                                      '${_model.textFieldAddressModel.inputTextController.text}, ${_model.textFieldCityModel.inputTextController.text}, ${_model.textFieldStateModel.inputTextController.text} ${_model.textFieldZipModel.inputTextController.text}',
                                                  phone: _model
                                                      .textFieldZipModel
                                                      .inputTextController
                                                      .text,
                                                  name: _model
                                                      .textFieldNameModel
                                                      .inputTextController
                                                      .text,
                                                  pin: _model.textFieldCardModel
                                                      .inputTextController.text,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                comment:
                                                    FFAppState().Cart.comment,
                                                acCustomer:
                                                    updateAcCustomerDataStruct(
                                                  FFAppState().acCustomer,
                                                  clearUnsetFields: false,
                                                  create: true,
                                                ),
                                                orderNumber: (String var1) {
                                                  return 'TT-'
                                                      '${DateTime.now().day.toString().padLeft(2, '0')}'
                                                      '${DateTime.now().month.toString().padLeft(2, '0')}'
                                                      '-${var1.replaceAll(RegExp(r'\D'), '').substring(
                                                            var1
                                                                    .replaceAll(
                                                                        RegExp(
                                                                            r'\D'),
                                                                        '')
                                                                    .length -
                                                                4,
                                                          )}'
                                                      '-${DateTime.now().hour.toString().padLeft(2, '0')}'
                                                      '${DateTime.now().minute.toString().padLeft(2, '0')}'
                                                      '${DateTime.now().second.toString().padLeft(2, '0')}';
                                                }(_model.textFieldZipModel
                                                    .inputTextController.text),
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'lines':
                                                      getOrderLinesListFirestoreData(
                                                    _model.linsACTC,
                                                  ),
                                                },
                                              ),
                                            }, ordersRecordReference);
                                            logFirebaseEvent(
                                                'Button_update_component_state');
                                            _model.orderPS =
                                                _model.order?.reference;
                                          } else {
                                            logFirebaseEvent(
                                                'Button_validate_form');
                                            _model.form02 = true;
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              safeSetState(
                                                  () => _model.form02 = false);
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'Button_update_component_state');
                                            _model.paymentInProgress = true;
                                            logFirebaseEvent(
                                                'Button_custom_action');
                                            _model.linsACTU = await actions
                                                .cartItemsToOrderLinesA(
                                              FFAppState()
                                                  .Cart
                                                  .cartItems
                                                  .toList(),
                                            );
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await _model.orderPS!.update({
                                              ...createOrdersRecordData(
                                                updatedAt: getCurrentTimestamp,
                                                customerSnap:
                                                    createCustomerStruct(
                                                  email: _model
                                                      .textFieldEmailModel
                                                      .inputTextController
                                                      .text,
                                                  phone: _model
                                                      .textFieldZipModel
                                                      .inputTextController
                                                      .text,
                                                  shippingAddress:
                                                      '${_model.textFieldAddressModel.inputTextController.text}, ${_model.textFieldCityModel.inputTextController.text}, ${_model.textFieldStateModel.inputTextController.text} ${_model.textFieldZipModel.inputTextController.text}',
                                                  pin: _model.textFieldCardModel
                                                      .inputTextController.text,
                                                  name: _model
                                                      .textFieldNameModel
                                                      .inputTextController
                                                      .text,
                                                  clearUnsetFields: false,
                                                ),
                                                comment:
                                                    FFAppState().Cart.comment,
                                                acCustomer:
                                                    updateAcCustomerDataStruct(
                                                  FFAppState().acCustomer,
                                                  clearUnsetFields: false,
                                                ),
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'lines':
                                                      getOrderLinesListFirestoreData(
                                                    _model.linsACTU,
                                                  ),
                                                },
                                              ),
                                            });
                                          }

                                          logFirebaseEvent(
                                              'Button_stripe_payment');
                                          final paymentResponse =
                                              await processStripePayment(
                                            context,
                                            amount:
                                                (FFAppState().Cart.total * 100)
                                                    .round(),
                                            currency: 'USD',
                                            customerEmail: _model
                                                .textFieldEmailModel
                                                .inputTextController
                                                .text,
                                            customerName: _model
                                                .textFieldNameModel
                                                .inputTextController
                                                .text,
                                            allowGooglePay: false,
                                            allowApplePay: false,
                                            themeStyle: ThemeMode.system,
                                          );
                                          if (paymentResponse.paymentId ==
                                                  null &&
                                              paymentResponse.errorMessage !=
                                                  null) {
                                            showSnackbar(
                                              context,
                                              'Error: ${paymentResponse.errorMessage}',
                                            );
                                          }
                                          _model.paymentId =
                                              paymentResponse.paymentId ?? '';

                                          logFirebaseEvent(
                                              'Button_update_component_state');
                                          _model.paymentInProgress = false;
                                          logFirebaseEvent(
                                              'Button_wait__delay');
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 50,
                                            ),
                                          );
                                          if (_model.paymentId != null &&
                                              _model.paymentId != '') {
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await _model.orderPS!
                                                .update(createOrdersRecordData(
                                              payment: createPaymentDataStruct(
                                                paymentIntentId:
                                                    _model.paymentId,
                                                status: 'processing',
                                                clearUnsetFields: false,
                                              ),
                                            ));
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.goNamed(
                                              HConfirmationCheckoutWidget
                                                  .routeName,
                                              queryParameters: {
                                                'orderId': serializeParam(
                                                  _model.orderPS,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          }
                                        } else {
                                          logFirebaseEvent(
                                              'Button_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child:
                                                    ZipOutOfDeliveryAreaWidget(),
                                              );
                                            },
                                          );
                                        }
                                      }
                                    }

                                    safeSetState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Button8Widget(
                                      content: 'Pay Securely Now',
                                      icon: Icon(
                                        Icons.lock_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .onPrimary,
                                        size: 18.0,
                                      ),
                                      iconPresent: true,
                                      iconEndPresent: false,
                                      variant: 'primary',
                                      size: 'large',
                                      fullWidth: true,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ),
                              ),
                              if (false)
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'VISA',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'MC',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'AMEX',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'PAYPAL',
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                            ].divide(SizedBox(height: 32.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.security_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 10.0,
                    ),
                    Text(
                      'Secure 256-bit SSL Encrypted Connection',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
                Text(
                  '© 2026 DIY AC Repair Systems Inc. All rights reserved.',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        color: FlutterFlowTheme.of(context).onSurface,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ],
      ),
    );
  }
}
