import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../common/config.dart';
import '../mixins/player_control_mixin.dart';
import '../mixins/single_player_manager.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String url;
  final bool play;
  final int index;
  final Function()? onTapComment;
  final void Function()? onFinish;
  final Widget? content;
  final Widget Function(bool isPlaying)? renderButtonPlay;

  const VideoPlayerWidget({
    super.key,
    required this.url,
    this.play = true,
    this.index = 0,
    this.onTapComment,
    this.onFinish,
    this.content,
    this.renderButtonPlay,
  });
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget>
    with PlayerControlMixin, SinglePlayerPlayingMixin {
  VideoPlayerController? _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool initDone = false;
  bool _isFinish = false;
  bool visibilityDetector = false;

  Duration? _position;
  bool _isFirstPlay = false;

  double _mathScale(Size size, double aspectRatio) {
    var maxH = 0.0;
    var maxW = 0.0;
    var minH = 0.0;
    var minW = 0.0;
    final sizeScreen = size;

    minH = sizeScreen.height;
    minW = minH * aspectRatio;
    maxW = sizeScreen.width;
    maxH = maxW / aspectRatio;

    if (minW > maxW) {
      final tempW = minW;
      minW = maxW;
      maxW = tempW;

      final tempH = minH;
      minH = maxH;
      maxH = tempH;
    }

    return maxH / minH;
  }

  void _listenDetectComplete() {
    if (controller != null) {
      final position = controller!.value.position.inSeconds;
      final duration = controller!.value.duration.inSeconds;

      if (duration != 0 && position == duration && _isFinish == false) {
        _isFinish = true;
        widget.onFinish?.call();
      } else if (position != duration) {
        _isFinish = false;
      }
    }
  }

  void _onSlideChange(Duration duration) {
    if (mounted) {
      setState(() {
        _position = duration;
      });
    }
  }

  void _onSlideChangeEnd(Duration duration) {
    _seek(duration);
    if (mounted) {
      setState(() {
        _position = null;
      });
    }
  }

  void _seek(Duration position) {
    controller?.seekTo(position);
  }

  @override
  VideoPlayerController? get controller => _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _initializeVideoPlayerFuture = _controller!.initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized,
      // even before the play button has been pressed.
      setState(() {
        if (visibilityDetector) {
          _controller?.play();
          setTimer();
        }

        initDone = true;
        _controller?.setLooping(false);
      });
    });

    _controller?.addListener(_listenDetectComplete);

    super.initState();
  }

  @override
  bool isPlaying(ChangeNotifier controller) {
    return (controller as VideoPlayerController).value.isPlaying;
  }

  @override
  FutureOr pause(ChangeNotifier controller) {
    final c = controller as VideoPlayerController;
    if (c.value.isPlaying) {
      c.pause();
    }
  }

  @override
  ChangeNotifier registerPlayer(BuildContext context) {
    return _controller!;
  }

  @override
  void dispose() {
    initDone = false;
    _controller?.removeListener(_listenDetectComplete);
    _controller?.dispose();
    _controller = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return const SizedBox();
    }
    return LayoutBuilder(builder: (_, constraints) {
      return GestureDetector(
        onTap: () {
          _isFirstPlay = true;
          onTapPlayer();
        },
        behavior: HitTestBehavior.translucent,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          body: VisibilityDetector(
            key: ValueKey('${widget.key}VisibilityDetector$hashCode'),
            onVisibilityChanged: (info) {
              if (info.visibleFraction < 0.4 ||
                  (info.visibleFraction > 0.7 && info.visibleFraction < 1)) {
                visibilityDetector = false;
                if (initDone) {
                  showControl();

                  _controller?.pause();
                }
              } else if (info.visibleFraction == 1) {
                visibilityDetector = true;
                if (initDone) {
                  _controller?.play();
                  setTimer();
                }
              }
            },
            child: Stack(
              children: [
                FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (_controller!.value.aspectRatio > 0.6) {
                        return Center(
                          child: AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          ),
                        );
                      }

                      final failedLoadList = [null, double.infinity];
                      final size = MediaQuery.sizeOf(context);
                      final sizeScreen = Size(
                        failedLoadList.contains(constraints.maxWidth)
                            ? size.width
                            : constraints.maxWidth,
                        failedLoadList.contains(constraints.maxHeight)
                            ? size.height
                            : constraints.maxHeight,
                      );

                      final scaleVideo = _mathScale(
                        sizeScreen,
                        _controller!.value.aspectRatio,
                      );

                      return Center(
                        child: Transform.scale(
                          scale: scaleVideo,
                          child: AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          ),
                        ),
                      );
                    } else {
                      return Center(child: kLoadingWidget(context));
                    }
                  },
                ),
                if (widget.content != null) widget.content!,
                builderListenShowController(
                  builder: () {
                    return AnimatedBuilder(
                      animation: _controller!,
                      builder: (_, __) {
                        if (_isFirstPlay == false) {
                          return const SizedBox();
                        }
                        if (widget.renderButtonPlay != null) {
                          return widget
                              .renderButtonPlay!(_controller!.value.isPlaying);
                        }

                        return Container(
                          color: Colors.transparent,
                          child: Center(
                            child: Icon(
                              _controller!.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              size: 60,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedContainer(
                        height: _position != null ? 10 : 4,
                        duration: const Duration(milliseconds: 250),
                        child: SliderTheme(
                          data: SliderThemeData(
                            thumbColor: Colors.white,
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: _position != null ? 5 : 2,
                            ),
                            trackHeight: 2,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white60,
                            overlayShape: SliderComponentShape.noThumb,
                          ),
                          child: ValueListenableBuilder<VideoPlayerValue>(
                            valueListenable: _controller!,
                            builder: (_, value, __) {
                              final pos = _position ?? value.position;
                              return Slider(
                                onChanged: (mili) => _onSlideChange(
                                  Duration(milliseconds: mili.toInt()),
                                ),
                                onChangeEnd: (mili) => _onSlideChangeEnd(
                                  Duration(milliseconds: mili.toInt()),
                                ),
                                value: max(
                                  min(
                                    pos.inMilliseconds.toDouble(),
                                    value.duration.inMilliseconds.toDouble(),
                                  ),
                                  0,
                                ),
                                min: 0.0,
                                max: value.duration.inMilliseconds.toDouble(),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
