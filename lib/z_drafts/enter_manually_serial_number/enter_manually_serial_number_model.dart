import '/flutter_flow/flutter_flow_util.dart';
import 'enter_manually_serial_number_widget.dart'
    show EnterManuallySerialNumberWidget;
import 'package:flutter/material.dart';

class EnterManuallySerialNumberModel
    extends FlutterFlowModel<EnterManuallySerialNumberWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Make widget.
  FocusNode? textFieldMakeFocusNode;
  TextEditingController? textFieldMakeTextController;
  String? Function(BuildContext, String?)? textFieldMakeTextControllerValidator;
  // State field(s) for TextField-Model widget.
  FocusNode? textFieldModelFocusNode;
  TextEditingController? textFieldModelTextController;
  String? Function(BuildContext, String?)?
      textFieldModelTextControllerValidator;
  // State field(s) for TextField-SN widget.
  FocusNode? textFieldSNFocusNode;
  TextEditingController? textFieldSNTextController;
  String? Function(BuildContext, String?)? textFieldSNTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldMakeFocusNode?.dispose();
    textFieldMakeTextController?.dispose();

    textFieldModelFocusNode?.dispose();
    textFieldModelTextController?.dispose();

    textFieldSNFocusNode?.dispose();
    textFieldSNTextController?.dispose();
  }
}
