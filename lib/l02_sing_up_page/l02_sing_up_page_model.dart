import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'l02_sing_up_page_widget.dart' show L02SingUpPageWidget;
import 'package:flutter/material.dart';

class L02SingUpPageModel extends FlutterFlowModel<L02SingUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid full name';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }

  // State field(s) for TextField-Email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid email address';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter valid email address';
    }
    return null;
  }

  // State field(s) for TextField-Password widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  String? _textFieldPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid password';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters required';
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return '8+ chars with 1 uppercase, 1 lowercase, 1 number, 1 special character[@\$!%*?&]';
    }
    return null;
  }

  // State field(s) for TextField-CPassword widget.
  FocusNode? textFieldCPasswordFocusNode;
  TextEditingController? textFieldCPasswordTextController;
  late bool textFieldCPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldCPasswordTextControllerValidator;
  String? _textFieldCPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return '8+ chars with 1 uppercase, 1 lowercase, 1 number, 1 special character[@\$!%*?&]';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? rForm;

  @override
  void initState(BuildContext context) {
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldPasswordVisibility = false;
    textFieldPasswordTextControllerValidator =
        _textFieldPasswordTextControllerValidator;
    textFieldCPasswordVisibility = false;
    textFieldCPasswordTextControllerValidator =
        _textFieldCPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    textFieldCPasswordFocusNode?.dispose();
    textFieldCPasswordTextController?.dispose();
  }
}
