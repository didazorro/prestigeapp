// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sk locale. All the
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
  String get localeName => 'sk';

  static String m0(limit) =>
      "V bezplatnej verzii existuje iba ${limit}x vyhľadávanie obrázkov.";

  static String m1(limit) =>
      "Až ${limit} správ je možné zobraziť iba v bezplatnej verzii.";

  static String m2(date) => "Dátum vypršania platnosti odberu: ${date}";

  static String m3(number) =>
      "Generovať (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("o"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("platiť"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Umelec"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Zrušiť"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Podrobnosti rozhovoru"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chatujte s Botom"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("rozprávanie"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte si interpreta pre svoj obrázok"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte detail pre svoj obrázok"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte médium pre svoj obrázok"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte si náladu pre svoj obrázok"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Vyberte prípad použitia"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte si štýl pre svoj obrázok"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Naozaj chcete vymazať obsah?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Prehľadný obsah"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Jasná konverzácia"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("jasný"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Naozaj chcete odstrániť túto položku?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Potvrďte, či chcete pokračovať v odstraňovaní tejto položky. Túto akciu nemôžete vrátiť späť."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Naozaj chcete odstrániť kľúč?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("potvrdiť"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Obsah bol skopírovaný do schránky"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("kópie"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Vytvorenie četu zlyhalo"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Odstránenie zlyhalo"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("vymazať"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("detail"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Stiahnuť ▼"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("editovať"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Nepodarilo sa vygenerovať"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("generovať"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("mriežka"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generovať obrázok"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Veľkosť obrazu"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("Vstupný kľúč"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Úrok"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Váš kľúč API je uložený lokálne vo vašom mobile a nikdy sa neposiela nikam inam. Kľúč si môžete uložiť a použiť ho neskôr. Kľúč môžete tiež odstrániť, ak ho už nechcete používať."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Neplatný kľúč"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("Pracovná úloha"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Pracovné schopnosti"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("štýl rozloženia"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Počúvanie..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Načítať kľúč zlyhal"),
        "loadKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Načítanie kľúča bolo úspešné"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Spravovať"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("stredná"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Nálada"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Viac možností"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Nový chat"),
        "noImageGenerate_openai": MessageLookupByLibrary.simpleMessage(
            "Negeneruje sa žiadny obrázok"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Počet obrázkov, ktoré sa majú vygenerovať. Musí byť medzi 1 a 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Počet obrázkov"),
        "options_openai": MessageLookupByLibrary.simpleMessage("možnosti"),
        "page_openai": MessageLookupByLibrary.simpleMessage("strana"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Skontrolujte pripojenie a skúste to znova!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("Vyplňte prosím všetky polia"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Zadajte kľúč"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("prompt"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Sem vložte kľúč"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Regenerovať odozvu"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("zostávajúce"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Odstránenie kľúča zlyhalo"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Kľúč bol úspešne odstránený"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Odstrániť"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Obnoviť nastavenia"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("resetovať"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Uloženie kľúča zlyhalo"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Kľúč bol úspešne uložený"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Uložiť kľúč"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Ulozit"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Hľadať podľa výzvy..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Sekcia Kľúčové slová"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Téma sekcie"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Vyberte možnosť Chat zlyhal"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Vyberte položku Výzva"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("nastavenie"),
        "share_openai": MessageLookupByLibrary.simpleMessage("zdieľam"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Zručnosti"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Niečo sa pokazilo!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Niečo sa pokazilo! Skúste neskôr prosím. Ďakujem ti veľmi pekne!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Reč nie je k dispozícii"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Štýl"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Hovorte klepnutím na mikrofón"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generovanie textu"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Textový generátor"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Napíšte správu..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Typ zobrazenia"),
        "view_openai": MessageLookupByLibrary.simpleMessage("vyhliadka"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Napíšte")
      };
}
