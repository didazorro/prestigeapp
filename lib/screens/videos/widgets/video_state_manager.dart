import 'package:flutter/material.dart';

class VideoPlayerState {
  bool isMute;
  VideoPlayerState({
    this.isMute = true,
  });
}

final _videoState = VideoPlayerState();

final _stateClients = <VideoPlayerStateManagerMixin>[];

mixin VideoPlayerStateManagerMixin<T extends StatefulWidget> on State<T> {
  bool get isMute => _videoState.isMute;

  void setMute(bool isMute) {
    _videoState.isMute = isMute;
    for (final e in _stateClients) {
      e.onVideoStateChange(_videoState);
    }
  }

  void onVideoStateChange(VideoPlayerState state) {}

  @override
  void initState() {
    _stateClients.add(this);
    super.initState();
  }

  @override
  void dispose() {
    _stateClients.remove(this);
    super.dispose();
  }
}
