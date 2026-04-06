import '/a_screens/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/a_screens/s02_headlines/s02_headlines_widget.dart';
import '/a_screens/s03_about_us/s03_about_us_widget.dart';
import '/a_screens/s06_core_features/s06_core_features_widget.dart';
import '/a_screens/s07_service_content/s07_service_content_widget.dart';
import '/a_screens/s07_service_title/s07_service_title_widget.dart';
import '/a_screens/s08_company_investors/s08_company_investors_widget.dart';
import '/a_screens/s09_testimonials/s09_testimonials_widget.dart';
import '/a_screens/s10_contac_us/s10_contac_us_widget.dart';
import '/a_screens/s11_socials/s11_socials_widget.dart';
import '/a_screens/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_home_page_widget.dart' show AHomePageWidget;
import 'package:flutter/material.dart';

class AHomePageModel extends FlutterFlowModel<AHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in A-HomePage widget.
  List<ACMakeRecord>? acMakeAct;
  // Stores action output result for [Firestore Query - Query a collection] action in A-HomePage widget.
  List<ACModelRecord>? acModelAct;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in A-HomePage widget.
  List<AcMakeDTOStruct>? acMakeMap;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S02_Headlines component.
  late S02HeadlinesModel s02HeadlinesModel;
  // Model for S03_AboutUs component.
  late S03AboutUsModel s03AboutUsModel;
  // Model for S07_ServiceTitle component.
  late S07ServiceTitleModel s07ServiceTitleModel;
  // Model for S07_ServiceContent component.
  late S07ServiceContentModel s07ServiceContentModel;
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

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s02HeadlinesModel = createModel(context, () => S02HeadlinesModel());
    s03AboutUsModel = createModel(context, () => S03AboutUsModel());
    s07ServiceTitleModel = createModel(context, () => S07ServiceTitleModel());
    s07ServiceContentModel =
        createModel(context, () => S07ServiceContentModel());
    s06CoreFeaturesModel = createModel(context, () => S06CoreFeaturesModel());
    s08CompanyInvestorsModel =
        createModel(context, () => S08CompanyInvestorsModel());
    s09TestimonialsModel = createModel(context, () => S09TestimonialsModel());
    s10ContacUsModel = createModel(context, () => S10ContacUsModel());
    s11SocialsModel = createModel(context, () => S11SocialsModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s02HeadlinesModel.dispose();
    s03AboutUsModel.dispose();
    s07ServiceTitleModel.dispose();
    s07ServiceContentModel.dispose();
    s06CoreFeaturesModel.dispose();
    s08CompanyInvestorsModel.dispose();
    s09TestimonialsModel.dispose();
    s10ContacUsModel.dispose();
    s11SocialsModel.dispose();
    s12FooterModel.dispose();
  }
}
