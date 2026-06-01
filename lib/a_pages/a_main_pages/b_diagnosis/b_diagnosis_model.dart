import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s04_image/s04_image_widget.dart';
import '/b_screen_components/s05_homestartdiagnosis/s05_homestartdiagnosis_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/b_screen_components/s13_squares/s13_squares_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b_diagnosis_widget.dart' show BDiagnosisWidget;
import 'package:flutter/material.dart';

class BDiagnosisModel extends FlutterFlowModel<BDiagnosisWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S05_Homestartdiagnosis component.
  late S05HomestartdiagnosisModel s05HomestartdiagnosisModel;
  // Model for S13_Squares component.
  late S13SquaresModel s13SquaresModel;
  // Model for S04_Image component.
  late S04ImageModel s04ImageModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s05HomestartdiagnosisModel =
        createModel(context, () => S05HomestartdiagnosisModel());
    s13SquaresModel = createModel(context, () => S13SquaresModel());
    s04ImageModel = createModel(context, () => S04ImageModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s05HomestartdiagnosisModel.dispose();
    s13SquaresModel.dispose();
    s04ImageModel.dispose();
    s12FooterModel.dispose();
  }
}
