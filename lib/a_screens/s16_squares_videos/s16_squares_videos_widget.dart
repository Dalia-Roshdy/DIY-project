import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 's16_squares_videos_model.dart';
export 's16_squares_videos_model.dart';

class S16SquaresVideosWidget extends StatefulWidget {
  const S16SquaresVideosWidget({super.key});

  @override
  State<S16SquaresVideosWidget> createState() => _S16SquaresVideosWidgetState();
}

class _S16SquaresVideosWidgetState extends State<S16SquaresVideosWidget> {
  late S16SquaresVideosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S16SquaresVideosModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).width < kBreakpointSmall
                  ? 40.0
                  : 20.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondary,
                  width: 1.0,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 1;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 2;
                      } else {
                        return 4;
                      }
                    }(),
                  ),
                  crossAxisSpacing: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 18.0;
                    } else {
                      return 30.0;
                    }
                  }(),
                  mainAxisSpacing: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 18.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return [
                      () => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.37,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width <
                                            kBreakpointLarge
                                        ? double.infinity
                                        : (MediaQuery.sizeOf(context).width *
                                            0.502),
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 1055.0,
                                        1055.0,
                                      ),
                                      maxHeight: 800.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(
                                              valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 14.0,
                                            50.0,
                                          )),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 3.0,
                                                              ),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/library_02.png',
                                                                width: 353.99,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 124.9,
                                                          height: 30.04,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              'SCHEMATIC',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.33,
                                                      constraints:
                                                          BoxConstraints(
                                                        minWidth:
                                                            valueOrDefault<
                                                                double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointLarge
                                                              ? 500.0
                                                              : 430.0,
                                                          430.0,
                                                        ),
                                                        maxHeight: 90.0,
                                                      ),
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: AutoSizeText(
                                                        'CAPACITOR FAILURE:\nIDENTIFYING THE  \'BULGE\'',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                              fontSize: 18.0,
                                                              lineHeight: 0.9,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 25.0, 0.0, 0.0),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.19,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 900.0,
                                                    maxHeight: 205.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      AutoSizeText(
                                                        'Can\'t find your labels? Use our visuallocator guide to post identification plates on ant unit.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLargeIsCustom,
                                                                ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor:
                                                              SystemMouseCursors
                                                                      .click ??
                                                                  MouseCursor
                                                                      .defer,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            30.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'LAUNCH DIAGNOSIS',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        290.0,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          4.0,
                                                                      indent:
                                                                          10.0,
                                                                      endIndent:
                                                                          70.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered1 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered1 =
                                                                    false);
                                                          }),
                                                        ),
                                                      ),
                                                    ],
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
                              ],
                            ),
                          ),
                      () => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.37,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(
                                          8.0,
                                          8.0,
                                        ),
                                      )
                                    ],
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width <
                                            kBreakpointLarge
                                        ? double.infinity
                                        : (MediaQuery.sizeOf(context).width *
                                            0.502),
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 1055.0,
                                        1055.0,
                                      ),
                                      maxHeight: 800.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(
                                              valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 14.0,
                                            50.0,
                                          )),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Icon(
                                                    Icons.video_chat,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 50.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.33,
                                                      constraints:
                                                          BoxConstraints(
                                                        minWidth:
                                                            valueOrDefault<
                                                                double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointLarge
                                                              ? 500.0
                                                              : 430.0,
                                                          430.0,
                                                        ),
                                                        maxHeight: 90.0,
                                                      ),
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: AutoSizeText(
                                                        'DIAGNOSIS VIDEOS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  letterSpacing: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? FFAppConstants
                                                                          .LetterSpacingM
                                                                      : FFAppConstants
                                                                          .LetterSpacingTD,
                                                                  lineHeight:
                                                                      0.9,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmallIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 25.0, 0.0, 0.0),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.19,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 900.0,
                                                    maxHeight: 205.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      AutoSizeText(
                                                        'Step-by-step technical teardowns and visual error code guides for every brand.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLargeIsCustom,
                                                                ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor:
                                                              SystemMouseCursors
                                                                      .click ??
                                                                  MouseCursor
                                                                      .defer,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            30.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'WATCH NOW',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        210.0,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          4.0,
                                                                      indent:
                                                                          10.0,
                                                                      endIndent:
                                                                          70.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered2 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered2 =
                                                                    false);
                                                          }),
                                                        ),
                                                      ),
                                                    ],
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
                              ],
                            ),
                          ),
                      () => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.37,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(
                                          8.0,
                                          8.0,
                                        ),
                                      )
                                    ],
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width <
                                            kBreakpointLarge
                                        ? double.infinity
                                        : (MediaQuery.sizeOf(context).width *
                                            0.502),
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 1055.0,
                                        1055.0,
                                      ),
                                      maxHeight: 800.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(
                                              valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 14.0,
                                            50.0,
                                          )),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Icon(
                                                    Icons.shopping_cart,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 50.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.33,
                                                      constraints:
                                                          BoxConstraints(
                                                        minWidth:
                                                            valueOrDefault<
                                                                double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointLarge
                                                              ? 500.0
                                                              : 430.0,
                                                          430.0,
                                                        ),
                                                        maxHeight: 90.0,
                                                      ),
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: AutoSizeText(
                                                        'ORDER PARTS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  letterSpacing: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? FFAppConstants
                                                                          .LetterSpacingM
                                                                      : FFAppConstants
                                                                          .LetterSpacingTD,
                                                                  lineHeight:
                                                                      0.9,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmallIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 25.0, 0.0, 0.0),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.19,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 900.0,
                                                    maxHeight: 205.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      AutoSizeText(
                                                        'Direct access to OEM Capacitors, fan motors, and control boards with overnight shipping.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLargeIsCustom,
                                                                ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor:
                                                              SystemMouseCursors
                                                                      .click ??
                                                                  MouseCursor
                                                                      .defer,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            30.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'BROWSE INVENTORY',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        290.0,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          4.0,
                                                                      indent:
                                                                          10.0,
                                                                      endIndent:
                                                                          70.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered3 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered3 =
                                                                    false);
                                                          }),
                                                        ),
                                                      ),
                                                    ],
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
                              ],
                            ),
                          ),
                      () => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.37,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(
                                          8.0,
                                          8.0,
                                        ),
                                      )
                                    ],
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width <
                                            kBreakpointLarge
                                        ? double.infinity
                                        : (MediaQuery.sizeOf(context).width *
                                            0.502),
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 1055.0,
                                        1055.0,
                                      ),
                                      maxHeight: 800.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.429,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(
                                              valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 14.0,
                                            50.0,
                                          )),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Icon(
                                                    Icons.chat_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 50.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.33,
                                                      constraints:
                                                          BoxConstraints(
                                                        minWidth:
                                                            valueOrDefault<
                                                                double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointLarge
                                                              ? 500.0
                                                              : 430.0,
                                                          430.0,
                                                        ),
                                                        maxHeight: 90.0,
                                                      ),
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: AutoSizeText(
                                                        'FIND HELP',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  letterSpacing: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? FFAppConstants
                                                                          .LetterSpacingM
                                                                      : FFAppConstants
                                                                          .LetterSpacingTD,
                                                                  lineHeight:
                                                                      0.9,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmallIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 25.0, 0.0, 0.0),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.19,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 900.0,
                                                    maxHeight: 205.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      AutoSizeText(
                                                        'Connect with certified technicians for a remote consult or find a local expert nearby.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLargeIsCustom,
                                                                ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor:
                                                              SystemMouseCursors
                                                                      .click ??
                                                                  MouseCursor
                                                                      .defer,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            30.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'GET SUPPORT',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        230.0,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          4.0,
                                                                      indent:
                                                                          10.0,
                                                                      endIndent:
                                                                          70.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered4 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionHovered4 =
                                                                    false);
                                                          }),
                                                        ),
                                                      ),
                                                    ],
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
                              ],
                            ),
                          ),
                    ][index]();
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).width < kBreakpointSmall
                  ? 40.0
                  : 20.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondary,
                  width: 1.0,
                ),
              ),
            ),
          ].divide(SizedBox(
              height: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ))),
        ),
      ),
    );
  }
}
