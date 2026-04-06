import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 's01_navigatio_bar_model.dart';
export 's01_navigatio_bar_model.dart';

class S01NavigatioBarWidget extends StatefulWidget {
  const S01NavigatioBarWidget({super.key});

  @override
  State<S01NavigatioBarWidget> createState() => _S01NavigatioBarWidgetState();
}

class _S01NavigatioBarWidgetState extends State<S01NavigatioBarWidget> {
  late S01NavigatioBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S01NavigatioBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: valueOrDefault<double>(
        MediaQuery.sizeOf(context).width < kBreakpointSmall ? 40.0 : 80.0,
        80.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Image.asset(
                  'assets/images/Logo_2.png',
                  height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 10.0
                        : 30.0,
                    30.0,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
            child: VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
          Expanded(
            child: Container(
              width: 100.0,
              height: double.infinity,
              decoration: BoxDecoration(),
            ),
          ),
          SizedBox(
            height: 100.0,
            child: VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button-HomeBtn pressed ...');
                    },
                    text: 'HOME',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button-AboutBtn pressed ...');
                    },
                    text: 'ABOUT',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button-ServicesBtn pressed ...');
                    },
                    text: 'SERVICES',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button-ContactBtn pressed ...');
                    },
                    text: 'CONTACT',
                    options: FFButtonOptions(
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                ]
                    .addToStart(SizedBox(width: 25.0))
                    .addToEnd(SizedBox(width: 25.0)),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            FlutterFlowIconButton(
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 40.0
                    : 80.0,
                80.0,
              ),
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              hoverColor: FlutterFlowTheme.of(context).primaryBackground,
              hoverIconColor: FlutterFlowTheme.of(context).tertiary,
              icon: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).primary,
                size: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 20.0
                      : 40.0,
                  40.0,
                ),
              ),
              onPressed: () {
                print('MenuBtn-Mobile pressed ...');
              },
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(BDiagnosisWidget.routeName);
              },
              text: 'GET STARTED',
              options: FFButtonOptions(
                height: double.infinity,
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleSmallIsCustom,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(0.0),
              ),
              showLoadingIndicator: false,
            ),
        ],
      ),
    );
  }
}
