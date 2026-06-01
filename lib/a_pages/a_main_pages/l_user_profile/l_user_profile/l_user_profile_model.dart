import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/components/abcde/abcde_widget.dart';
import '/l_user_profile/l_user_profilemobile/l_user_profilemobile_widget.dart';
import 'l_user_profile_widget.dart' show LUserProfileWidget;
import 'package:flutter/material.dart';

class LUserProfileModel extends FlutterFlowModel<LUserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in L-User_profile widget.
  List<ACMakeRecord>? acMakeAct;
  // Stores action output result for [Firestore Query - Query a collection] action in L-User_profile widget.
  List<ACModelRecord>? acModelAct;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in L-User_profile widget.
  List<AcMakeDTOStruct>? acMakeMap;
  // Stores action output result for [Custom Action - mapACModelToDto] action in L-User_profile widget.
  List<AcModelDTOStruct>? acModelMap;
  // State field(s) for ScrollColumn widget.
  ScrollController? scrollColumnScrollController;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for abcde component.
  late AbcdeModel abcdeModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;
  // Model for L_user_profilemobile component.
  late LUserProfilemobileModel lUserProfilemobileModel;

  @override
  void initState(BuildContext context) {
    scrollColumnScrollController = ScrollController();
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    abcdeModel = createModel(context, () => AbcdeModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
    lUserProfilemobileModel =
        createModel(context, () => LUserProfilemobileModel());
  }

  @override
  void dispose() {
    scrollColumnScrollController?.dispose();
    s01NavigatioBarModel.dispose();
    abcdeModel.dispose();
    s12FooterModel.dispose();
    lUserProfilemobileModel.dispose();
  }
}
