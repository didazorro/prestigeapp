// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sw locale. All the
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
  String get localeName => 'sw';

  static String m0(limit) =>
      "Kuna utafutaji wa picha wa x ${limit}pekee katika toleo lisilolipishwa.";

  static String m1(limit) =>
      "Hadi jumbe ${limit} zinaweza kuonyeshwa katika toleo lisilolipishwa pekee.";

  static String m2(date) => "Tarehe ya mwisho ya usajili ${date}";

  static String m3(number) =>
      "Tengeneza (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Kuhusu"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Omba"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Msanii"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Ghairi"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Maelezo ya Gumzo"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Gumzo la GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Piga gumzo na Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Ongea"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Chagua msanii kwa picha yako"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Chagua maelezo ya picha yako"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("Chagua kati kwa picha yako"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("Chagua hali ya picha yako"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Chagua kesi ya matumizi"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Chagua mtindo kwa picha yako"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Je, una uhakika wa kufuta maudhui?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Futa maudhui"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Mazungumzo wazi"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Wazi"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Je, una uhakika ungependa kufuta kipengee hiki?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Tafadhali thibitisha ikiwa ungependa kuendelea na kufuta kipengee hiki. Huwezi kutendua kitendo hiki."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Je, una uhakika wa kuondoa ufunguo?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Thibitisha"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Imenakili maudhui kwenye ubao wa kunakili"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Nakala"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Imeshindwa Kuunda Gumzo"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Imeshindwa Kufuta"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Futa"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Maelezo"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Pakua"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Hariri"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Imeshindwa kuzalisha"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Tengeneza"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Gridi"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Tengeneza picha"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Ukubwa wa picha"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Ufunguo wa Kuingiza"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("hamu"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Ufunguo wako wa API umehifadhiwa kwenye kifaa chako cha mkononi na haujatumwa popote pengine. Unaweza kuhifadhi ufunguo wako ili kuutumia baadaye. Unaweza pia kuondoa ufunguo wako ikiwa hutaki kuutumia tena."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Ufunguo Batili"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("Jukumu la Kazi"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Ujuzi wa Kazi"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Mtindo wa Mpangilio"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Inasikiliza..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Ufunguo wa Kupakia Umeshindwa"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Kupakia Ufunguo Mafanikio"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Simamia"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Ya kati"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Mood"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Chaguo zaidi"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Gumzo Mpya"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Hakuna picha inayozalisha"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Idadi ya picha za kutengeneza. Lazima iwe kati ya 1 na 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Idadi ya picha"),
        "options_openai": MessageLookupByLibrary.simpleMessage("chaguzi"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Ukurasa"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Tafadhali angalia muunganisho wako na ujaribu tena!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("Tafadhali jaza sehemu zote"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Tafadhali ingiza ufunguo"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("haraka"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Weka ufunguo wako hapa"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Tengeneza jibu upya"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("iliyobaki"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Kuondoa Ufunguo Imeshindwa"),
        "removeKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Ufunguo Umeondolewa Umefaulu"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Ondoa"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Weka upya Mipangilio"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Rudisha"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Imeshindwa Kuhifadhi Ufunguo"),
        "saveKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Ufunguo Umehifadhiwa Umefaulu"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("Hifadhi Ufunguo"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Okoa"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Tafuta kwa Prompt..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Maneno muhimu ya Sehemu"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Mada ya Sehemu"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Chagua Gumzo Imeshindwa"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Chagua Prompt"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Mipangilio"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Shiriki"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Ujuzi"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Kuna kitu kimeharibika!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Hitilafu fulani imetokea! Tafadhali jaribu tena baadae. Asante sana!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Hotuba haipatikani"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Mtindo"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Gusa maikrofoni ili kuzungumza"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Tengeneza maandishi"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Jenereta ya maandishi"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Andika ujumbe..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Aina ya kutazama"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Tazama"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Andika")
      };
}
