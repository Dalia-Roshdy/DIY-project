import '/flutter_flow/flutter_flow_util.dart';
import 's11_socials_widget.dart' show S11SocialsWidget;
import 'package:flutter/material.dart';

class S11SocialsModel extends FlutterFlowModel<S11SocialsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-EmailAddress widget.
  FocusNode? textFieldEmailAddressFocusNode;
  TextEditingController? textFieldEmailAddressTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailAddressTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEmailAddressFocusNode?.dispose();
    textFieldEmailAddressTextController?.dispose();
  }
}
