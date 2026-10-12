import '/backend/backend.dart';
import '/c_components/dialog_components/subscription_success_dialog/subscription_success_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 's11_socials_model.dart';
export 's11_socials_model.dart';

class S11SocialsWidget extends StatefulWidget {
  const S11SocialsWidget({super.key});

  @override
  State<S11SocialsWidget> createState() => _S11SocialsWidgetState();
}

class _S11SocialsWidgetState extends State<S11SocialsWidget>
    with TickerProviderStateMixin {
  late S11SocialsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S11SocialsModel());

    _model.textFieldEmailAddressTextController ??= TextEditingController();
    _model.textFieldEmailAddressFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(5.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 12500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.05, 1.05),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Wrap(
          spacing: 0.0,
          runSpacing: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ),
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.502),
              height: valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 250.0
                    : 370.0,
                370.0,
              ),
              constraints: BoxConstraints(
                maxWidth: 1055.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 0.0
                      : 50.0,
                  50.0,
                )),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.095,
                      constraints: BoxConstraints(
                        maxHeight: 100.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: AutoSizeText(
                          'SUBSCRIBE TO\nOUR NEWSLETTER',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                letterSpacing:
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? FFAppConstants.LetterSpacingM
                                        : FFAppConstants.LetterSpacingTD,
                                fontWeight: FontWeight.normal,
                                lineHeight: 0.8,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineLargeIsCustom,
                              ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 25.0),
                        child: AutoSizeText(
                          'Stay updated with helpful tips, repair guides, and special offers to keep your AC running smoothly.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                lineHeight: 1.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      constraints: BoxConstraints(
                        minHeight: 50.0,
                        maxHeight: valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width < kBreakpointSmall
                              ? 50.0
                              : 100.0,
                          100.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 50.0
                                  : (MediaQuery.sizeOf(context).height * 0.1),
                              100.0,
                            ),
                            height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 50.0
                                  : (MediaQuery.sizeOf(context).height * 0.1),
                              100.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.email_sharp,
                                color: FlutterFlowTheme.of(context).primary,
                                size: valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 25.0
                                      : 40.0,
                                  40.0,
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          Expanded(
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 15.0
                                              : 25.0,
                                          50.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 15.0
                                              : 25.0,
                                          50.0,
                                        ),
                                        0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .textFieldEmailAddressTextController,
                                      focusNode:
                                          _model.textFieldEmailAddressFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textFieldEmailAddressTextController',
                                        Duration(milliseconds: 200),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Email Address',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldEmailAddressTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  if (_model.errorMS != null &&
                                      _model.errorMS != '')
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 15.0
                                                        : 25.0,
                                                    50.0,
                                                  ),
                                                  5.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 15.0
                                                        : 25.0,
                                                    50.0,
                                                  ),
                                                  5.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.errorMS,
                                              'error',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .redColor,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            overflow: TextOverflow.visible,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'S11_SOCIALS_COMP_Row_maohcqud_ON_TAP');
                                      logFirebaseEvent('Row_validate_form');
                                      _model.form = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        safeSetState(() => _model.form = false);
                                        return;
                                      }
                                      logFirebaseEvent('Row_firestore_query');
                                      _model.count =
                                          await querySubscriberRecordCount(
                                        queryBuilder: (subscriberRecord) =>
                                            subscriberRecord.where(
                                          'email',
                                          isEqualTo: _model
                                              .textFieldEmailAddressTextController
                                              .text
                                              .trim()
                                              .toLowerCase(),
                                        ),
                                      );
                                      if (_model.count == 0) {
                                        logFirebaseEvent('Row_backend_call');

                                        var subscriberRecordReference =
                                            SubscriberRecord.collection.doc();
                                        await subscriberRecordReference
                                            .set(createSubscriberRecordData(
                                          email: _model
                                              .textFieldEmailAddressTextController
                                              .text
                                              .trim()
                                              .toLowerCase(),
                                          createdAt: getCurrentTimestamp,
                                        ));
                                        _model.subsDoc = SubscriberRecord
                                            .getDocumentFromData(
                                                createSubscriberRecordData(
                                                  email: _model
                                                      .textFieldEmailAddressTextController
                                                      .text
                                                      .trim()
                                                      .toLowerCase(),
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                ),
                                                subscriberRecordReference);
                                        await Future.wait([
                                          Future(() async {
                                            logFirebaseEvent(
                                                'Row_backend_call');

                                            var mailRecordReference =
                                                MailRecord.collection.doc();
                                            await mailRecordReference
                                                .set(createMailRecordData(
                                              to: _model
                                                  .textFieldEmailAddressTextController
                                                  .text
                                                  .trim()
                                                  .toLowerCase(),
                                              message: createMessageStruct(
                                                subject:
                                                    'Welcome to DIY AC Repair',
                                                text: 'DIY AC Repair',
                                                html:
                                                    '<!DOCTYPE html> <html> <head>   <meta charset=\"UTF-8\">   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">   <title>Welcome to DIY AC Repair</title> </head>  <body style=\"margin:0;padding:0;background-color:#f3f5f7;font-family:Arial,Helvetica,sans-serif;\">  <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"        style=\"background-color:#f3f5f7;\">   <tr>     <td align=\"center\" style=\"padding:32px 16px;\">        <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"              style=\"max-width:600px;background-color:#ffffff;border:1px solid #e1e5e9;border-radius:8px;overflow:hidden;\">          <tr>           <td style=\"background-color:#17324d;padding:28px 32px;text-align:center;\">              <img               src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-i-y-a-cweb-23yv9j/assets/t5ennlgc4nkz/logopng.PNG\"               alt=\"DIY AC Repair\"               width=\"150\"               style=\"display:block;width:150px;max-width:100%;height:auto;margin:0 auto 18px;border:0;\"             >              <h1 style=\"margin:0;color:#ffffff;font-size:22px;line-height:1.3;\">               Welcome to DIY AC Repair             </h1>              <p style=\"margin:8px 0 0;color:#dce6ef;font-size:14px;line-height:1.5;\">               Your newsletter subscription is active.             </p>            </td>         </tr>          <tr>           <td style=\"padding:32px;text-align:center;\">              <p style=\"margin:0 0 16px;color:#1f2933;font-size:16px;line-height:1.7;\">               Thank you for subscribing to the DIY AC Repair newsletter.             </p>              <p style=\"margin:0 0 26px;color:#66717c;font-size:14px;line-height:1.7;\">               You’ll receive helpful AC maintenance tips, repair guidance and important updates from our team.             </p>              <a href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app\"                style=\"display:inline-block;padding:13px 24px;background-color:#2474a8;color:#ffffff;text-decoration:none;border-radius:5px;font-size:14px;font-weight:bold;\">               Visit DIY AC Repair             </a>              <hr style=\"border:none;border-top:1px solid #e7ebef;margin:32px 0 22px;\">              <p style=\"margin:0;color:#84909b;font-size:12px;line-height:1.7;\">               You received this email because you subscribed through the DIY AC Repair website.             </p>              <p style=\"margin:12px 0 0;color:#84909b;font-size:12px;line-height:1.7;\">               If you no longer wish to receive these emails,               <a href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app/unsubscribe?subscriberId=${_model.subsDoc?.reference.id}\"                  style=\"color:#2474a8;text-decoration:underline;\">                 unsubscribe here               </a>.             </p>            </td>         </tr>          <tr>           <td style=\"padding:18px 32px;background-color:#f7f9fb;border-top:1px solid #e7ebef;text-align:center;\">             <p style=\"margin:0;color:#84909b;font-size:12px;\">               DIY AC Repair             </p>           </td>         </tr>        </table>      </td>   </tr> </table>  </body> </html>',
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                              ctime: getCurrentTimestamp,
                                            ));
                                            _model.mail =
                                                MailRecord.getDocumentFromData(
                                                    createMailRecordData(
                                                      to: _model
                                                          .textFieldEmailAddressTextController
                                                          .text
                                                          .trim()
                                                          .toLowerCase(),
                                                      message:
                                                          createMessageStruct(
                                                        subject:
                                                            'Welcome to DIY AC Repair',
                                                        text: 'DIY AC Repair',
                                                        html:
                                                            '<!DOCTYPE html> <html> <head>   <meta charset=\"UTF-8\">   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">   <title>Welcome to DIY AC Repair</title> </head>  <body style=\"margin:0;padding:0;background-color:#f3f5f7;font-family:Arial,Helvetica,sans-serif;\">  <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"        style=\"background-color:#f3f5f7;\">   <tr>     <td align=\"center\" style=\"padding:32px 16px;\">        <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"              style=\"max-width:600px;background-color:#ffffff;border:1px solid #e1e5e9;border-radius:8px;overflow:hidden;\">          <tr>           <td style=\"background-color:#17324d;padding:28px 32px;text-align:center;\">              <img               src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-i-y-a-cweb-23yv9j/assets/t5ennlgc4nkz/logopng.PNG\"               alt=\"DIY AC Repair\"               width=\"150\"               style=\"display:block;width:150px;max-width:100%;height:auto;margin:0 auto 18px;border:0;\"             >              <h1 style=\"margin:0;color:#ffffff;font-size:22px;line-height:1.3;\">               Welcome to DIY AC Repair             </h1>              <p style=\"margin:8px 0 0;color:#dce6ef;font-size:14px;line-height:1.5;\">               Your newsletter subscription is active.             </p>            </td>         </tr>          <tr>           <td style=\"padding:32px;text-align:center;\">              <p style=\"margin:0 0 16px;color:#1f2933;font-size:16px;line-height:1.7;\">               Thank you for subscribing to the DIY AC Repair newsletter.             </p>              <p style=\"margin:0 0 26px;color:#66717c;font-size:14px;line-height:1.7;\">               You’ll receive helpful AC maintenance tips, repair guidance and important updates from our team.             </p>              <a href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app\"                style=\"display:inline-block;padding:13px 24px;background-color:#2474a8;color:#ffffff;text-decoration:none;border-radius:5px;font-size:14px;font-weight:bold;\">               Visit DIY AC Repair             </a>              <hr style=\"border:none;border-top:1px solid #e7ebef;margin:32px 0 22px;\">              <p style=\"margin:0;color:#84909b;font-size:12px;line-height:1.7;\">               You received this email because you subscribed through the DIY AC Repair website.             </p>              <p style=\"margin:12px 0 0;color:#84909b;font-size:12px;line-height:1.7;\">               If you no longer wish to receive these emails,               <a href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app/unsubscribe?subscriberId=${_model.subsDoc?.reference.id}\"                  style=\"color:#2474a8;text-decoration:underline;\">                 unsubscribe here               </a>.             </p>            </td>         </tr>          <tr>           <td style=\"padding:18px 32px;background-color:#f7f9fb;border-top:1px solid #e7ebef;text-align:center;\">             <p style=\"margin:0;color:#84909b;font-size:12px;\">               DIY AC Repair             </p>           </td>         </tr>        </table>      </td>   </tr> </table>  </body> </html>',
                                                        clearUnsetFields: false,
                                                        create: true,
                                                      ),
                                                      ctime:
                                                          getCurrentTimestamp,
                                                    ),
                                                    mailRecordReference);
                                            logFirebaseEvent(
                                                'Row_reset_form_fields');
                                            safeSetState(() {
                                              _model
                                                  .textFieldEmailAddressTextController
                                                  ?.clear();
                                            });
                                          }),
                                          Future(() async {
                                            logFirebaseEvent(
                                                'Row_alert_dialog');
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child:
                                                      SubscriptionSuccessDialogWidget(),
                                                );
                                              },
                                            );
                                          }),
                                        ]);
                                      } else {
                                        logFirebaseEvent(
                                            'Row_update_component_state');
                                        _model.errorMS =
                                            'This email is already subscribed.';
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              'SUBSCRIBE',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallIsCustom,
                                                  ),
                                            ),
                                          ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 24.0
                                                : 48.0,
                                            48.0,
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'iconOnActionTriggerAnimation1']!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered1 = true);
                                logFirebaseEvent(
                                    'S11_SOCIALS_MouseRegion_9xc56z0d_ON_TOGG');
                                // Start Arrow Animation
                                logFirebaseEvent(
                                    'MouseRegion_StartArrowAnimation');
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation1'] !=
                                    null) {
                                  await animationsMap[
                                          'iconOnActionTriggerAnimation1']!
                                      .controller
                                    ..reset()
                                    ..repeat(reverse: true);
                                }
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered1 = false);
                                logFirebaseEvent(
                                    'S11_SOCIALS_MouseRegion_9xc56z0d_ON_TOGG');
                                // Reset Arrow Animation
                                logFirebaseEvent(
                                    'MouseRegion_ResetArrowAnimation');
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation1'] !=
                                    null) {
                                  animationsMap[
                                          'iconOnActionTriggerAnimation1']!
                                      .controller
                                      .reset();
                                }
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.43),
              height: valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 320.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 305.0;
                  } else {
                    return 370.0;
                  }
                }(),
                370.0,
              ),
              constraints: BoxConstraints(
                maxWidth: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointLarge
                      ? double.infinity
                      : 860.0,
                  860.0,
                ),
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      ),
                      25.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      ),
                      25.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 734.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Stack(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 25.0,
                              alignment: WrapAlignment.spaceBetween,
                              crossAxisAlignment: WrapCrossAlignment.end,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.21,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.21,
                                  constraints: BoxConstraints(
                                    minWidth: valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 200.0
                                          : 300.0,
                                      300.0,
                                    ),
                                    maxWidth: 410.0,
                                    maxHeight: 230.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: AutoSizeText(
                                      'FOLLOW OUR\nSOCIALS',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            fontSize: 72.0,
                                            letterSpacing:
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? FFAppConstants
                                                        .LetterSpacingM
                                                    : FFAppConstants
                                                        .LetterSpacingTD,
                                            lineHeight: 1.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .displaySmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.14,
                                  constraints: BoxConstraints(
                                    minWidth: 260.0,
                                    maxWidth: 280.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FaIcon(
                                        FaIconData(const IconData(
                                            /* instagram */ 0xf16d,
                                            fontFamily: 'FontAwesomeBrands',
                                            fontPackage:
                                                'font_awesome_flutter')),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 60.0,
                                      ),
                                      FaIcon(
                                        FaIconData(const IconData(
                                            /* facebook */ 0xf09a,
                                            fontFamily: 'FontAwesomeBrands',
                                            fontPackage:
                                                'font_awesome_flutter')),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 54.0,
                                      ),
                                      FaIcon(
                                        FaIconData(const IconData(
                                            /* twitter */ 0xf099,
                                            fontFamily: 'FontAwesomeBrands',
                                            fontPackage:
                                                'font_awesome_flutter')),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 60.0,
                                      ),
                                      FaIcon(
                                        FaIconData(const IconData(
                                            /* linkedin */ 0xf08c,
                                            fontFamily: 'FontAwesomeBrands',
                                            fontPackage:
                                                'font_awesome_flutter')),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 60.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, -0.7),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Icon(
                              Icons.emergency_sharp,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 80.0,
                            )
                                .animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation']!)
                                .animateOnActionTrigger(
                                  animationsMap[
                                      'iconOnActionTriggerAnimation2']!,
                                ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = true);
                              logFirebaseEvent(
                                  'S11_SOCIALS_MouseRegion_f6huic2e_ON_TOGG');
                              // Start MiniStar Animation
                              logFirebaseEvent(
                                  'MouseRegion_StartMiniStarAnimation');
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation2']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = false);
                              logFirebaseEvent(
                                  'S11_SOCIALS_MouseRegion_f6huic2e_ON_TOGG');
                              // Reset MiniStar Animation
                              logFirebaseEvent(
                                  'MouseRegion_ResetMiniStarAnimation');
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation2']!
                                    .controller
                                    .reset();
                              }
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
