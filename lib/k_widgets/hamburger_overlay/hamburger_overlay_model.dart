import '/components/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hamburger_overlay_widget.dart' show HamburgerOverlayWidget;
import 'package:flutter/material.dart';

class HamburgerOverlayModel extends FlutterFlowModel<HamburgerOverlayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for nav_menu component.
  late NavMenuModel navMenuModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
  }
}
