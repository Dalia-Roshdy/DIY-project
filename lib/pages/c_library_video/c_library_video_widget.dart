import '/a_screens/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/a_screens/s04_image/s04_image_widget.dart';
import '/a_screens/s05_homestartdiagnosis/s05_homestartdiagnosis_widget.dart';
import '/a_screens/s12_footer/s12_footer_widget.dart';
import '/a_screens/s13_squares/s13_squares_widget.dart';
import '/a_screens/s14_video_library_left_index/s14_video_library_left_index_widget.dart';
import '/a_screens/s15_video_player_main/s15_video_player_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'c_library_video_model.dart';
export 'c_library_video_model.dart';

class CLibraryVideoWidget extends StatefulWidget {
  const CLibraryVideoWidget({super.key});

  static String routeName = 'C-Library_video';
  static String routePath = '/cLibraryVideo';

  @override
  State<CLibraryVideoWidget> createState() => _CLibraryVideoWidgetState();
}

class _CLibraryVideoWidgetState extends State<CLibraryVideoWidget> {
  late CLibraryVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CLibraryVideoModel());

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
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 2000.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: CachedNetworkImageProvider(
                                valueOrDefault<String>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/snombgtjslh3/Lines_Phone.png'
                                      : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.s01NavigatioBarModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: S01NavigatioBarWidget(),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 100.0,
                                            100.0,
                                          ),
                                          decoration: BoxDecoration(),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 404.2,
                                              height: 1188.89,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: wrapWithModel(
                                                model: _model
                                                    .s14VideoLibraryLeftIndexModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    S14VideoLibraryLeftIndexWidget(),
                                              ),
                                            ),
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .s15VideoPlayerMainModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    S15VideoPlayerMainWidget(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.s05HomestartdiagnosisModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: S05HomestartdiagnosisWidget(),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              wrapWithModel(
                                model: _model.s13SquaresModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S13SquaresWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s04ImageModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S04ImageWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s12FooterModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S12FooterWidget(),
                              ),
                            ].divide(SizedBox(
                                height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ))),
                          ),
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
                        : 64.0,
                    64.0,
                  )))
                  .addToEnd(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  ))),
            ),
          ),
        ),
      ),
    );
  }
}
