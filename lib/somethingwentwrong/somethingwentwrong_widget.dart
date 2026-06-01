import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'somethingwentwrong_model.dart';
export 'somethingwentwrong_model.dart';

class SomethingwentwrongWidget extends StatefulWidget {
  const SomethingwentwrongWidget({super.key});

  static String routeName = 'somethingwentwrong';
  static String routePath = '/somethingwentwrong';

  @override
  State<SomethingwentwrongWidget> createState() =>
      _SomethingwentwrongWidgetState();
}

class _SomethingwentwrongWidgetState extends State<SomethingwentwrongWidget> {
  late SomethingwentwrongModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SomethingwentwrongModel());

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
