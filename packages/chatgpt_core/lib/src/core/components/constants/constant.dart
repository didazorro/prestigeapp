import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../generated/l10n.dart';
import '../../../domain/entities/text_generate/prompt_use_case.dart';
import '../../../domain/entities/text_generate/sub_prompt_use_case.dart';

class Constant {
  static const lightIcon = 'https://i.imgur.com/Ix2e6Ye.png';

  static const darkIcon = 'https://i.imgur.com/Ix2e6Ye.png';

  static const chatBackgroundImage = 'https://i.imgur.com/mvllC9F.png';

  /// The system message helps set the behavior of the assistant. You can fill in the main function/task
  /// that the assistant takes on to make sure the context you give the assistant will not be skewed.
  /// It will not show on the screen
  static const roleplayIntroduction = '';

  /// The assistant will show this message on the screen before you chat for the first time
  static const welcomeMessage = 'Hello! How can I assist you today?';

  /// When opening a URL that includes these sites, it will open the external app instead of the webview.
  static const kExternalAppURLs = [
    'wa.me', // Whatsapp
    'm.me', // Messenger
    'ig.me', // Instagram
    'instagram.com', // Instagram
    'twitter.com', // Twitter
    'facebook.com', // Facebook
    'youtube.com', // Youbute
    'youtu.be', // Youbute
    't.me', // Telegram
    'play.google.com', // Google play
    'apps.apple.com', // App store
  ];

  /// When opening a URL that start with these schemas, it will open the non-browser external app instead of the webview or browser.
  /// Also please check all queries in the files [AndroidManifest.xml] and [Info.plist] if you use `canLaunchUrl` function
  static const kExternalNonBrowserAppURLs = [
    'tel:', // Phone call
    'sms:', // Send SMS
    'smsto:', // Send SMS
    'mailto:', // Send mail
    'skype:', // Skype
    'intent://', // Need to repace with scheme in the url
    'whatsapp://', // Whatsapp
    'instagram://', // Instagram
    'instagram-stories://', // Instagram story
    'twitter://', // Twitter
    'fb://', // Facebook
    'tg://', // Telegram
    'comgooglemaps://', // Google Maps
    'comgooglemapsurl://', // Google Maps URL
  ];

  static const testUseCases = <PromptUseCase>[
    PromptUseCase(
      name: 'Blog Idea & Outline',
      listSubPromptUseCase: [
        SubPromptUseCase(
          name: 'About',
          type: PromptUseCaseType.about,
          description: 'Writing Assistant',
        ),
      ],
    ),
    PromptUseCase(
      name: 'Blog Section Writing',
      listSubPromptUseCase: [
        SubPromptUseCase(
          name: 'Section Topic',
          type: PromptUseCaseType.sectionTopic,
          description: 'Role of Al Writers in the Future of Copy-writing',
        ),
        SubPromptUseCase(
          name: 'Section Keywords',
          type: PromptUseCaseType.sectionKeywords,
          description: 'Writer, blog generator, best writing software',
        ),
      ],
    ),
    PromptUseCase(
      name: 'Business Ideas',
      listSubPromptUseCase: [
        SubPromptUseCase(
          name: 'Interest',
          type: PromptUseCaseType.interest,
          description: 'Marketing Saas',
        ),
        SubPromptUseCase(
          name: 'Skills',
          type: PromptUseCaseType.skills,
          description: 'Copy-writing, marketing, product development, AI',
        ),
      ],
    ),
    PromptUseCase(
      name: 'Cover letter',
      listSubPromptUseCase: [
        SubPromptUseCase(
          name: 'Job Role',
          type: PromptUseCaseType.jobRole,
          description: 'Digital Marketer',
        ),
        SubPromptUseCase(
          name: 'Job Skills',
          type: PromptUseCaseType.jobSkills,
          description: 'Blog writing, SEO, social media, email',
        ),
      ],
    ),
    PromptUseCase(
      name: PromptUseCase.promptLibrary,
      listSubPromptUseCase: [
        SubPromptUseCase(
          name: 'Prompt',
          type: PromptUseCaseType.prompt,
          description: '',
        ),
      ],
    ),
  ];
}

enum PromptUseCaseType {
  @JsonValue('about')
  about,
  @JsonValue('sectionTopic')
  sectionTopic,
  @JsonValue('sectionKeywords')
  sectionKeywords,
  @JsonValue('interest')
  interest,
  @JsonValue('skills')
  skills,
  @JsonValue('jobRole')
  jobRole,
  @JsonValue('jobSkills')
  jobSkills,
  @JsonValue('prompt')
  prompt,
}

extension PromptUseCaseTypeExt on PromptUseCaseType {
  String title(BuildContext context) {
    switch (this) {
      case PromptUseCaseType.about:
        return S.of(context).about_openai;
      case PromptUseCaseType.sectionTopic:
        return S.of(context).sectionTopic_openai;
      case PromptUseCaseType.sectionKeywords:
        return S.of(context).sectionKeywords_openai;
      case PromptUseCaseType.interest:
        return S.of(context).interest_openai;
      case PromptUseCaseType.skills:
        return S.of(context).skills_openai;
      case PromptUseCaseType.jobRole:
        return S.of(context).jobRole_openai;
      case PromptUseCaseType.jobSkills:
        return S.of(context).jobSkills_openai;
      case PromptUseCaseType.prompt:
        return S.of(context).prompt_openai;
    }
  }
}
