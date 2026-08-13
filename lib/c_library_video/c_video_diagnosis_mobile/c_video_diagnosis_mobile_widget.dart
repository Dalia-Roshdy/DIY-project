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
import 'c_video_diagnosis_mobile_model.dart';
export 'c_video_diagnosis_mobile_model.dart';

class CVideoDiagnosisMobileWidget extends StatefulWidget {
  const CVideoDiagnosisMobileWidget({
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
  State<CVideoDiagnosisMobileWidget> createState() =>
      _CVideoDiagnosisMobileWidgetState();
}

class _CVideoDiagnosisMobileWidgetState
    extends State<CVideoDiagnosisMobileWidget> {
  late CVideoDiagnosisMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CVideoDiagnosisMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 24.0),
            child: Text(
              valueOrDefault<String>(
                widget.videoRecord?.title,
                'DIY WALKTHROUGH ',
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
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
          if (widget.videoRecord?.videoUrl != null &&
              widget.videoRecord?.videoUrl != '')
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: ClipRRect(
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlutterFlowVideoPlayer(
                      path: widget.videoRecord!.videoUrl,
                      videoType: VideoType.network,
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      aspectRatio: 1.0,
                      autoPlay: false,
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
          if (widget.videoOptions!.length > 0)
            Align(
              alignment: AlignmentDirectional(-1.0, -1.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).grey20,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Text(
                            'Questions:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.videoRecord?.videoQuestion,
                              'Q.Text',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
                                ),
                          ),
                        ),
                        Expanded(
                          child: FlutterFlowRadioButton(
                            options: widget.videoOptions!
                                .map((e) => e.buttonText)
                                .toList(),
                            onChanged: (val) async {
                              safeSetState(() {});
                              _model.selectedOption = widget.videoOptions
                                  ?.where((e) =>
                                      e.buttonText == _model.radioButtonValue)
                                  .toList()
                                  .firstOrNull;
                            },
                            controller: _model.radioButtonValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 32.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveRadioButtonColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 24.0, 0.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.selectedOption = null;
                                  _model.radioButtonValueController?.reset();

                                  await widget.onBack?.call();
                                },
                                text: 'Back',
                                icon: Icon(
                                  Icons.arrow_back_sharp,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: (_model.radioButtonValue == null ||
                                        _model.radioButtonValue == '')
                                    ? null
                                    : () async {
                                        if (_model.selectedOption?.actionType ==
                                            ActionType.showVideo) {
                                          await widget.onNextVideo?.call(
                                            _model.selectedOption!.nextStepKey!,
                                          );
                                          _model.selectedOption = null;
                                          _model.radioButtonValueController
                                              ?.reset();
                                        } else if (_model
                                                .selectedOption?.actionType ==
                                            ActionType.navigate) {
                                          if (_model
                                                  .selectedOption?.targetPage ==
                                              TargetPage.contactUs) {
                                            context.pushNamed(
                                                KContactWidget.routeName);
                                          } else if (_model
                                                  .selectedOption?.targetPage ==
                                              TargetPage.needAssistant) {
                                            context.pushNamed(
                                                LRequestTechnicalWidget
                                                    .routeName);
                                          } else if (_model
                                                  .selectedOption?.targetPage ==
                                              TargetPage.diagnosis) {
                                            context.pushNamed(
                                                BDiagnosisWidget.routeName);
                                          }
                                        } else if (_model
                                                .selectedOption?.actionType ==
                                            ActionType.navigateWithData) {
                                          context.pushNamed(
                                            DSelectProductRepairWidget
                                                .routeName,
                                            queryParameters: {
                                              'part': serializeParam(
                                                _model.selectedOption
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconAlignment: IconAlignment.end,
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                  disabledColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
    );
  }
}
