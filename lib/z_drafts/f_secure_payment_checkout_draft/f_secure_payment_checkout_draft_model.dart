import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s08_company_investors/s08_company_investors_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/f_secure_payment_checkout/desktop/secure_checkout_desktop02/secure_checkout_desktop02_widget.dart';
import '/f_secure_payment_checkout/mobile/components/a_secure_checkout_mobile/a_secure_checkout_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'f_secure_payment_checkout_draft_widget.dart'
    show FSecurePaymentCheckoutDraftWidget;
import 'package:flutter/material.dart';

class FSecurePaymentCheckoutDraftModel
    extends FlutterFlowModel<FSecurePaymentCheckoutDraftWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in F-Secure_payment_checkout_draft widget.
  List<ACMakeRecord>? acMakeAct;
  // Stores action output result for [Firestore Query - Query a collection] action in F-Secure_payment_checkout_draft widget.
  List<ACModelRecord>? acModelAct;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in F-Secure_payment_checkout_draft widget.
  List<AcMakeDTOStruct>? acMakeMap;
  // Stores action output result for [Custom Action - mapACModelToDto] action in F-Secure_payment_checkout_draft widget.
  List<AcModelDTOStruct>? acModelMap;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for A-Secure_Checkout_Mobile component.
  late ASecureCheckoutMobileModel aSecureCheckoutMobileModel;
  // Model for secure_checkout_desktop02 component.
  late SecureCheckoutDesktop02Model secureCheckoutDesktop02Model;
  // Model for S08_CompanyInvestors component.
  late S08CompanyInvestorsModel s08CompanyInvestorsModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    aSecureCheckoutMobileModel =
        createModel(context, () => ASecureCheckoutMobileModel());
    secureCheckoutDesktop02Model =
        createModel(context, () => SecureCheckoutDesktop02Model());
    s08CompanyInvestorsModel =
        createModel(context, () => S08CompanyInvestorsModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    aSecureCheckoutMobileModel.dispose();
    secureCheckoutDesktop02Model.dispose();
    s08CompanyInvestorsModel.dispose();
    s12FooterModel.dispose();
  }
}
