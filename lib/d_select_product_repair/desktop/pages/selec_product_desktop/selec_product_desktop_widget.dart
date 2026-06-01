import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'selec_product_desktop_model.dart';
export 'selec_product_desktop_model.dart';

class SelecProductDesktopWidget extends StatefulWidget {
  const SelecProductDesktopWidget({super.key});

  static String routeName = 'Selec_Product_desktop';
  static String routePath = '/selecProductDesktop';

  @override
  State<SelecProductDesktopWidget> createState() =>
      _SelecProductDesktopWidgetState();
}

class _SelecProductDesktopWidgetState extends State<SelecProductDesktopWidget> {
  late SelecProductDesktopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecProductDesktopModel());

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
      ),
    );
  }
}
