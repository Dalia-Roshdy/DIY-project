import '/components/button3_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'zip_code_component_copy_widget.dart' show ZipCodeComponentCopyWidget;
import 'package:flutter/material.dart';

class ZipCodeComponentCopyModel
    extends FlutterFlowModel<ZipCodeComponentCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late Button3Model buttonModel1;
  // Model for Button.
  late Button3Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel1 = createModel(context, () => Button3Model());
    buttonModel2 = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
