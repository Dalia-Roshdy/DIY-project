import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 's15_video_player_main_model.dart';
export 's15_video_player_main_model.dart';

class S15VideoPlayerMainWidget extends StatefulWidget {
  const S15VideoPlayerMainWidget({super.key});

  @override
  State<S15VideoPlayerMainWidget> createState() =>
      _S15VideoPlayerMainWidgetState();
}

class _S15VideoPlayerMainWidgetState extends State<S15VideoPlayerMainWidget> {
  late S15VideoPlayerMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S15VideoPlayerMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
              child: Container(
                width: 1050.33,
                constraints: BoxConstraints(
                  maxWidth: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? double.infinity
                        : 1000.0,
                    2000.0,
                  ),
                  maxHeight: 2000.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  border: Border.all(
                    width: 3.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: FlutterFlowVideoPlayer(
                    path: 'https://assets.mixkit.co/videos/529/529-720.mp4',
                    videoType: VideoType.network,
                    autoPlay: false,
                    looping: true,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
