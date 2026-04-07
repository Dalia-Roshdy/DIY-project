import '/a_screens/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/a_screens/s12_footer/s12_footer_widget.dart';
import '/a_screens/s14_video_library_left_index/s14_video_library_left_index_widget.dart';
import '/a_screens/s15_video_player_main/s15_video_player_main_widget.dart';
import '/a_screens/s16_squares_videos/s16_squares_videos_widget.dart';
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
  // Model for S16_Squares_videos component.
  late S16SquaresVideosModel s16SquaresVideosModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s14VideoLibraryLeftIndexModel =
        createModel(context, () => S14VideoLibraryLeftIndexModel());
    s15VideoPlayerMainModel =
        createModel(context, () => S15VideoPlayerMainModel());
    s16SquaresVideosModel = createModel(context, () => S16SquaresVideosModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s14VideoLibraryLeftIndexModel.dispose();
    s15VideoPlayerMainModel.dispose();
    s16SquaresVideosModel.dispose();
    s12FooterModel.dispose();
  }
}
