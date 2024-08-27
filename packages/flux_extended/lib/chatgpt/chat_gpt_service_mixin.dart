import 'package:flutter/material.dart';
import 'package:openai/openai.dart';

mixin OpenAIServiceMixin {
  dynamic getOpenAIRoutesWithSettings(RouteSettings settings) {
    return OpenAIRoutes.getAll(settings);
  }
}
