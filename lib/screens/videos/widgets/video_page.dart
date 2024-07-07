import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../modules/dynamic_layout/config/product_config.dart';
import '../../../services/service_config.dart';
import '../models/video.dart';
import 'video_buttons.dart';
import 'video_info.dart';
import 'video_player_widget.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({
    super.key,
    required this.video,
    this.onFinish,
  });

  final Video video;
  final void Function()? onFinish;

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(
      url: widget.video.videoUrl ?? '',
      onFinish: widget.onFinish,
      renderButtonPlay: (bool isPlaying) {
        if (isPlaying) {
          return const SizedBox();
        }

        return Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.black.withOpacity(0.1),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            child: Icon(
              CupertinoIcons.play_arrow_solid,
              size: 50,
              color: Theme.of(context).primaryColor,
            ),
          ),
        );
      },
      content: Positioned(
        left: 0,
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                const Color(0xFF000000).withOpacity(0.6),
                const Color(0xFF000000).withOpacity(0.3),
                Colors.transparent
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: VideoInfo(product: widget.video.product),
                ),
              ),
              // Listing does not have a buy button and does not use shares
              if (ServerConfig().isListingType == false)
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: VideoButtons(
                    video: widget.video,
                    config: ProductConfig.empty(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
