// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:js_interop';
import 'dart:ui_web' as ui_web;

import 'package:flutter/foundation.dart';
import 'package:web/web.dart' as web;

class HtmlVideoPlayer extends StatefulWidget {
  const HtmlVideoPlayer({
    super.key,
    this.width,
    this.height,
    required this.videoUrl,
    this.autoplay = true,
    this.showControls = true,
    this.loop = false,
    this.muted = true,
  });

  final double? width;
  final double? height;
  final String videoUrl;
  final bool autoplay;
  final bool showControls;
  final bool loop;
  final bool muted;

  @override
  State<HtmlVideoPlayer> createState() => _HtmlVideoPlayerState();
}

class _HtmlVideoPlayerState extends State<HtmlVideoPlayer> {
  late final String _viewType;

  web.HTMLVideoElement? _videoElement;

  int _loadVersion = 0;

  bool _playbackUnlocked =
      web.window.sessionStorage.getItem('videoPlaybackUnlocked') == 'true';

  @override
  void initState() {
    super.initState();

    _viewType =
        'html-video-${DateTime.now().microsecondsSinceEpoch}-${identityHashCode(this)}';

    final video = web.HTMLVideoElement()
      ..style.width = '100%'
      ..style.height = '100%'
      ..style.objectFit = 'contain'
      ..style.backgroundColor = 'black'
      ..style.display = 'block'
      ..controls = widget.showControls
      ..autoplay = false
      ..loop = widget.loop
      ..muted = true
      ..preload = 'auto'
      ..setAttribute('playsinline', '')
      ..setAttribute('webkit-playsinline', '')
      ..setAttribute('controlslist', 'nodownload');

    _videoElement = video;

    // When the user manually presses Play for the first time,
    // remember that playback has been unlocked for this browser session.
    video.addEventListener(
      'play',
      ((web.Event event) {
        _playbackUnlocked = true;

        web.window.sessionStorage.setItem(
          'videoPlaybackUnlocked',
          'true',
        );
      }).toJS,
    );

    ui_web.platformViewRegistry.registerViewFactory(
      _viewType,
      (int viewId) => video,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadVideo(widget.videoUrl);
    });
  }

  @override
  void didUpdateWidget(covariant HtmlVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);

    final video = _videoElement;

    if (video == null) {
      return;
    }

    video.controls = widget.showControls;
    video.loop = widget.loop;

    // Keep automatic iPhone playback muted.
    video.muted = true;

    if (oldWidget.videoUrl != widget.videoUrl) {
      _loadVideo(widget.videoUrl);
      return;
    }

    if (!oldWidget.autoplay && widget.autoplay && _playbackUnlocked) {
      _playSafely();
    }

    if (oldWidget.autoplay && !widget.autoplay) {
      video.pause();
    }
  }

  Future<void> _loadVideo(String newUrl) async {
    final video = _videoElement;

    if (video == null) {
      return;
    }

    final int currentVersion = ++_loadVersion;
    final String cleanUrl = newUrl.trim();

    // Pause and release the previous iPhone media resource.
    video.pause();
    video.removeAttribute('src');
    video.load();

    // Allow iPhone WebKit to release the previous video.
    await Future<void>.delayed(
      const Duration(milliseconds: 250),
    );

    if (!mounted || currentVersion != _loadVersion || cleanUrl.isEmpty) {
      return;
    }

    video
      ..muted = true
      ..src = cleanUrl
      ..load();

    // The first video waits for a manual Play.
    // Later videos autoplay after playback has been unlocked.
    if (widget.autoplay && _playbackUnlocked) {
      await _playSafely();
    }
  }

  Future<void> _playSafely() async {
    final video = _videoElement;

    if (video == null || !mounted) {
      return;
    }

    // iPhone requires muted playback for reliable autoplay.
    video.muted = true;

    try {
      await video.play().toDart;
    } catch (error) {
      // If iPhone blocks autoplay, native controls remain visible.
      // The user can press Play without reducing privacy protection.
      debugPrint('HTML video autoplay blocked: $error');
    }
  }

  @override
  void dispose() {
    _loadVersion++;

    final video = _videoElement;

    if (video != null) {
      video.pause();
      video.removeAttribute('src');
      video.load();
      video.remove();
    }

    _videoElement = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return SizedBox(
        width: widget.width,
        height: widget.height,
        child: const Center(
          child: Text(
            'This video player is available on web only.',
          ),
        ),
      );
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: HtmlElementView(
        viewType: _viewType,
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
