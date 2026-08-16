import '/c_components/dialog_components/empty_cart_component/empty_cart_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/k_widgets/nav_menu/nav_menu_widget.dart';
import '/index.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    context.watch<FFAppState>();

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 0.0, 4.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed(AHomePageWidget.routeName);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logopng.PNG',
                          width: 35.0,
                          height: 35.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'DIY AC REPAIR',
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .titleMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w900,
                              lineHeight: 1.4,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleMediumIsCustom,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
          Expanded(
            child: Container(
              width: 100.0,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
              ),
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  desktop: false,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 4.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((FFAppState().Cart.cartItems.isNotEmpty) ==
                                true) {
                              context.goNamed(EReviewYourOrderWidget.routeName);
                            } else {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: EmptyCartComponentWidget(),
                                  );
                                },
                              );
                            }
                          },
                          child: Icon(
                            Icons.shopping_cart_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
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
                    onPressed: () async {
                      context.goNamed(AHomePageWidget.routeName);
                    },
                    text: 'HOME',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    onPressed: () async {
                      context.pushNamed(IAboutWidget.routeName);
                    },
                    text: 'ABOUT',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    onPressed: () async {
                      context.pushNamed(DSelectProductRepairWidget.routeName);
                    },
                    text: 'ORDER PARTS',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    onPressed: () async {
                      context.pushNamed(GTrackAndFindMyOrderWidget.routeName);
                    },
                    text: 'TRACK ORDERS',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    onPressed: () async {
                      context.pushNamed(KContactWidget.routeName);
                    },
                    text: 'CONTACT',
                    options: FFButtonOptions(
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    .divide(SizedBox(width: 30.0))
                    .addToStart(SizedBox(width: 20.0))
                    .addToEnd(SizedBox(width: 20.0)),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            Builder(
              builder: (context) => Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: FlutterFlowIconButton(
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
                  onPressed: () async {
                    await showAlignedDialog(
                      barrierColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      context: context,
                      isGlobal: false,
                      avoidOverflow: true,
                      targetAnchor: AlignmentDirectional(1.0, -1.0)
                          .resolve(Directionality.of(context)),
                      followerAnchor: AlignmentDirectional(1.0, -1.0)
                          .resolve(Directionality.of(context)),
                      builder: (dialogContext) {
                        return Material(
                          color: Colors.transparent,
                          child: NavMenuWidget(),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Builder(
              builder: (context) => FlutterFlowIconButton(
                buttonSize: 80.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 28.0,
                ),
                onPressed: () async {
                  if ((FFAppState().Cart.cartItems.isNotEmpty) == true) {
                    context.goNamed(EReviewYourOrderWidget.routeName);
                  } else {
                    await showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: EmptyCartComponentWidget(),
                        );
                      },
                    );
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
