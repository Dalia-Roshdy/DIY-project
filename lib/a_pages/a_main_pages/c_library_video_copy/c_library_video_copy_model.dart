import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s15_video_player_main/s15_video_player_main_widget.dart';
import '/b_screen_components/s16_squares_videos/s16_squares_videos_widget.dart';
import '/c_library_video/c_video_library_mobile/c_video_library_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_library_video_copy_widget.dart' show CLibraryVideoCopyWidget;
import 'package:flutter/material.dart';

class CLibraryVideoCopyModel extends FlutterFlowModel<CLibraryVideoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S15_Video_player_main component.
  late S15VideoPlayerMainModel s15VideoPlayerMainModel;
  // Model for S16_Squares_videos component.
  late S16SquaresVideosModel s16SquaresVideosModel;
  // Model for c_Video_library_mobile component.
  late CVideoLibraryMobileModel cVideoLibraryMobileModel;
  // Model for Asterisk component.
  late AsteriskModel asteriskModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s15VideoPlayerMainModel =
        createModel(context, () => S15VideoPlayerMainModel());
    s16SquaresVideosModel = createModel(context, () => S16SquaresVideosModel());
    cVideoLibraryMobileModel =
        createModel(context, () => CVideoLibraryMobileModel());
    asteriskModel = createModel(context, () => AsteriskModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s15VideoPlayerMainModel.dispose();
    s16SquaresVideosModel.dispose();
    cVideoLibraryMobileModel.dispose();
    asteriskModel.dispose();
  }
}
