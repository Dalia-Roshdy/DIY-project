import '/f_secure_payment_checkout/mobile/components/a_secure_checkout_mobile/a_secure_checkout_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'secure_checkout_model.dart';
export 'secure_checkout_model.dart';

class SecureCheckoutWidget extends StatefulWidget {
  const SecureCheckoutWidget({super.key});

  static String routeName = 'SecureCheckout';
  static String routePath = '/secureCheckout';

  @override
  State<SecureCheckoutWidget> createState() => _SecureCheckoutWidgetState();
}

class _SecureCheckoutWidgetState extends State<SecureCheckoutWidget> {
  late SecureCheckoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecureCheckoutModel());

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
          model: _model.aSecureCheckoutMobileModel,
          updateCallback: () => safeSetState(() {}),
          child: ASecureCheckoutMobileWidget(),
        ),
      ),
    );
  }
}
