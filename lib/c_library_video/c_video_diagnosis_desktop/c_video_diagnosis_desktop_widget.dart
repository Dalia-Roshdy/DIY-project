import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'c_video_diagnosis_desktop_model.dart';
export 'c_video_diagnosis_desktop_model.dart';

class CVideoDiagnosisDesktopWidget extends StatefulWidget {
  const CVideoDiagnosisDesktopWidget({
    super.key,
    required this.videoRecord,
    required this.onNextVideo,
    required this.onBack,
    this.videoOptions,
  });

  final DiagnosisVideoRecord? videoRecord;
  final Future Function(DocumentReference nextVideoRef)? onNextVideo;
  final Future Function()? onBack;
  final List<DiagnosisVideoOptionRecord>? videoOptions;

  @override
  State<CVideoDiagnosisDesktopWidget> createState() =>
      _CVideoDiagnosisDesktopWidgetState();
}

class _CVideoDiagnosisDesktopWidgetState
    extends State<CVideoDiagnosisDesktopWidget> {
  late CVideoDiagnosisDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CVideoDiagnosisDesktopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.videoRecord?.title,
              'DIY WALKTHROUGH ',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  letterSpacing:
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
                          ? FFAppConstants.LetterSpacingM
                          : FFAppConstants.LetterSpacingTD,
                  lineHeight: 0.9,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
          child: RichText(
            textScaler: MediaQuery.of(context).textScaler,
            text: TextSpan(
              children: [
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.videoRecord?.description,
                    'desc',
                  ),
                  style: TextStyle(),
                )
              ],
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelSmallIsCustom,
                  ),
            ),
          ),
        ),
        if (widget.videoOptions!.length > 0)
          Flexible(
            child: Align(
              alignment: AlignmentDirectional(-1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ClipRRect(
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.sizeOf(context).width * 0.28,
                              maxHeight: double.infinity,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).grey10,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    widget.videoRecord
                                                        ?.videoQuestion,
                                                    'Q.Text',
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                ),
                                              ),
                                              if (false)
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(1.0, 0.0,
                                                                0.0, 14.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.currentVideo
                                                            ?.description,
                                                        'desc',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 14.0),
                                                child: FlutterFlowRadioButton(
                                                  options: widget.videoOptions!
                                                      .map((e) => e.buttonText)
                                                      .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() {});
                                                    _model.slectedOption = widget
                                                        .videoOptions
                                                        ?.where((e) =>
                                                            e.buttonText ==
                                                            _model
                                                                .radioButtonValue)
                                                        .toList()
                                                        .firstOrNull;
                                                  },
                                                  controller: _model
                                                          .radioButtonValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                  buttonPosition:
                                                      RadioButtonPosition.left,
                                                  direction: Axis.vertical,
                                                  radioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  inactiveRadioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  toggleable: false,
                                                  horizontalAlignment:
                                                      WrapAlignment.start,
                                                  verticalAlignment:
                                                      WrapCrossAlignment.start,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              _model.slectedOption = null;
                                              _model.radioButtonValueController
                                                  ?.reset();

                                              await widget.onBack?.call();
                                            },
                                            text: 'Back',
                                            icon: Icon(
                                              Icons.arrow_back_sharp,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumIsCustom,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              hoverBorderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: (_model
                                                            .radioButtonValue ==
                                                        null ||
                                                    _model.radioButtonValue ==
                                                        '')
                                                ? null
                                                : () async {
                                                    if (_model.slectedOption
                                                            ?.actionType ==
                                                        ActionType.showVideo) {
                                                      await widget.onNextVideo
                                                          ?.call(
                                                        _model.slectedOption!
                                                            .nextStepKey!,
                                                      );
                                                      _model.slectedOption =
                                                          null;
                                                      _model
                                                          .radioButtonValueController
                                                          ?.reset();
                                                    } else if (_model
                                                            .slectedOption
                                                            ?.actionType ==
                                                        ActionType.navigate) {
                                                      if (_model.slectedOption
                                                              ?.targetPage ==
                                                          TargetPage
                                                              .contactUs) {
                                                        context.pushNamed(
                                                            KContactWidget
                                                                .routeName);
                                                      } else if (_model
                                                              .slectedOption
                                                              ?.targetPage ==
                                                          TargetPage
                                                              .needAssistant) {
                                                        context.pushNamed(
                                                            LRequestTechnicalWidget
                                                                .routeName);
                                                      } else if (_model
                                                              .slectedOption
                                                              ?.targetPage ==
                                                          TargetPage
                                                              .diagnosis) {
                                                        context.pushNamed(
                                                            BDiagnosisWidget
                                                                .routeName);
                                                      }
                                                    } else if (_model
                                                            .slectedOption
                                                            ?.actionType ==
                                                        ActionType
                                                            .navigateWithData) {
                                                      context.pushNamed(
                                                        DSelectProductRepairWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'part':
                                                              serializeParam(
                                                            _model.slectedOption
                                                                ?.targetPartType,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  },
                                            text: 'Proceed',
                                            icon: Icon(
                                              Icons.arrow_forward_sharp,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumIsCustom,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              disabledColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              hoverColor: Color(0xFF3890A5),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          ),
                                        ],
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
                    if (valueOrDefault<bool>(
                      widget.videoRecord?.videoUrl != null &&
                          widget.videoRecord?.videoUrl != '',
                      true,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ClipRRect(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: AspectRatio(
                                  aspectRatio: 1.78,
                                  child: FlutterFlowVideoPlayer(
                                    path: widget.videoRecord!.videoUrl,
                                    videoType: VideoType.network,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.7,
                                    aspectRatio: 1.7,
                                    autoPlay: true,
                                    looping: false,
                                    showControls: true,
                                    allowFullScreen: false,
                                    allowPlaybackSpeedMenu: true,
                                    lazyLoad: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
