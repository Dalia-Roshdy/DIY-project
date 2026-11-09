import '/components/button3_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'zip_code_component_model.dart';
export 'zip_code_component_model.dart';

/// I want to create a pop up sreen to enter the zip code to find in you are
/// withing the delivery zone if not you are welcom to use our diagnosis
/// journey
class ZipCodeComponentWidget extends StatefulWidget {
  const ZipCodeComponentWidget({
    super.key,
    String? title,
    String? description,
    String? zipValue,
    bool? isError,
  })  : this.title = title ?? '',
        this.description = description ?? '',
        this.zipValue = zipValue ?? '',
        this.isError = isError ?? false;

  final String title;
  final String description;
  final String zipValue;
  final bool isError;

  @override
  State<ZipCodeComponentWidget> createState() => _ZipCodeComponentWidgetState();
}

class _ZipCodeComponentWidgetState extends State<ZipCodeComponentWidget> {
  late ZipCodeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZipCodeComponentModel());

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
      width: 340.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          lineHeight: 1.27,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleLargeIsCustom,
                        ),
                  ),
                  Text(
                    widget.description,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          lineHeight: 1.47,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  wrapWithModel(
                    model: _model.textFieldModel,
                    updateCallback: () => safeSetState(() {}),
                    child: TextFieldWidget(
                      label: 'Zip Code',
                      labelPresent: true,
                      helper: '',
                      helperPresent: false,
                      leadingIcon: Icon(
                        Icons.location_on_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      leadingIconPresent: true,
                      trailingIconPresent: false,
                      hint: 'e.g. 90210',
                      value: widget.zipValue,
                      onChange: '',
                      onSubmit: '',
                      variant: 'outlined',
                      error: valueOrDefault<bool>(
                        valueOrDefault<bool>(
                          widget.isError,
                          false,
                        )
                            ? false
                            : false,
                        false,
                      ),
                    ),
                  ),
                  if (valueOrDefault<bool>(
                    widget.isError,
                    false,
                  ))
                    Container(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                        child: Container(
                          child: Text(
                            'But you can still use our diagnosis journey!',
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodySmallFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.38,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodySmallIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ),
                ].divide(SizedBox(height: 4.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  wrapWithModel(
                    model: _model.buttonModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: Button3Widget(
                      iconPresent: false,
                      iconEndPresent: false,
                      content: 'Check Availability',
                      variant: 'primary',
                      size: 'medium',
                      fullWidth: true,
                      loading: false,
                      disabled: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.buttonModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: Button3Widget(
                      icon: Icon(
                        Icons.auto_awesome_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      iconPresent: true,
                      iconEndPresent: false,
                      content: 'Start Diagnosis Journey',
                      variant: 'outline',
                      size: 'medium',
                      fullWidth: true,
                      loading: false,
                      disabled: false,
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
