import '/f_secure_payment_checkout/mobile/components/a_secure_checkout_mobile/a_secure_checkout_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secure_checkout_widget.dart' show SecureCheckoutWidget;
import 'package:flutter/material.dart';

class SecureCheckoutModel extends FlutterFlowModel<SecureCheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for A-Secure_Checkout_Mobile component.
  late ASecureCheckoutMobileModel aSecureCheckoutMobileModel;

  @override
  void initState(BuildContext context) {
    aSecureCheckoutMobileModel =
        createModel(context, () => ASecureCheckoutMobileModel());
  }

  @override
  void dispose() {
    aSecureCheckoutMobileModel.dispose();
  }
}
