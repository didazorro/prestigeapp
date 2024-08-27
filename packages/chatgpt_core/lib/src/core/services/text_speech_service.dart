import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:injectable/injectable.dart';

@injectable
class TextSpeechService {
  late FlutterTts flutterTts;

  TextSpeechService();

  Future _setAwaitOptions() async {
    await flutterTts.awaitSpeakCompletion(true);
  }

  Future<void> initTextToSpeech() async {
    flutterTts = FlutterTts();
    await _setAwaitOptions();

    await flutterTts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.playback,
      [
        IosTextToSpeechAudioCategoryOptions.allowBluetooth,
        IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        IosTextToSpeechAudioCategoryOptions.mixWithOthers,
      ],
      IosTextToSpeechAudioMode.voicePrompt,
    );

    flutterTts.setStartHandler(() {
      debugPrint('Playing');
    });

    flutterTts.setCompletionHandler(() {
      debugPrint('Complete');
    });

    flutterTts.setCancelHandler(() {
      // Handle if call flutterTts.stop() on Android only
      if (Platform.isAndroid) {
        debugPrint('Cancel');
        // Reset id message after stop speaking
      }
    });

    flutterTts.setErrorHandler((msg) {
      debugPrint('Error: $msg');
    });
  }

  Future<void> startHandler({
    required String text,
  }) async {
    await flutterTts.setVolume(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setPitch(1.0);
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
      // return flutterTts.awaitSpeakCompletion(true);
    }
  }

  // Future<void> completionHandler() async {}
  Future<void> cancelHandler() async {
    await flutterTts.stop();
  }

  void setCompletionHandler(Function() handler) {
    flutterTts.setCompletionHandler(handler);
  }
}
