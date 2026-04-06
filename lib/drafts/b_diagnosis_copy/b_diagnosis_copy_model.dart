import '/a_screens/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/a_screens/s05_what_we_offer/s05_what_we_offer_widget.dart';
import '/a_screens/s06_core_features/s06_core_features_widget.dart';
import '/a_screens/s08_company_investors/s08_company_investors_widget.dart';
import '/a_screens/s09_testimonials/s09_testimonials_widget.dart';
import '/a_screens/s10_contac_us/s10_contac_us_widget.dart';
import '/a_screens/s11_socials/s11_socials_widget.dart';
import '/a_screens/s12_footer/s12_footer_widget.dart';
import '/a_screens/s13_squares/s13_squares_widget.dart';
import '/drafts/s03_homestartdiagnosis_01/s03_homestartdiagnosis01_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b_diagnosis_copy_widget.dart' show BDiagnosisCopyWidget;
import 'package:flutter/material.dart';

class BDiagnosisCopyModel extends FlutterFlowModel<BDiagnosisCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S03_Homestartdiagnosis_01 component.
  late S03Homestartdiagnosis01Model s03Homestartdiagnosis01Model;
  // Model for S05_whatWeOffer component.
  late S05WhatWeOfferModel s05WhatWeOfferModel;
  // Model for S06_CoreFeatures component.
  late S06CoreFeaturesModel s06CoreFeaturesModel;
  // Model for S08_CompanyInvestors component.
  late S08CompanyInvestorsModel s08CompanyInvestorsModel;
  // Model for S09_Testimonials component.
  late S09TestimonialsModel s09TestimonialsModel;
  // Model for S10_ContacUs component.
  late S10ContacUsModel s10ContacUsModel;
  // Model for S11_Socials component.
  late S11SocialsModel s11SocialsModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;
  // Model for S13_Squares component.
  late S13SquaresModel s13SquaresModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s03Homestartdiagnosis01Model =
        createModel(context, () => S03Homestartdiagnosis01Model());
    s05WhatWeOfferModel = createModel(context, () => S05WhatWeOfferModel());
    s06CoreFeaturesModel = createModel(context, () => S06CoreFeaturesModel());
    s08CompanyInvestorsModel =
        createModel(context, () => S08CompanyInvestorsModel());
    s09TestimonialsModel = createModel(context, () => S09TestimonialsModel());
    s10ContacUsModel = createModel(context, () => S10ContacUsModel());
    s11SocialsModel = createModel(context, () => S11SocialsModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
    s13SquaresModel = createModel(context, () => S13SquaresModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s03Homestartdiagnosis01Model.dispose();
    s05WhatWeOfferModel.dispose();
    s06CoreFeaturesModel.dispose();
    s08CompanyInvestorsModel.dispose();
    s09TestimonialsModel.dispose();
    s10ContacUsModel.dispose();
    s11SocialsModel.dispose();
    s12FooterModel.dispose();
    s13SquaresModel.dispose();
  }
}
