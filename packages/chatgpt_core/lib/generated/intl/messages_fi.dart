// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fi locale. All the
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
  String get localeName => 'fi';

  static String m0(limit) => "Ilmaisessa versiossa on vain ${limit}x kuvahaku.";

  static String m1(limit) =>
      "Enintään ${limit} viestiä voidaan näyttää vain ilmaisessa versiossa.";

  static String m2(date) => "Tilauksen päättymispäivä ${date}";

  static String m3(number) =>
      "Luo (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Noin"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Käytä"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Taiteilija"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Peruuttaa"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Keskustelun yksityiskohdat"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Keskustele Botin kanssa"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("jutella"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Valitse kuvallesi taiteilija"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Valitse kuvasi yksityiskohdat"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("Valitse väline kuvallesi"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("Valitse kuvallesi tunnelma"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Valitse käyttötapaus"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("Valitse kuvallesi tyyli"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Oletko varma, että tyhjennät sisällön?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Selkeä sisältö"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Selkeä keskustelu"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Asia selvä"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Haluatko varmasti poistaa tämän kohteen?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Vahvista, jos haluat jatkaa tämän kohteen poistamista. Tätä toimintoa ei voi kumota."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Oletko varma, että poistat avaimen?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Vahvistaa"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Sisältö kopioitu leikepöydälle"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("kopio"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Chatin luominen epäonnistui"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Poista epäonnistui"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Poistaa"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Yksityiskohta"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Ladata"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("muokata"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Luominen epäonnistui"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Tuottaa"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("ruudukko"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Kuvan luominen"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("Kuvan koko"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("Syöttöavain"),
        "interest_openai":
            MessageLookupByLibrary.simpleMessage("Kiinnostuksen kohde"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "API-avaimesi tallennetaan paikallisesti matkapuhelimeesi, eikä sitä koskaan lähetetä minnekään muualle. Voit tallentaa avaimesi käyttääksesi sitä myöhemmin. Voit myös poistaa avaimen, jos et halua käyttää sitä enää."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Virheellinen avain"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Työ rooli"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("Työtaidot"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Asettelutyyli"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Kuuntelee..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Avaimen lataus epäonnistui"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Avaimen lataus onnistui"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("hoitaa"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("keskikokoinen"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Mieliala"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Lisää vaihtoehtoja"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Uusi Chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Ei kuvan luomista"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Luotavien kuvien määrä. On oltava välillä 1–10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Kuvien määrä"),
        "options_openai": MessageLookupByLibrary.simpleMessage("vaihtoehdot"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Sivu"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Tarkista yhteys ja yritä uudelleen!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("Täytä kaikki kentät"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Ole hyvä ja syötä avain"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("nopea"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Laita avaimesi tähän"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Luo vastaus uudelleen"),
        "remaining_openai":
            MessageLookupByLibrary.simpleMessage("Jäljelle jäänyt"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Avaimen poisto epäonnistui"),
        "removeKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Avain poistettu onnistuneesti"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Poistaa"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Palauta asetukset"),
        "reset_openai":
            MessageLookupByLibrary.simpleMessage("asettaa uudelleen"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Tallennusavain epäonnistui"),
        "saveKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Avain tallennettu onnistuneesti"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("Tallenna avain"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Tallentaa"),
        "searchByPrompt_openai": MessageLookupByLibrary.simpleMessage(
            "Hae kehotteen perusteella..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Osion Avainsanat"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Osion aihe"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Valitse Chat Failed"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Valitse Kehote"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("asetukset"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Jaa"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Taidot"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Jotain meni pieleen!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Jotain meni pieleen! Yritä uudelleen myöhemmin. Kiitos paljon!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Puhe ei ole käytettävissä"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Tyyli"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Napauta mikrofonia puhuaksesi"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Tekstin luominen"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Tekstigeneraattori"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Kirjoita viesti ..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Näkymän tyyppi"),
        "view_openai": MessageLookupByLibrary.simpleMessage("näkymä"),
        "write_openai": MessageLookupByLibrary.simpleMessage("kirjoittaa")
      };
}
