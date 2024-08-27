// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(limit) =>
      "There is only ${limit}x image search in the free version.";

  static String m1(limit) =>
      "Up to ${limit} messages can only be displayed in the free version.";

  static String m2(date) => "Subscription expired date ${date}";

  static String m3(number) =>
      "Generate (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("About"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Apply"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Artist"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Cancel"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Chat Detail"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("ChatGPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chat with Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Chat"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Choose artist for your image"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Choose detail for your image"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Choose medium for your image"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("Choose mood for your image"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Choose use case"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("Choose style for your image"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Are you sure to clear content?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Clear content"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Clear conversation"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Clear"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Are you sure you wish to delete this item?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Please confirm if you wish to proceed with the deletion of this item. You can\'t undo this action."),
        "confirmRemoveKey_openai":
            MessageLookupByLibrary.simpleMessage("Are you sure to remove key?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Confirm"),
        "copiedToClipboard_openai":
            MessageLookupByLibrary.simpleMessage("Copied content to clipboard"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Copy"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Create Chat Failed"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Delete Failed"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Delete"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Detail"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Download"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Edit"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Failed to generate"),
        "failedToSendMessage_openai":
            MessageLookupByLibrary.simpleMessage("Failed to send message"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Generate"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Grid"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Image generate"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("Image size"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("Input Key"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Interest"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Your API Key is stored locally on your mobile and never sent anywhere else. You can save your key to use it later. You can also remove your key if you don\'t want to use it anymore."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Invalid Key"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Job Role"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("Job Skills"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Layout Style"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Listening..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Load Key Failed"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Load Key Success"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Manage"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Medium"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Mood"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("More options"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("New Chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("No image generate"),
        "none_openai": MessageLookupByLibrary.simpleMessage("None"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "The number of images to generate. Must be between 1 and 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Number of images"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Options"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Page"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Please check your connection and try again!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("Please fill in all fields"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Please input key"),
        "pleaseInputValue_openai":
            MessageLookupByLibrary.simpleMessage("Please input value"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Prompt"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Put your key here"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Regenerate response"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("remaining"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Remove Key Failed"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Removed Key Successfully"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Remove"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Reset Settings"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Reset"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Save Key Failed"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Saved Key Successfully"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Save Key"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Save"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Search by Prompt..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Section Keywords"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Section Topic"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Select Chat Failed"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Select Prompt"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Share"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Skills"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Something went wrong!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Something went wrong! Please try again later. Thank you so much!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Speech not available"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Style"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("Tap the mic to talk"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Text generate"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Text Generator"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Type a message..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("View type"),
        "view_openai": MessageLookupByLibrary.simpleMessage("View"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Write")
      };
}
