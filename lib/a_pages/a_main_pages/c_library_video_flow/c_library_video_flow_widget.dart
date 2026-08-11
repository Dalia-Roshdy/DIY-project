import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/c_library_video/c_video_diagnosis_desktop/c_video_diagnosis_desktop_widget.dart';
import '/c_library_video/c_video_diagnosis_mobile/c_video_diagnosis_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'c_library_video_flow_model.dart';
export 'c_library_video_flow_model.dart';

class CLibraryVideoFlowWidget extends StatefulWidget {
  const CLibraryVideoFlowWidget({
    super.key,
    this.currentVideoId,
  });

  final DocumentReference? currentVideoId;

  static String routeName = 'C-Library_Video_Flow';
  static String routePath = '/library';

  @override
  State<CLibraryVideoFlowWidget> createState() =>
      _CLibraryVideoFlowWidgetState();
}

class _CLibraryVideoFlowWidgetState extends State<CLibraryVideoFlowWidget> {
  late CLibraryVideoFlowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CLibraryVideoFlowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.currentVideoId != null) {
        _model.passedVideo =
            await DiagnosisVideoRecord.getDocumentOnce(widget.currentVideoId!);
        _model.currentValue = _model.passedVideo;
        safeSetState(() {});
      } else {
        _model.startPoint = await queryDiagnosisVideoRecordOnce(
          queryBuilder: (diagnosisVideoRecord) => diagnosisVideoRecord.where(
            'isStart',
            isEqualTo: true,
          ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        _model.currentValue = _model.startPoint;
        safeSetState(() {});
      }

      _model.initialOptions = await queryDiagnosisVideoOptionRecordOnce(
        queryBuilder: (diagnosisVideoOptionRecord) => diagnosisVideoOptionRecord
            .where(
              'diagnosisVideoRef',
              isEqualTo: _model.currentValue?.reference,
            )
            .orderBy('displayOrder'),
      );
      _model.currentOptions =
          _model.initialOptions!.toList().cast<DiagnosisVideoOptionRecord>();
      safeSetState(() {});
    });

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
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.96,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                          Container(
                            width: double.infinity,
                            height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 60.0,
                              100.0,
                            ),
                            decoration: BoxDecoration(),
                          ),
                          Divider(
                            height: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (_model.isLoading)
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Text(
                                      'Loading.....',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                if ((_model.currentValue != null) &&
                                    responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: wrapWithModel(
                                      model: _model.cVideoDiagnosisMobileModel,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CVideoDiagnosisMobileWidget(
                                        videoRecord: _model.currentValue!,
                                        videoOptions: _model.currentOptions,
                                        onNextVideo: (nextVideoRef) async {
                                          _model.isLoading = true;
                                          safeSetState(() {});
                                          _model.loadedNextVideo =
                                              await DiagnosisVideoRecord
                                                  .getDocumentOnce(
                                                      nextVideoRef);
                                          _model.nextOptions =
                                              await queryDiagnosisVideoOptionRecordOnce(
                                            queryBuilder:
                                                (diagnosisVideoOptionRecord) =>
                                                    diagnosisVideoOptionRecord
                                                        .where(
                                              'diagnosisVideoRef',
                                              isEqualTo: nextVideoRef,
                                            ),
                                          );
                                          if (_model.loadedNextVideo
                                                  ?.reference !=
                                              null) {
                                            _model.addToList(
                                                _model.currentValue!);
                                            _model.currentValue =
                                                _model.loadedNextVideo;
                                            _model.currentOptions = _model
                                                .nextOptions!
                                                .toList()
                                                .cast<
                                                    DiagnosisVideoOptionRecord>();
                                            _model.isLoading = false;
                                            safeSetState(() {});
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Unable to load the next video. Please try again.',
                                                  style: TextStyle(
                                                    color:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                              ),
                                            );
                                          }
                                        
                                          safeSetState(() {});
                                        },
                                        onBack: () async {
                                          if (_model.list.isNotEmpty) {
                                            _model.isLoading = true;
                                            safeSetState(() {});
                                            _model.currentValue =
                                                _model.list.lastOrNull;
                                            _model.previousOptions =
                                                await queryDiagnosisVideoOptionRecordOnce(
                                              queryBuilder:
                                                  (diagnosisVideoOptionRecord) =>
                                                      diagnosisVideoOptionRecord
                                                          .where(
                                                            'diagnosisVideoRef',
                                                            isEqualTo: _model
                                                                .list
                                                                .lastOrNull
                                                                ?.reference,
                                                          )
                                                          .orderBy(
                                                              'displayOrder'),
                                            );
                                            _model.removeFromList(
                                                _model.list.lastOrNull!);
                                            _model.currentOptions = _model
                                                .previousOptions!
                                                .toList()
                                                .cast<
                                                    DiagnosisVideoOptionRecord>();
                                            _model.isLoading = false;
                                            safeSetState(() {});
                                          } else {
                                            context.safePop();
                                          }

                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                if (((_model.currentValue?.reference != null) &&
                                        !_model.isLoading) &&
                                    responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 48.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.cVideoDiagnosisDesktopModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CVideoDiagnosisDesktopWidget(
                                          videoRecord: _model.currentValue!,
                                          videoOptions: _model.currentOptions,
                                          onNextVideo: (nextVideoRef) async {
                                            _model.isLoading = true;
                                            safeSetState(() {});
                                            _model.loadedNextVideoweb =
                                                await DiagnosisVideoRecord
                                                    .getDocumentOnce(
                                                        nextVideoRef);
                                            _model.nextOptiondesktop =
                                                await queryDiagnosisVideoOptionRecordOnce(
                                              queryBuilder:
                                                  (diagnosisVideoOptionRecord) =>
                                                      diagnosisVideoOptionRecord
                                                          .where(
                                                'diagnosisVideoRef',
                                                isEqualTo: nextVideoRef,
                                              ),
                                            );
                                            if (_model.loadedNextVideoweb
                                                    ?.reference !=
                                                null) {
                                              _model.addToList(
                                                  _model.currentValue!);
                                              _model.currentValue =
                                                  _model.loadedNextVideoweb;
                                              _model.currentOptions = _model
                                                  .nextOptiondesktop!
                                                  .toList()
                                                  .cast<
                                                      DiagnosisVideoOptionRecord>();
                                              _model.isLoading = false;
                                              safeSetState(() {});
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Unable to load the next video. Please try again.',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                            }
                                          
                                            safeSetState(() {});
                                          },
                                          onBack: () async {
                                            if (_model.list.isNotEmpty) {
                                              _model.isLoading = true;
                                              safeSetState(() {});
                                              _model.currentValue =
                                                  _model.list.lastOrNull;
                                              _model.previousOptionsdesktop =
                                                  await queryDiagnosisVideoOptionRecordOnce(
                                                queryBuilder:
                                                    (diagnosisVideoOptionRecord) =>
                                                        diagnosisVideoOptionRecord
                                                            .where(
                                                              'diagnosisVideoRef',
                                                              isEqualTo: _model
                                                                  .list
                                                                  .lastOrNull
                                                                  ?.reference,
                                                            )
                                                            .orderBy(
                                                                'displayOrder'),
                                              );
                                              _model.removeFromList(
                                                  _model.list.lastOrNull!);
                                              _model.currentOptions = _model
                                                  .previousOptionsdesktop!
                                                  .toList()
                                                  .cast<
                                                      DiagnosisVideoOptionRecord>();
                                              _model.isLoading = false;
                                              safeSetState(() {});
                                            } else {
                                              context.safePop();
                                            }

                                            safeSetState(() {});
                                          },
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
                                  wrapWithModel(
                                    model: _model.s12FooterModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: S12FooterWidget(),
                                  ),
                              ],
                            ),
                          ),
                        ],
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
