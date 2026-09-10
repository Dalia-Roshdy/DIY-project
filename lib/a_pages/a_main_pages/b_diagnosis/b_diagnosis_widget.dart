import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s05_homestartdiagnosis/s05_homestartdiagnosis_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'b_diagnosis_model.dart';
export 'b_diagnosis_model.dart';

class BDiagnosisWidget extends StatefulWidget {
  const BDiagnosisWidget({super.key});

  static String routeName = 'B-Diagnosis';
  static String routePath = '/diagnosis';

  @override
  State<BDiagnosisWidget> createState() => _BDiagnosisWidgetState();
}

class _BDiagnosisWidgetState extends State<BDiagnosisWidget> {
  late BDiagnosisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BDiagnosisModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      excludeFromSemantics: true,
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.96,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.s01NavigatioBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: S01NavigatioBarWidget(),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                          Container(
                            width: double.infinity,
                            height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 10.0
                                  : 0.0,
                              0.0,
                            ),
                            decoration: BoxDecoration(),
                          ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 30.0;
                                    } else {
                                      return 20.0;
                                    }
                                  }(),
                                  20.0,
                                ),
                                10.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 10.0;
                                    } else {
                                      return 10.0;
                                    }
                                  }(),
                                  10.0,
                                )),
                            child: wrapWithModel(
                              model: _model.s05HomestartdiagnosisModel,
                              updateCallback: () => safeSetState(() {}),
                              child: S05HomestartdiagnosisWidget(),
                            ),
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          wrapWithModel(
                            model: _model.s12FooterModel,
                            updateCallback: () => safeSetState(() {}),
                            child: S12FooterWidget(),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]
              .addToStart(SizedBox(
                  height: valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 32.0
                    : 46.0,
                46.0,
              )))
              .addToEnd(SizedBox(
                  height: valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 16.0
                    : 32.0,
                32.0,
              ))),
        ),
      ),
    );
  }
}
