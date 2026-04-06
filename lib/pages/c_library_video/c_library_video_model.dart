import '/a_screens/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/a_screens/s04_image/s04_image_widget.dart';
import '/a_screens/s05_homestartdiagnosis/s05_homestartdiagnosis_widget.dart';
import '/a_screens/s12_footer/s12_footer_widget.dart';
import '/a_screens/s13_squares/s13_squares_widget.dart';
import '/a_screens/s14_video_library_left_index/s14_video_library_left_index_widget.dart';
import '/a_screens/s15_video_player_main/s15_video_player_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_library_video_widget.dart' show CLibraryVideoWidget;
import 'package:flutter/material.dart';

class CLibraryVideoModel extends FlutterFlowModel<CLibraryVideoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S14_Video_Library_left_index component.
  late S14VideoLibraryLeftIndexModel s14VideoLibraryLeftIndexModel;
  // Model for S15_Video_player_main component.
  late S15VideoPlayerMainModel s15VideoPlayerMainModel;
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
    s14VideoLibraryLeftIndexModel =
        createModel(context, () => S14VideoLibraryLeftIndexModel());
    s15VideoPlayerMainModel =
        createModel(context, () => S15VideoPlayerMainModel());
    s05HomestartdiagnosisModel =
        createModel(context, () => S05HomestartdiagnosisModel());
    s13SquaresModel = createModel(context, () => S13SquaresModel());
    s04ImageModel = createModel(context, () => S04ImageModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s14VideoLibraryLeftIndexModel.dispose();
    s15VideoPlayerMainModel.dispose();
    s05HomestartdiagnosisModel.dispose();
    s13SquaresModel.dispose();
    s04ImageModel.dispose();
    s12FooterModel.dispose();
  }
}
