import '/c_library_video/c_video_library_mobile/c_video_library_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'video_library_widget.dart' show VideoLibraryWidget;
import 'package:flutter/material.dart';

class VideoLibraryModel extends FlutterFlowModel<VideoLibraryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for c_Video_library_mobile component.
  late CVideoLibraryMobileModel cVideoLibraryMobileModel;

  @override
  void initState(BuildContext context) {
    cVideoLibraryMobileModel =
        createModel(context, () => CVideoLibraryMobileModel());
  }

  @override
  void dispose() {
    cVideoLibraryMobileModel.dispose();
  }
}
