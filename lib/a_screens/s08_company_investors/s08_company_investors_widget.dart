import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 's08_company_investors_model.dart';
export 's08_company_investors_model.dart';

class S08CompanyInvestorsWidget extends StatefulWidget {
  const S08CompanyInvestorsWidget({super.key});

  @override
  State<S08CompanyInvestorsWidget> createState() =>
      _S08CompanyInvestorsWidgetState();
}

class _S08CompanyInvestorsWidgetState extends State<S08CompanyInvestorsWidget> {
  late S08CompanyInvestorsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S08CompanyInvestorsModel());

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: FlutterFlowTheme.of(context).tertiary,
                width: 1.0,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0.0,
                    0.0,
                    0.0,
                    valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 36.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 14.0;
                        } else {
                          return 0.0;
                        }
                      }(),
                      0.0,
                    )),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.14,
                  constraints: BoxConstraints(
                    minHeight: 92.0,
                    maxWidth: 1270.0,
                    maxHeight: 150.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: AutoSizeText(
                        'POWERING CONFIDENT AC REPAIRS',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineSmallFamily,
                              color: FlutterFlowTheme.of(context).secondary,
                              fontSize: 40.0,
                              letterSpacing: MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? FFAppConstants.LetterSpacingM
                                  : FFAppConstants.LetterSpacingTD,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineSmallIsCustom,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
              50.0,
            ),
            decoration: BoxDecoration(),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.033,
            constraints: BoxConstraints(
              minHeight: 25.0,
              maxHeight: 30.0,
            ),
            decoration: BoxDecoration(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: custom_widgets.Marquee(
                width: double.infinity,
                height: double.infinity,
                speed: 35.0,
                autoStart: true,
                direction: 'Left',
                itemSpacing: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 50.0
                      : 100.0,
                  100.0,
                ),
                startSpacing: 25.0,
                endSpacing: 25.0,
                imagesList: FFAppState().imagesList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
