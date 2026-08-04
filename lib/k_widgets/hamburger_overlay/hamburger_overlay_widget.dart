import '/components/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hamburger_overlay_model.dart';
export 'hamburger_overlay_model.dart';

class HamburgerOverlayWidget extends StatefulWidget {
  const HamburgerOverlayWidget({super.key});

  static String routeName = 'Hamburger_overlay';
  static String routePath = '/hamburgerOverlay';

  @override
  State<HamburgerOverlayWidget> createState() => _HamburgerOverlayWidgetState();
}

class _HamburgerOverlayWidgetState extends State<HamburgerOverlayWidget> {
  late HamburgerOverlayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HamburgerOverlayModel());

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
        body: wrapWithModel(
          model: _model.navMenuModel,
          updateCallback: () => safeSetState(() {}),
          child: NavMenuWidget(),
        ),
      ),
    );
  }
}
