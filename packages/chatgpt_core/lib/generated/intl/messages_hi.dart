// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
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
  String get localeName => 'hi';

  static String m0(limit) => "मुक्त संस्करण में केवल ${limit}x छवि खोज है।";

  static String m1(limit) =>
      " ${limit} तक संदेश केवल निःशुल्क संस्करण में ही प्रदर्शित किए जा सकते हैं।";

  static String m2(date) => "सदस्यता समाप्त दिनांक ${date}";

  static String m3(number) =>
      "जनरेट करें (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("के बारे में"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("लागू करें"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("कलाकार"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("रद्द करना"),
        "chatDetail_openai": MessageLookupByLibrary.simpleMessage("चैट विवरण"),
        "chatGPT_openai":
            MessageLookupByLibrary.simpleMessage("जीपीटी चैट करें"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("बॉट के साथ चैट करें"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("बातचीत"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "अपनी छवि के लिए कलाकार चुनें"),
        "chooseDetail_openai":
            MessageLookupByLibrary.simpleMessage("अपनी छवि के लिए विवरण चुनें"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "अपनी छवि के लिए माध्यम चुनें"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("अपनी छवि के लिए मूड चुनें"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("उपयोग मामला चुनें"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("अपनी छवि के लिए शैली चुनें"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "क्या आप वाकई सामग्री साफ़ करना चाहते हैं?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("सामग्री साफ़ करें"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("स्पष्ट बातचीत"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("स्पष्ट"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "क्या आप वाकई इस आइटम को हटाना चाहते हैं?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "कृपया पुष्टि करें कि क्या आप इस आइटम को हटाने के लिए आगे बढ़ना चाहते हैं। आप इस कार्रवाई को पूर्ववत नहीं कर सकते."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "क्या आप कुंजी को हटाना सुनिश्चित करते हैं?"),
        "confirm_openai":
            MessageLookupByLibrary.simpleMessage("की पुष्टि करें"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "क्लिपबोर्ड पर कॉपी की गई सामग्री"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("प्रतिलिपि"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("चैट बनाना विफल रहा"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("हटाना विफल"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("हटाना"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("विस्तार"),
        "download_openai": MessageLookupByLibrary.simpleMessage("डाउनलोड"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("संपादित करें"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("उत्पन्न करने में विफल"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("उत्पन्न"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("ग्रिड"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("छवि उत्पन्न"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("छवि का आकार"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("इनपुट कुंजी"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("दिलचस्पी"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "आपकी एपीआई कुंजी आपके मोबाइल पर स्थानीय रूप से संग्रहीत होती है और कहीं और कभी नहीं भेजी जाती है। बाद में इसका उपयोग करने के लिए आप अपनी कुंजी सहेज सकते हैं। यदि आप अपनी कुंजी का अब और उपयोग नहीं करना चाहते हैं तो आप उसे निकाल भी सकते हैं।"),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("अमान्य कुंजी"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("नौकरी भूमिका"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("नौकरी कौशल"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("बहरी दिखावा"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("सुनना..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("लोड कुंजी विफल"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("लोड कुंजी सफलता"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("प्रबंधित"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("मध्यम"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("मनोदशा"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("अधिक विकल्प"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("नई चैट"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("कोई छवि उत्पन्न नहीं"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "उत्पन्न करने के लिए छवियों की संख्या। 1 और 10 के बीच होना चाहिए।"),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("छवियों की संख्या"),
        "options_openai": MessageLookupByLibrary.simpleMessage("विकल्प"),
        "page_openai": MessageLookupByLibrary.simpleMessage("पृष्ठ"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "अपने कनेक्शन की जांच करें और पुन: प्रयास करें!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("कृपया सभी स्थानों को भरें"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("कृपया कुंजी दर्ज करें"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("प्रेरित करना"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("अपनी चाबी यहाँ रखो"),
        "regenerateResponse_openai": MessageLookupByLibrary.simpleMessage(
            "प्रतिक्रिया पुन: उत्पन्न करें"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("शेष"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("कुंजी निकालना विफल रहा"),
        "removeKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "कुंजी को सफलतापूर्वक निकाला गया"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("हटाना"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("सेटिंग्स फिर से करिए"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("रीसेट"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("कुंजी सहेजना विफल रहा"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("कुंजी सफलतापूर्वक सहेजी गई"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("कुंजी सहेजें"),
        "save_openai": MessageLookupByLibrary.simpleMessage("बचाना"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("प्रॉम्प्ट द्वारा खोजें..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("अनुभाग कीवर्ड"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("अनुभाग विषय"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("चैट विफल का चयन करें"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("संकेत का चयन करें"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("सेटिंग्स"),
        "share_openai": MessageLookupByLibrary.simpleMessage("शेयर"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("कौशल"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("कुछ गलत हो गया!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "कुछ गलत हो गया! कृपया बाद में पुन: प्रयास करें। आपका बहुत-बहुत धन्यवाद!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("भाषण उपलब्ध नहीं है"),
        "style_openai": MessageLookupByLibrary.simpleMessage("अंदाज"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "बात करने के लिए माइक पर टैप करें"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("टेक्स्ट जनरेट करें"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("टेक्स्ट जेनरेटर"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("एक संदेश लिखें..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("प्रकार देखें"),
        "view_openai": MessageLookupByLibrary.simpleMessage("राय"),
        "write_openai": MessageLookupByLibrary.simpleMessage("लिखना")
      };
}
