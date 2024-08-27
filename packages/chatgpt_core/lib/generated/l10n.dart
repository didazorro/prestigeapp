// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Share`
  String get share_openai {
    return Intl.message(
      'Share',
      name: 'share_openai',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download_openai {
    return Intl.message(
      'Download',
      name: 'download_openai',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel_openai {
    return Intl.message(
      'Cancel',
      name: 'cancel_openai',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm_openai {
    return Intl.message(
      'Confirm',
      name: 'confirm_openai',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm if you wish to proceed with the deletion of this item. You can't undo this action.`
  String get confirmDelete_openai {
    return Intl.message(
      'Please confirm if you wish to proceed with the deletion of this item. You can\'t undo this action.',
      name: 'confirmDelete_openai',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you wish to delete this item?`
  String get confirmDeleteItem_openai {
    return Intl.message(
      'Are you sure you wish to delete this item?',
      name: 'confirmDeleteItem_openai',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat_openai {
    return Intl.message(
      'Chat',
      name: 'chat_openai',
      desc: '',
      args: [],
    );
  }

  /// `Regenerate response`
  String get regenerateResponse_openai {
    return Intl.message(
      'Regenerate response',
      name: 'regenerateResponse_openai',
      desc: '',
      args: [],
    );
  }

  /// `Clear conversation`
  String get clearConversation_openai {
    return Intl.message(
      'Clear conversation',
      name: 'clearConversation_openai',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy_openai {
    return Intl.message(
      'Copy',
      name: 'copy_openai',
      desc: '',
      args: [],
    );
  }

  /// `Copied content to clipboard`
  String get copiedToClipboard_openai {
    return Intl.message(
      'Copied content to clipboard',
      name: 'copiedToClipboard_openai',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete_openai {
    return Intl.message(
      'Delete',
      name: 'delete_openai',
      desc: '',
      args: [],
    );
  }

  /// `Listening...`
  String get listening_openai {
    return Intl.message(
      'Listening...',
      name: 'listening_openai',
      desc: '',
      args: [],
    );
  }

  /// `Type a message...`
  String get typeAMessage_openai {
    return Intl.message(
      'Type a message...',
      name: 'typeAMessage_openai',
      desc: '',
      args: [],
    );
  }

  /// `Speech not available`
  String get speechNotAvailable_openai {
    return Intl.message(
      'Speech not available',
      name: 'speechNotAvailable_openai',
      desc: '',
      args: [],
    );
  }

  /// `Tap the mic to talk`
  String get tapTheMicToTalk_openai {
    return Intl.message(
      'Tap the mic to talk',
      name: 'tapTheMicToTalk_openai',
      desc: '',
      args: [],
    );
  }

  /// `Chat with Bot`
  String get chatWithBot_openai {
    return Intl.message(
      'Chat with Bot',
      name: 'chatWithBot_openai',
      desc: '',
      args: [],
    );
  }

  /// `Image generate`
  String get imageGenerate_openai {
    return Intl.message(
      'Image generate',
      name: 'imageGenerate_openai',
      desc: '',
      args: [],
    );
  }

  /// `Text generate`
  String get textGenerate_openai {
    return Intl.message(
      'Text generate',
      name: 'textGenerate_openai',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options_openai {
    return Intl.message(
      'Options',
      name: 'options_openai',
      desc: '',
      args: [],
    );
  }

  /// `Image size`
  String get imageSize_openai {
    return Intl.message(
      'Image size',
      name: 'imageSize_openai',
      desc: '',
      args: [],
    );
  }

  /// `View type`
  String get viewType_openai {
    return Intl.message(
      'View type',
      name: 'viewType_openai',
      desc: '',
      args: [],
    );
  }

  /// `No image generate`
  String get noImageGenerate_openai {
    return Intl.message(
      'No image generate',
      name: 'noImageGenerate_openai',
      desc: '',
      args: [],
    );
  }

  /// `More options`
  String get moreOptions_openai {
    return Intl.message(
      'More options',
      name: 'moreOptions_openai',
      desc: '',
      args: [],
    );
  }

  /// `Generate`
  String get generate_openai {
    return Intl.message(
      'Generate',
      name: 'generate_openai',
      desc: '',
      args: [],
    );
  }

  /// `Up to {limit} messages can only be displayed in the free version.`
  String limitTheText_openai(Object limit) {
    return Intl.message(
      'Up to $limit messages can only be displayed in the free version.',
      name: 'limitTheText_openai',
      desc: '',
      args: [limit],
    );
  }

  /// `There is only {limit}x image search in the free version.`
  String limitImage_openai(Object limit) {
    return Intl.message(
      'There is only ${limit}x image search in the free version.',
      name: 'limitImage_openai',
      desc: '',
      args: [limit],
    );
  }

  /// `Something went wrong! Please try again later. Thank you so much!`
  String get somethingWhenWrong_openai {
    return Intl.message(
      'Something went wrong! Please try again later. Thank you so much!',
      name: 'somethingWhenWrong_openai',
      desc: '',
      args: [],
    );
  }

  /// `Page`
  String get page_openai {
    return Intl.message(
      'Page',
      name: 'page_openai',
      desc: '',
      args: [],
    );
  }

  /// `Grid`
  String get grid_openai {
    return Intl.message(
      'Grid',
      name: 'grid_openai',
      desc: '',
      args: [],
    );
  }

  /// `Number of images`
  String get numberOfImages_openai {
    return Intl.message(
      'Number of images',
      name: 'numberOfImages_openai',
      desc: '',
      args: [],
    );
  }

  /// `The number of images to generate. Must be between 1 and 10.`
  String get numberOfImagesCondition_openai {
    return Intl.message(
      'The number of images to generate. Must be between 1 and 10.',
      name: 'numberOfImagesCondition_openai',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all fields`
  String get pleaseInputFillAllFields_openai {
    return Intl.message(
      'Please fill in all fields',
      name: 'pleaseInputFillAllFields_openai',
      desc: '',
      args: [],
    );
  }

  /// `Failed to generate`
  String get failedToGenerate_openai {
    return Intl.message(
      'Failed to generate',
      name: 'failedToGenerate_openai',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear_openai {
    return Intl.message(
      'Clear',
      name: 'clear_openai',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit_openai {
    return Intl.message(
      'Edit',
      name: 'edit_openai',
      desc: '',
      args: [],
    );
  }

  /// `Please check your connection and try again!`
  String get pleaseCheckConnection_openai {
    return Intl.message(
      'Please check your connection and try again!',
      name: 'pleaseCheckConnection_openai',
      desc: '',
      args: [],
    );
  }

  /// `Clear content`
  String get clearContent_openai {
    return Intl.message(
      'Clear content',
      name: 'clearContent_openai',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to clear content?`
  String get clearConfirm_openai {
    return Intl.message(
      'Are you sure to clear content?',
      name: 'clearConfirm_openai',
      desc: '',
      args: [],
    );
  }

  /// `Choose use case`
  String get chooseUseCase_openai {
    return Intl.message(
      'Choose use case',
      name: 'chooseUseCase_openai',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view_openai {
    return Intl.message(
      'View',
      name: 'view_openai',
      desc: '',
      args: [],
    );
  }

  /// `Write`
  String get write_openai {
    return Intl.message(
      'Write',
      name: 'write_openai',
      desc: '',
      args: [],
    );
  }

  /// `Style`
  String get style_openai {
    return Intl.message(
      'Style',
      name: 'style_openai',
      desc: '',
      args: [],
    );
  }

  /// `Choose style for your image`
  String get choseStyle_openai {
    return Intl.message(
      'Choose style for your image',
      name: 'choseStyle_openai',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get medium_openai {
    return Intl.message(
      'Medium',
      name: 'medium_openai',
      desc: '',
      args: [],
    );
  }

  /// `Choose medium for your image`
  String get chooseMedium_openai {
    return Intl.message(
      'Choose medium for your image',
      name: 'chooseMedium_openai',
      desc: '',
      args: [],
    );
  }

  /// `Mood`
  String get mood_openai {
    return Intl.message(
      'Mood',
      name: 'mood_openai',
      desc: '',
      args: [],
    );
  }

  /// `Choose mood for your image`
  String get chooseMood_openai {
    return Intl.message(
      'Choose mood for your image',
      name: 'chooseMood_openai',
      desc: '',
      args: [],
    );
  }

  /// `Artist`
  String get artist_openai {
    return Intl.message(
      'Artist',
      name: 'artist_openai',
      desc: '',
      args: [],
    );
  }

  /// `Choose artist for your image`
  String get chooseArtist_openai {
    return Intl.message(
      'Choose artist for your image',
      name: 'chooseArtist_openai',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get detail_openai {
    return Intl.message(
      'Detail',
      name: 'detail_openai',
      desc: '',
      args: [],
    );
  }

  /// `Choose detail for your image`
  String get chooseDetail_openai {
    return Intl.message(
      'Choose detail for your image',
      name: 'chooseDetail_openai',
      desc: '',
      args: [],
    );
  }

  /// `Reset Settings`
  String get resetSettings_openai {
    return Intl.message(
      'Reset Settings',
      name: 'resetSettings_openai',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply_openai {
    return Intl.message(
      'Apply',
      name: 'apply_openai',
      desc: '',
      args: [],
    );
  }

  /// `Search by Prompt...`
  String get searchByPrompt_openai {
    return Intl.message(
      'Search by Prompt...',
      name: 'searchByPrompt_openai',
      desc: '',
      args: [],
    );
  }

  /// `New Chat`
  String get newChat_openai {
    return Intl.message(
      'New Chat',
      name: 'newChat_openai',
      desc: '',
      args: [],
    );
  }

  /// `Layout Style`
  String get layoutStyle_openai {
    return Intl.message(
      'Layout Style',
      name: 'layoutStyle_openai',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset_openai {
    return Intl.message(
      'Reset',
      name: 'reset_openai',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_openai {
    return Intl.message(
      'Settings',
      name: 'settings_openai',
      desc: '',
      args: [],
    );
  }

  /// `Text Generator`
  String get textGenerator_openai {
    return Intl.message(
      'Text Generator',
      name: 'textGenerator_openai',
      desc: '',
      args: [],
    );
  }

  /// `Chat Detail`
  String get chatDetail_openai {
    return Intl.message(
      'Chat Detail',
      name: 'chatDetail_openai',
      desc: '',
      args: [],
    );
  }

  /// `Delete Failed`
  String get deleteFailed_openai {
    return Intl.message(
      'Delete Failed',
      name: 'deleteFailed_openai',
      desc: '',
      args: [],
    );
  }

  /// `Select Prompt`
  String get selectPrompt_openai {
    return Intl.message(
      'Select Prompt',
      name: 'selectPrompt_openai',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about_openai {
    return Intl.message(
      'About',
      name: 'about_openai',
      desc: '',
      args: [],
    );
  }

  /// `Section Topic`
  String get sectionTopic_openai {
    return Intl.message(
      'Section Topic',
      name: 'sectionTopic_openai',
      desc: '',
      args: [],
    );
  }

  /// `Section Keywords`
  String get sectionKeywords_openai {
    return Intl.message(
      'Section Keywords',
      name: 'sectionKeywords_openai',
      desc: '',
      args: [],
    );
  }

  /// `Interest`
  String get interest_openai {
    return Intl.message(
      'Interest',
      name: 'interest_openai',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills_openai {
    return Intl.message(
      'Skills',
      name: 'skills_openai',
      desc: '',
      args: [],
    );
  }

  /// `Job Role`
  String get jobRole_openai {
    return Intl.message(
      'Job Role',
      name: 'jobRole_openai',
      desc: '',
      args: [],
    );
  }

  /// `Job Skills`
  String get jobSkills_openai {
    return Intl.message(
      'Job Skills',
      name: 'jobSkills_openai',
      desc: '',
      args: [],
    );
  }

  /// `Prompt`
  String get prompt_openai {
    return Intl.message(
      'Prompt',
      name: 'prompt_openai',
      desc: '',
      args: [],
    );
  }

  /// `ChatGPT`
  String get chatGPT_openai {
    return Intl.message(
      'ChatGPT',
      name: 'chatGPT_openai',
      desc: '',
      args: [],
    );
  }

  /// `Create Chat Failed`
  String get createChatFailed_openai {
    return Intl.message(
      'Create Chat Failed',
      name: 'createChatFailed_openai',
      desc: '',
      args: [],
    );
  }

  /// `Select Chat Failed`
  String get selectChatFailed_openai {
    return Intl.message(
      'Select Chat Failed',
      name: 'selectChatFailed_openai',
      desc: '',
      args: [],
    );
  }

  /// `Save Key Failed`
  String get saveKeyFailed_openai {
    return Intl.message(
      'Save Key Failed',
      name: 'saveKeyFailed_openai',
      desc: '',
      args: [],
    );
  }

  /// `Saved Key Successfully`
  String get saveKeySuccess_openai {
    return Intl.message(
      'Saved Key Successfully',
      name: 'saveKeySuccess_openai',
      desc: '',
      args: [],
    );
  }

  /// `Save Key`
  String get saveKey_openai {
    return Intl.message(
      'Save Key',
      name: 'saveKey_openai',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Key`
  String get invalidKey_openai {
    return Intl.message(
      'Invalid Key',
      name: 'invalidKey_openai',
      desc: '',
      args: [],
    );
  }

  /// `Load Key Failed`
  String get loadKeyFailed_openai {
    return Intl.message(
      'Load Key Failed',
      name: 'loadKeyFailed_openai',
      desc: '',
      args: [],
    );
  }

  /// `Load Key Success`
  String get loadKeySuccess_openai {
    return Intl.message(
      'Load Key Success',
      name: 'loadKeySuccess_openai',
      desc: '',
      args: [],
    );
  }

  /// `Remove Key Failed`
  String get removeKeyFailed_openai {
    return Intl.message(
      'Remove Key Failed',
      name: 'removeKeyFailed_openai',
      desc: '',
      args: [],
    );
  }

  /// `Removed Key Successfully`
  String get removeKeySuccess_openai {
    return Intl.message(
      'Removed Key Successfully',
      name: 'removeKeySuccess_openai',
      desc: '',
      args: [],
    );
  }

  /// `Please input key`
  String get pleaseInputKey_openai {
    return Intl.message(
      'Please input key',
      name: 'pleaseInputKey_openai',
      desc: '',
      args: [],
    );
  }

  /// `Input Key`
  String get inputKey_openai {
    return Intl.message(
      'Input Key',
      name: 'inputKey_openai',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save_openai {
    return Intl.message(
      'Save',
      name: 'save_openai',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove_openai {
    return Intl.message(
      'Remove',
      name: 'remove_openai',
      desc: '',
      args: [],
    );
  }

  /// `Put your key here`
  String get putKeyHere_openai {
    return Intl.message(
      'Put your key here',
      name: 'putKeyHere_openai',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong!!!`
  String get somethingWentWrong_openai {
    return Intl.message(
      'Something went wrong!!!',
      name: 'somethingWentWrong_openai',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to remove key?`
  String get confirmRemoveKey_openai {
    return Intl.message(
      'Are you sure to remove key?',
      name: 'confirmRemoveKey_openai',
      desc: '',
      args: [],
    );
  }

  /// `Your API Key is stored locally on your mobile and never sent anywhere else. You can save your key to use it later. You can also remove your key if you don't want to use it anymore.`
  String get introAboutKey_openai {
    return Intl.message(
      'Your API Key is stored locally on your mobile and never sent anywhere else. You can save your key to use it later. You can also remove your key if you don\'t want to use it anymore.',
      name: 'introAboutKey_openai',
      desc: '',
      args: [],
    );
  }

  /// `Generate ({number} {number, plural, =1 {time} other {times}})`
  String timeGenerate_openai(num number) {
    return Intl.message(
      'Generate ($number ${Intl.plural(number, one: 'time', other: 'times')})',
      name: 'timeGenerate_openai',
      desc: '',
      args: [number],
    );
  }

  /// `Subscription expired date {date}`
  String subscriptionExpiredDate_openai(Object date) {
    return Intl.message(
      'Subscription expired date $date',
      name: 'subscriptionExpiredDate_openai',
      desc: '',
      args: [date],
    );
  }

  /// `Manage`
  String get manage_openai {
    return Intl.message(
      'Manage',
      name: 'manage_openai',
      desc: '',
      args: [],
    );
  }

  /// `remaining`
  String get remaining_openai {
    return Intl.message(
      'remaining',
      name: 'remaining_openai',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send message`
  String get failedToSendMessage_openai {
    return Intl.message(
      'Failed to send message',
      name: 'failedToSendMessage_openai',
      desc: '',
      args: [],
    );
  }

  /// `Please input value`
  String get pleaseInputValue_openai {
    return Intl.message(
      'Please input value',
      name: 'pleaseInputValue_openai',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none_openai {
    return Intl.message(
      'None',
      name: 'none_openai',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'az'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'bs'),
      Locale.fromSubtags(languageCode: 'cs'),
      Locale.fromSubtags(languageCode: 'da'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'el'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'fi'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'he'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'hu'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'kk'),
      Locale.fromSubtags(languageCode: 'km'),
      Locale.fromSubtags(languageCode: 'kn'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'ku'),
      Locale.fromSubtags(languageCode: 'lo'),
      Locale.fromSubtags(languageCode: 'lt'),
      Locale.fromSubtags(languageCode: 'mr'),
      Locale.fromSubtags(languageCode: 'ms'),
      Locale.fromSubtags(languageCode: 'my'),
      Locale.fromSubtags(languageCode: 'nl'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'PT'),
      Locale.fromSubtags(languageCode: 'ro'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'sk'),
      Locale.fromSubtags(languageCode: 'sq'),
      Locale.fromSubtags(languageCode: 'sr'),
      Locale.fromSubtags(languageCode: 'sv'),
      Locale.fromSubtags(languageCode: 'sw'),
      Locale.fromSubtags(languageCode: 'ta'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'ti'),
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'ur'),
      Locale.fromSubtags(languageCode: 'uz'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
