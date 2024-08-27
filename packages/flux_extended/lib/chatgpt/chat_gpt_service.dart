import 'package:fstore/modules/openai/model/openai_model.dart';
import 'package:fstore/routes/flux_navigate.dart';
import 'package:fstore/services/chat/chat_service.dart';
import 'package:fstore/services/service_config.dart';
import 'package:inspireui/utils/logs.dart';
import 'package:openai/openai.dart';

class ChatGPTService extends ChatService {
  bool _initialized = false;

  static final ChatGPTService _instance = ChatGPTService._internal();

  factory ChatGPTService() => _instance;

  ChatGPTService._internal();

  @override
  bool get enable => openAIConfig.enableChat;

  @override
  Future<void> changeLanguage(String? langCode) async {}

  @override
  void dispose() {}

  @override
  Future<void> init() async {
    if (!openAIConfig.enableChat) {
      return;
    }
    try {
      if (!ServerConfig().isFluxGPT) {
        await OpenaiAppFactory.initialized(openAIConfig.toConfigurationJson());
      }
      _initialized = true;
    } catch (e) {
      _initialized = false;
      printError('[ChatGPT] Cannot initialize ChatGPT service!');
    }
  }

  @override
  Future<void> logout() async {}

  @override
  Future<void> showChatScreen(context) async {
    if (!openAIConfig.enableChat) {
      return;
    }

    if (!_initialized) {
      printError('[ChatGPT] has not been initialized!');
      return;
    }

    await FluxNavigate.pushNamed(
      'chat-gpt',
      context: context,
      forceRootNavigator: true,
    );
  }
}
