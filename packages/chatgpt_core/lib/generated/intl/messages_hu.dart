// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static String m0(limit) =>
      "Az ingyenes verzióban csak ${limit}x képkeresés található.";

  static String m1(limit) =>
      "Legfeljebb ${limit} üzenet jeleníthető meg az ingyenes verzióban.";

  static String m2(date) => "Az előfizetés lejárati dátuma: ${date}";

  static String m3(number) =>
      "Létrehoz (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Ról ről"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Alkalmaz"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("művész"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Megszünteti"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Csevegés részletei"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Csevegés Bottal"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Csevegés"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("Válasszon előadót a képéhez"),
        "chooseDetail_openai":
            MessageLookupByLibrary.simpleMessage("Válassza ki a kép részletét"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("Válasszon médiát a képhez"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Válassza ki a kép hangulatát"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Válasszon használati esetet"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("Válasszon stílust a képhez"),
        "clearConfirm_openai":
            MessageLookupByLibrary.simpleMessage("Biztosan törli a tartalmat?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Tiszta tartalom"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Tiszta beszélgetés"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Egyértelmű"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Biztosan törli ezt az elemet?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Kérjük, erősítse meg, ha folytatni kívánja ennek az elemnek a törlését. Ez a művelet nem vonható vissza."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Biztosan eltávolítja a kulcsot?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("megerősít"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Tartalom a vágólapra másolva"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("másolat"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "A csevegés létrehozása nem sikerült"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("A törlés sikertelen"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Töröl"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Részlet"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Letöltés"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("szerkesztése"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Nem sikerült létrehozni"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("generál"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Rács"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Kép generálása"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("Képméret"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Beviteli kulcs"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Érdeklődés"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Az API-kulcsot helyben tárolja a mobilja, és soha nem küldi el máshová. A kulcsot elmentheti későbbi használatra. A kulcsot is eltávolíthatja, ha már nem kívánja használni."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Hibás kulcs"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Munkakör"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Munkakészségek"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("kinézet stílus"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("Hallgat..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "A kulcs betöltése sikertelen"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("A kulcs betöltése sikeres"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("kezel"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Közepes"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Hangulat"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Több lehetőség"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Új chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Nincs kép generálása"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "A generálandó képek száma. 1 és 10 között kell lennie."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Képek száma"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Opciók"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Oldal"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Kérjük, ellenőrizze a kapcsolatot, és próbálja újra!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Kérem, töltsön ki minden mezőt"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Kérjük, adja meg a kulcsot"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Gyors"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Tedd ide a kulcsodat"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Válasz újragenerálása"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Többi"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "A kulcs eltávolítása nem sikerült"),
        "removeKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "A kulcs sikeresen eltávolítva"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("eltávolít"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage(
            "Beállítások alaphelyzetbe állítása"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Visszaállítás"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "A kulcs mentése nem sikerült"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Kulcs sikeresen elmentve"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Kulcs mentése"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Mentés"),
        "searchByPrompt_openai": MessageLookupByLibrary.simpleMessage(
            "Keresés felszólítás alapján..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Szakasz Kulcsszavak"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Szakasz téma"),
        "selectChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Válassza a Csevegés sikertelen lehetőséget"),
        "selectPrompt_openai": MessageLookupByLibrary.simpleMessage(
            "Válassza a Prompt lehetőséget"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("BEÁLLÍTÁSOK"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Részvény"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("szakértelem"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Valami elromlott!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Valami elromlott! Kérlek, próbáld újra később. Nagyon szépen köszönöm!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("A beszéd nem elérhető"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Stílus"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Koppintson a mikrofonra a beszélgetéshez"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Szöveg generálása"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Szöveggenerátor"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Írjon be egy üzenetet..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("Nézet típusa"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Kilátás"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Ír")
      };
}
