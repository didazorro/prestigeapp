import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../common/extensions/string_ext.dart';
import '../common/tools/image_tools.dart';

class ThumbnailVideoWidget extends StatefulWidget {
  const ThumbnailVideoWidget(
    this.videoPath, {
    super.key,
    this.maxWidth = 64.0,
    this.maxHeight = 64.0,
    this.quality = 75,
    this.fit = BoxFit.cover,
    this.decoration,
    this.margin,
    this.padding,
    this.duration = const Duration(milliseconds: 200),
  });

  final String videoPath;
  final double maxWidth;
  final double maxHeight;
  final int quality;
  final BoxFit fit;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Duration duration;

  @override
  State<ThumbnailVideoWidget> createState() => _ThumbnailVideoWidgetState();
}

class _ThumbnailVideoWidgetState extends State<ThumbnailVideoWidget> {
  Future<Uint8List?>? _getVideoThumbnail;
  late final _isYoutube = widget.videoPath.isYoutubeLink();

  // only for youtube
  bool _isLiveImage = false;
  bool _isLoadingYT = true;
  String _thumbnailYT = '';
  BoxDecoration? _decoration;

  void _handleYoutubeLink() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final videoId = YoutubePlayerController.convertUrlToId(widget.videoPath);

      if (videoId?.isNotEmpty ?? false) {
        _thumbnailYT = YoutubePlayerController.getThumbnail(videoId: videoId!);
        _isLiveImage = await ImageTools.checkImageLive(_thumbnailYT);
      } else {
        _isLiveImage = false;
      }

      setState(() {
        _isLoadingYT = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    if (_isYoutube) {
      _handleYoutubeLink();
    } else {
      _getVideoThumbnail = ImageTools.getThumbnailFromVideo(
        widget.videoPath,
        maxWidth: widget.maxWidth,
        maxHeight: widget.maxHeight,
        quality: widget.quality,
      );
    }

    _decoration = widget.decoration;
  }

  @override
  void didUpdateWidget(covariant ThumbnailVideoWidget oldWidget) {
    if (widget.decoration != oldWidget.decoration) {
      _decoration = widget.decoration;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    try {
      if (_isYoutube) {
        if (_isLoadingYT) {
          return Container(
            padding: widget.padding,
            margin: widget.margin,
            decoration: _decoration,
            child: Skeleton(
              height: widget.maxHeight,
              width: widget.maxWidth,
            ),
          );
        } else if (_isLiveImage) {
          return AnimatedContainer(
            duration: widget.duration,
            padding: widget.padding,
            margin: widget.margin,
            decoration: _decoration,
            child: ImageResize(
              url: _thumbnailYT,
              height: widget.maxHeight,
              width: widget.maxWidth,
              isResize: true,
              fit: widget.fit,
            ),
          );
        }
      } else if (_getVideoThumbnail != null) {
        return AnimatedContainer(
          duration: widget.duration,
          child: FutureBuilder(
            future: _getVideoThumbnail,
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                return Container(
                  padding: widget.padding,
                  margin: widget.margin,
                  decoration: _decoration,
                  child: Image.memory(
                    snapshot.data as Uint8List,
                    height: widget.maxHeight,
                    width: widget.maxWidth,
                    fit: widget.fit,
                  ),
                );
              }

              if (snapshot.hasError) {
                return const SizedBox();
              }

              return Container(
                padding: widget.padding,
                margin: widget.margin,
                decoration: _decoration,
                child: Skeleton(
                  height: widget.maxHeight,
                  width: widget.maxWidth,
                ),
              );
            },
          ),
        );
      }

      return const SizedBox();
    } catch (e) {
      printError(e);
    }
    return const SizedBox();
  }
}
