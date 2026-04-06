import '/a_screens/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's10_contac_us_widget.dart' show S10ContacUsWidget;
import 'package:flutter/material.dart';

class S10ContacUsModel extends FlutterFlowModel<S10ContacUsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Asterisk component.
  late AsteriskModel asteriskModel;
  // State field(s) for TextField-Name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextField-EmailAddress widget.
  FocusNode? textFieldEmailAddressFocusNode;
  TextEditingController? textFieldEmailAddressTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailAddressTextControllerValidator;
  // State field(s) for TextField-Subject widget.
  FocusNode? textFieldSubjectFocusNode;
  TextEditingController? textFieldSubjectTextController;
  String? Function(BuildContext, String?)?
      textFieldSubjectTextControllerValidator;
  // State field(s) for TextField-Message widget.
  FocusNode? textFieldMessageFocusNode;
  TextEditingController? textFieldMessageTextController;
  String? Function(BuildContext, String?)?
      textFieldMessageTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    asteriskModel = createModel(context, () => AsteriskModel());
  }

  @override
  void dispose() {
    asteriskModel.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldEmailAddressFocusNode?.dispose();
    textFieldEmailAddressTextController?.dispose();

    textFieldSubjectFocusNode?.dispose();
    textFieldSubjectTextController?.dispose();

    textFieldMessageFocusNode?.dispose();
    textFieldMessageTextController?.dispose();
  }
}
