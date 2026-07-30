import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s05_homestartdiagnosis_copy2/s05_homestartdiagnosis_copy2_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b_diagnosis_copy_widget.dart' show BDiagnosisCopyWidget;
import 'package:flutter/material.dart';

class BDiagnosisCopyModel extends FlutterFlowModel<BDiagnosisCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in B-DiagnosisCopy widget.
  List<ACMakeRecord>? acMakeActD;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in B-DiagnosisCopy widget.
  List<AcMakeDTOStruct>? acMakeMapD;
  // Stores action output result for [Firestore Query - Query a collection] action in B-DiagnosisCopy widget.
  List<ACModelRecord>? acModelActD;
  // Stores action output result for [Custom Action - mapACModelToDto] action in B-DiagnosisCopy widget.
  List<AcModelDTOStruct>? acModelMapD;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S05_HomestartdiagnosisCopy2 component.
  late S05HomestartdiagnosisCopy2Model s05HomestartdiagnosisCopy2Model;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s05HomestartdiagnosisCopy2Model =
        createModel(context, () => S05HomestartdiagnosisCopy2Model());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s05HomestartdiagnosisCopy2Model.dispose();
    s12FooterModel.dispose();
  }
}
