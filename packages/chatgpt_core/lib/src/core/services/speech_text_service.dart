import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:speech_to_text/speech_to_text.dart';

@injectable
class SpeechTextService {
  late SpeechToText speech;

  SpeechTextService();

  String _currentLocaleId = 'en-US';

  Future<bool> initSpeechToText(Function(String) statusListener) async {
    speech = SpeechToText();
    var hasSpeech = await speech.initialize(
      onError: (val) => debugPrint('onError: $val'),
      debugLogging: true,
    );
    if (hasSpeech) {
      speech.statusListener = statusListener;
      var systemLocale = await speech.systemLocale();
      _currentLocaleId = systemLocale?.localeId ?? 'en-US';

      return true;
    }

    return false;
  }

  void startSpeak(Function(String) callback) {
    speech.listen(
      listenOptions: SpeechListenOptions(cancelOnError: true),
      listenFor: const Duration(seconds: 30), // Maximum to listen is 30s
      pauseFor: const Duration(seconds: 5), // Maximum if not detected is 5s
      localeId: _currentLocaleId,
      onResult: (value) {
        callback(value.recognizedWords);
      },
    );
  }

  Future<void> stopSpeak() async {
    if (speech.isAvailable) {
      await speech.stop();
    }
  }
}
