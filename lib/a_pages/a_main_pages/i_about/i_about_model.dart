import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/h_about/about_page/about_page_widget.dart';
import '/h_about/i_about_dektop/i_about_dektop_widget.dart';
import '/h_about/i_about_mobile/i_about_mobile_widget.dart';
import 'i_about_widget.dart' show IAboutWidget;
import 'package:flutter/material.dart';

class IAboutModel extends FlutterFlowModel<IAboutWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in I-About widget.
  List<ACMakeRecord>? acMakeAct;
  // Stores action output result for [Firestore Query - Query a collection] action in I-About widget.
  List<ACModelRecord>? acModelAct;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in I-About widget.
  List<AcMakeDTOStruct>? acMakeMap;
  // Stores action output result for [Custom Action - mapACModelToDto] action in I-About widget.
  List<AcModelDTOStruct>? acModelMap;
  // State field(s) for ScrollColumn widget.
  ScrollController? scrollColumnScrollController;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for About_page component.
  late AboutPageModel aboutPageModel;
  // Model for I_About_dektop component.
  late IAboutDektopModel iAboutDektopModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;
  // Model for I_About_mobile component.
  late IAboutMobileModel iAboutMobileModel;

  @override
  void initState(BuildContext context) {
    scrollColumnScrollController = ScrollController();
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    aboutPageModel = createModel(context, () => AboutPageModel());
    iAboutDektopModel = createModel(context, () => IAboutDektopModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
    iAboutMobileModel = createModel(context, () => IAboutMobileModel());
  }

  @override
  void dispose() {
    scrollColumnScrollController?.dispose();
    s01NavigatioBarModel.dispose();
    aboutPageModel.dispose();
    iAboutDektopModel.dispose();
    s12FooterModel.dispose();
    iAboutMobileModel.dispose();
  }
}
