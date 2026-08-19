import '/b_diagnosis/enter_manually_serial_number/enter_manually_serial_number_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 's05_homestartdiagnosis_model.dart';
export 's05_homestartdiagnosis_model.dart';

class S05HomestartdiagnosisWidget extends StatefulWidget {
  const S05HomestartdiagnosisWidget({super.key});

  @override
  State<S05HomestartdiagnosisWidget> createState() =>
      _S05HomestartdiagnosisWidgetState();
}

class _S05HomestartdiagnosisWidgetState
    extends State<S05HomestartdiagnosisWidget> {
  late S05HomestartdiagnosisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S05HomestartdiagnosisModel());

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
      alignment: AlignmentDirectional(-1.0, -1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width * 0.4,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 12.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 25.0;
                            } else {
                              return 50.0;
                            }
                          }(),
                          50.0,
                        ),
                        decoration: BoxDecoration(),
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge
                              ? (MediaQuery.sizeOf(context).width * 0.86)
                              : (MediaQuery.sizeOf(context).width * 0.40),
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
                              SizedBox(
                                height: 100.0,
                                child: VerticalDivider(
                                  width: 1.0,
                                  thickness: 7.0,
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.2,
                                      constraints: BoxConstraints(
                                        maxHeight: valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 150.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 150.0;
                                            } else {
                                              return 200.0;
                                            }
                                          }(),
                                          200.0,
                                        ),
                                      ),
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 1.0),
                                        child: AutoSizeText(
                                          'START FIXING\nCHEAPER\nFASTER.',
                                          textAlign: TextAlign.start,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 25.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: AutoSizeText(
                                            'JUST THE RAW TECHNICAL DATA YOU NEED TO GET YOUR COLD AIR BACK. \nENTER YOUR SPECS IN THE CORRESPONDING FIELDS .',
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
                                                  fontSize: 28.0,
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
                                          maxWidth: 170.0,
                                          maxHeight: 170.0,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        6.0, 0.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/logopng.PNG',
                                                    width: 150.0,
                                                    height: 150.0,
                                                    fit: BoxFit.cover,
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
                              return 12.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 25.0;
                            } else {
                              return 50.0;
                            }
                          }(),
                          50.0,
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
              ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 1.0,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.enterManuallySerialNumberModel,
                        updateCallback: () => safeSetState(() {}),
                        child: EnterManuallySerialNumberWidget(),
                      ),
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
