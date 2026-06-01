import '/f_secure_payment_checkout/desktop/secure_checkout_desktop02/secure_checkout_desktop02_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secure_checkout2_widget.dart' show SecureCheckout2Widget;
import 'package:flutter/material.dart';

class SecureCheckout2Model extends FlutterFlowModel<SecureCheckout2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for secure_checkout_desktop02 component.
  late SecureCheckoutDesktop02Model secureCheckoutDesktop02Model;

  @override
  void initState(BuildContext context) {
    secureCheckoutDesktop02Model =
        createModel(context, () => SecureCheckoutDesktop02Model());
  }

  @override
  void dispose() {
    secureCheckoutDesktop02Model.dispose();
  }
}
