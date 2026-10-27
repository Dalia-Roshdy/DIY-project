import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/c_components/dialog_components/contact_us_success_dialog/contact_us_success_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 's10_contac_us_model.dart';
export 's10_contac_us_model.dart';

class S10ContacUsWidget extends StatefulWidget {
  const S10ContacUsWidget({super.key});

  @override
  State<S10ContacUsWidget> createState() => _S10ContacUsWidgetState();
}

class _S10ContacUsWidgetState extends State<S10ContacUsWidget>
    with TickerProviderStateMixin {
  late S10ContacUsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S10ContacUsModel());

    _model.textFieldNameTextController ??= TextEditingController();
    _model.textFieldNameFocusNode ??= FocusNode();

    _model.textFieldEmailAddressTextController ??= TextEditingController();
    _model.textFieldEmailAddressFocusNode ??= FocusNode();

    _model.textFieldSubjectTextController ??= TextEditingController();
    _model.textFieldSubjectFocusNode ??= FocusNode();

    _model.textFieldMessageTextController ??= TextEditingController();
    _model.textFieldMessageFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(-10.0, 0.0),
            end: Offset(10.0, 0.0),
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
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                    ? double.infinity
                    : (MediaQuery.sizeOf(context).width * 0.43),
                height: MediaQuery.sizeOf(context).height * 0.9,
                constraints: BoxConstraints(
                  maxWidth: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? double.infinity
                        : 860.0,
                    860.0,
                  ),
                  maxHeight: valueOrDefault<double>(
                    () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 560.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 832.0;
                      } else {
                        return 1000.0;
                      }
                    }(),
                    1000.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 25.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 50.0;
                          } else {
                            return 100.0;
                          }
                        }(),
                        100.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ].addToStart(SizedBox(width: 200.0)),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge
                              ? (MediaQuery.sizeOf(context).width * 0.86)
                              : (MediaQuery.sizeOf(context).width * 0.37),
                          constraints: BoxConstraints(
                            maxWidth: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge
                                  ? double.infinity
                                  : 740.0,
                              740.0,
                            ),
                          ),
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.25,
                                      constraints: BoxConstraints(
                                        maxHeight: valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 171.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 261.0;
                                            } else {
                                              return 325.0;
                                            }
                                          }(),
                                          325.0,
                                        ),
                                      ),
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: AutoSizeText(
                                          'READY TO FIX YOUR AC?',
                                          style: FlutterFlowTheme.of(context)
                                              .displayMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displayMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                letterSpacing:
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? FFAppConstants
                                                            .LetterSpacingM
                                                        : FFAppConstants
                                                            .LetterSpacingTD,
                                                fontWeight: FontWeight.normal,
                                                lineHeight: 1.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .displayMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            'Stop guessing and start solving your AC issues with confidence. Follow simple steps, find the right parts, and get your system running again — fast and stress-free.',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.04,
                                      constraints: BoxConstraints(
                                        maxHeight: 50.0,
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 270.0,
                                          maxHeight: 270.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.28);
                                            } else {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.15);
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.28);
                                            } else {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.15);
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              VerticalDivider(
                                                width: 1.0,
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                              Expanded(
                                                child: wrapWithModel(
                                                  model: _model.asteriskModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: AsteriskWidget(
                                                    asteriskColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    maxWidth: 35.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    Container(
                      height: valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 25.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 50.0;
                          } else {
                            return 92.0;
                          }
                        }(),
                        92.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ].addToEnd(SizedBox(width: 200.0)),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.502),
              height: MediaQuery.sizeOf(context).height * 0.9,
              constraints: BoxConstraints(
                maxWidth: 1055.0,
                maxHeight: valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 577.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 900.0;
                    } else {
                      return 1000.0;
                    }
                  }(),
                  1000.0,
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      )),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? (MediaQuery.sizeOf(context).width * 0.86)
                        : (MediaQuery.sizeOf(context).width * 0.442),
                    height: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 935.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 96.0,
                          ),
                          decoration: BoxDecoration(),
                          child: AutoSizeText(
                            'WHAT DO YOU NEED HELP WITH?\nLET’S FIX IT TOGETHER.',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineMediumFamily,
                                  letterSpacing:
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? FFAppConstants.LetterSpacingM
                                          : FFAppConstants.LetterSpacingTD,
                                  lineHeight: 1.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineMediumIsCustom,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  maxHeight: 597.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        constraints: BoxConstraints(
                                          minHeight: 50.0,
                                          maxHeight: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 50.0
                                                : 100.0,
                                            100.0,
                                          ),
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.account_box_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 25.0
                                                              : 50.0,
                                                          50.0,
                                                        ),
                                                        5.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 25.0
                                                              : 50.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldNameTextController,
                                                  focusNode: _model
                                                      .textFieldNameFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textFieldNameTextController',
                                                    Duration(milliseconds: 100),
                                                    () => safeSetState(() {}),
                                                  ),
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    hintText: 'Name',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .textFieldNameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1.0,
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        constraints: BoxConstraints(
                                          minHeight: 50.0,
                                          maxHeight: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 50.0
                                                : 100.0,
                                            100.0,
                                          ),
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.email_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 25.0
                                                              : 50.0,
                                                          50.0,
                                                        ),
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 25.0
                                                              : 50.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldEmailAddressTextController,
                                                  focusNode: _model
                                                      .textFieldEmailAddressFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textFieldEmailAddressTextController',
                                                    Duration(milliseconds: 100),
                                                    () => safeSetState(() {}),
                                                  ),
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    hintText: 'Email Address',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .textFieldEmailAddressTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1.0,
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        constraints: BoxConstraints(
                                          minHeight: 50.0,
                                          maxHeight: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 50.0
                                                : 100.0,
                                            100.0,
                                          ),
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.edit_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 25.0
                                                              : 50.0,
                                                          50.0,
                                                        ),
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 25.0
                                                              : 50.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldSubjectTextController,
                                                  focusNode: _model
                                                      .textFieldSubjectFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textFieldSubjectTextController',
                                                    Duration(milliseconds: 100),
                                                    () => safeSetState(() {}),
                                                  ),
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    hintText: 'Subject',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .textFieldSubjectTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1.0,
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(25.0),
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldMessageTextController,
                                            focusNode: _model
                                                .textFieldMessageFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldMessageTextController',
                                              Duration(milliseconds: 100),
                                              () => safeSetState(() {}),
                                            ),
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              hintText:
                                                  'Describe your AC problem',
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallIsCustom,
                                                  ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallIsCustom,
                                                ),
                                            maxLines: null,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .textFieldMessageTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          constraints: BoxConstraints(
                            minHeight: 50.0,
                            maxHeight: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
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
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  constraints: BoxConstraints(
                                    maxWidth: 617.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    child: Builder(
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'S10_CONTAC_US_COMP_Row_i790s5s0_ON_TAP');
                                            logFirebaseEvent(
                                                'Row_validate_form');
                                            _model.form = true;
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              safeSetState(
                                                  () => _model.form = false);
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'Row_firestore_query');
                                            _model.admin =
                                                await querySettingsRecordOnce(
                                              queryBuilder: (settingsRecord) =>
                                                  settingsRecord.where(
                                                'key',
                                                isEqualTo: SettingKeys
                                                    .super_admin.name,
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            logFirebaseEvent(
                                                'Row_backend_call');

                                            var mailRecordReference =
                                                MailRecord.collection.doc();
                                            await mailRecordReference
                                                .set(createMailRecordData(
                                              to: _model.admin?.value,
                                              message: createMessageStruct(
                                                subject:
                                                    'New Contact Request — ${_model.textFieldNameTextController.text}',
                                                html:
                                                    '<!DOCTYPE html> <html> <head>   <meta charset=\"UTF-8\">   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">   <title>New Contact Request</title> </head>  <body style=\"margin:0;padding:0;background-color:#f3f5f7;font-family:Arial,Helvetica,sans-serif;\">  <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"        style=\"background-color:#f3f5f7;\">   <tr>     <td align=\"center\" style=\"padding:32px 16px;\">        <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"              style=\"max-width:600px;background-color:#ffffff;border:1px solid #e1e5e9;border-radius:8px;overflow:hidden;\">          <tr>           <td style=\"background-color:#17324d;padding:24px 32px;\">             <h1 style=\"margin:0;color:#ffffff;font-size:22px;line-height:1.3;\">               New Contact Request             </h1>              <p style=\"margin:8px 0 0;color:#dce6ef;font-size:14px;line-height:1.5;\">               A customer submitted a message through the DIY AC Repair website.             </p>           </td>         </tr>          <tr>           <td style=\"padding:30px 32px;\">              <h2 style=\"margin:0 0 16px;color:#17324d;font-size:16px;\">               Customer Details             </h2>              <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"                    style=\"background-color:#f7f9fb;border:1px solid #e7ebef;border-radius:6px;\">                <tr>                 <td style=\"padding:14px 16px;border-bottom:1px solid #e7ebef;color:#66717c;font-size:13px;width:100px;\">                   Name                 </td>                  <td style=\"padding:14px 16px;border-bottom:1px solid #e7ebef;color:#1f2933;font-size:14px;font-weight:600;\">${_model.textFieldNameTextController.text}                </td>               </tr>                <tr>                 <td style=\"padding:14px 16px;color:#66717c;font-size:13px;\">                   Email                 </td>                  <td style=\"padding:14px 16px;color:#1f2933;font-size:14px;\">${_model.textFieldEmailAddressTextController.text}              </td>               </tr>              </table>              <h2 style=\"margin:28px 0 10px;color:#17324d;font-size:16px;\">               Subject             </h2>              <p style=\"margin:0;color:#1f2933;font-size:14px;line-height:1.6;\">${_model.textFieldSubjectTextController.text}        </p>              <h2 style=\"margin:28px 0 10px;color:#17324d;font-size:16px;\">               Message             </h2>              <div style=\"padding:18px;background-color:#f7f9fb;border-left:4px solid #2474a8;border-radius:4px;color:#1f2933;font-size:14px;line-height:1.7;white-space:pre-wrap;\">${(String msg) {
                                                  return (msg ?? '')
                                                      .replaceAll('&', '&amp;')
                                                      .replaceAll('<', '&lt;')
                                                      .replaceAll('>', '&gt;')
                                                      .replaceAll('"', '&quot;')
                                                      .replaceAll("'", '&#39;');
                                                }(_model.textFieldMessageTextController.text)}   </div>              <p style=\"margin:24px 0 0;color:#66717c;font-size:13px;line-height:1.6;\">               <strong>Submitted:</strong>${dateTimeFormat("MMMM d, yyyy • h:mm a", getCurrentTimestamp)} </p>              <p style=\"margin:20px 0 0;color:#45515c;font-size:13px;line-height:1.6;\">               Reply to the customer using the email address shown above.             </p>            </td>         </tr>          <tr>           <td style=\"padding:18px 32px;background-color:#f7f9fb;border-top:1px solid #e7ebef;text-align:center;\">             <p style=\"margin:0;color:#84909b;font-size:12px;line-height:1.5;\">               This automated notification was generated by the DIY AC Repair contact form.             </p>           </td>         </tr>        </table>      </td>   </tr> </table>  </body> </html>',
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                              ctime: getCurrentTimestamp,
                                              replyTo: _model
                                                  .textFieldEmailAddressTextController
                                                  .text,
                                            ));
                                            _model.mail =
                                                MailRecord.getDocumentFromData(
                                                    createMailRecordData(
                                                      to: _model.admin?.value,
                                                      message:
                                                          createMessageStruct(
                                                        subject:
                                                            'New Contact Request — ${_model.textFieldNameTextController.text}',
                                                        html:
                                                            '<!DOCTYPE html> <html> <head>   <meta charset=\"UTF-8\">   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">   <title>New Contact Request</title> </head>  <body style=\"margin:0;padding:0;background-color:#f3f5f7;font-family:Arial,Helvetica,sans-serif;\">  <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"        style=\"background-color:#f3f5f7;\">   <tr>     <td align=\"center\" style=\"padding:32px 16px;\">        <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"              style=\"max-width:600px;background-color:#ffffff;border:1px solid #e1e5e9;border-radius:8px;overflow:hidden;\">          <tr>           <td style=\"background-color:#17324d;padding:24px 32px;\">             <h1 style=\"margin:0;color:#ffffff;font-size:22px;line-height:1.3;\">               New Contact Request             </h1>              <p style=\"margin:8px 0 0;color:#dce6ef;font-size:14px;line-height:1.5;\">               A customer submitted a message through the DIY AC Repair website.             </p>           </td>         </tr>          <tr>           <td style=\"padding:30px 32px;\">              <h2 style=\"margin:0 0 16px;color:#17324d;font-size:16px;\">               Customer Details             </h2>              <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"                    style=\"background-color:#f7f9fb;border:1px solid #e7ebef;border-radius:6px;\">                <tr>                 <td style=\"padding:14px 16px;border-bottom:1px solid #e7ebef;color:#66717c;font-size:13px;width:100px;\">                   Name                 </td>                  <td style=\"padding:14px 16px;border-bottom:1px solid #e7ebef;color:#1f2933;font-size:14px;font-weight:600;\">${_model.textFieldNameTextController.text}                </td>               </tr>                <tr>                 <td style=\"padding:14px 16px;color:#66717c;font-size:13px;\">                   Email                 </td>                  <td style=\"padding:14px 16px;color:#1f2933;font-size:14px;\">${_model.textFieldEmailAddressTextController.text}              </td>               </tr>              </table>              <h2 style=\"margin:28px 0 10px;color:#17324d;font-size:16px;\">               Subject             </h2>              <p style=\"margin:0;color:#1f2933;font-size:14px;line-height:1.6;\">${_model.textFieldSubjectTextController.text}        </p>              <h2 style=\"margin:28px 0 10px;color:#17324d;font-size:16px;\">               Message             </h2>              <div style=\"padding:18px;background-color:#f7f9fb;border-left:4px solid #2474a8;border-radius:4px;color:#1f2933;font-size:14px;line-height:1.7;white-space:pre-wrap;\">${(String msg) {
                                                          return (msg ?? '')
                                                              .replaceAll(
                                                                  '&', '&amp;')
                                                              .replaceAll(
                                                                  '<', '&lt;')
                                                              .replaceAll(
                                                                  '>', '&gt;')
                                                              .replaceAll(
                                                                  '"', '&quot;')
                                                              .replaceAll(
                                                                  "'", '&#39;');
                                                        }(_model.textFieldMessageTextController.text)}   </div>              <p style=\"margin:24px 0 0;color:#66717c;font-size:13px;line-height:1.6;\">               <strong>Submitted:</strong>${dateTimeFormat("MMMM d, yyyy • h:mm a", getCurrentTimestamp)} </p>              <p style=\"margin:20px 0 0;color:#45515c;font-size:13px;line-height:1.6;\">               Reply to the customer using the email address shown above.             </p>            </td>         </tr>          <tr>           <td style=\"padding:18px 32px;background-color:#f7f9fb;border-top:1px solid #e7ebef;text-align:center;\">             <p style=\"margin:0;color:#84909b;font-size:12px;line-height:1.5;\">               This automated notification was generated by the DIY AC Repair contact form.             </p>           </td>         </tr>        </table>      </td>   </tr> </table>  </body> </html>',
                                                        clearUnsetFields: false,
                                                        create: true,
                                                      ),
                                                      ctime:
                                                          getCurrentTimestamp,
                                                      replyTo: _model
                                                          .textFieldEmailAddressTextController
                                                          .text,
                                                    ),
                                                    mailRecordReference);
                                            await Future.wait([
                                              Future(() async {
                                                logFirebaseEvent(
                                                    'Row_reset_form_fields');
                                                safeSetState(() {
                                                  _model
                                                      .textFieldMessageTextController
                                                      ?.clear();
                                                  _model
                                                      .textFieldSubjectTextController
                                                      ?.clear();
                                                  _model
                                                      .textFieldEmailAddressTextController
                                                      ?.clear();
                                                  _model
                                                      .textFieldNameTextController
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
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child:
                                                          ContactUsSuccessDialogWidget(),
                                                    );
                                                  },
                                                );
                                              }),
                                            ]);

                                            safeSetState(() {});
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              AutoSizeText(
                                                'SUBMIT MESSAGE',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumIsCustom,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        50.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 24.0
                                                        : 48.0,
                                                    48.0,
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'iconOnActionTriggerAnimation']!,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered = true);
                                      logFirebaseEvent(
                                          'S10_CONTAC_US_MouseRegion_047m8n4x_ON_TO');
                                      // Start Arrow Animation
                                      logFirebaseEvent(
                                          'MouseRegion_StartArrowAnimation');
                                      if (animationsMap[
                                              'iconOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'iconOnActionTriggerAnimation']!
                                            .controller
                                          ..reset()
                                          ..repeat(reverse: true);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered = false);
                                      logFirebaseEvent(
                                          'S10_CONTAC_US_MouseRegion_047m8n4x_ON_TO');
                                      // Reset Arrow Animation
                                      logFirebaseEvent(
                                          'MouseRegion_ResetArrowAnimation');
                                      if (animationsMap[
                                              'iconOnActionTriggerAnimation'] !=
                                          null) {
                                        animationsMap[
                                                'iconOnActionTriggerAnimation']!
                                            .controller
                                            .reset();
                                      }
                                    }),
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Container(
                                  width: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).height * 0.1,
                                    100.0,
                                  ),
                                  height: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).height * 0.1,
                                    100.0,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.sentiment_satisfied_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 60.0,
                                    ),
                                  ),
                                ),
                            ],
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
