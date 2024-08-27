// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static String m0(limit) =>
      "V bezplatné verzi je pouze ${limit}x vyhledávání obrázků.";

  static String m1(limit) =>
      "Až ${limit} zpráv lze zobrazit pouze v bezplatné verzi.";

  static String m2(date) => "Datum vypršení platnosti předplatného ${date}";

  static String m3(number) =>
      "Generovat (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("O"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Aplikovat"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Umělec"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("zrušení"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Podrobnosti chatu"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chatujte s Botem"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Povídat si"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte si umělce pro svůj obrázek"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte detail pro svůj obrázek"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte médium pro svůj obrázek"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte si náladu pro svůj obrázek"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Vyberte případ použití"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Vyberte si styl pro svůj obrázek"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Jste si jisti, že vymažete obsah?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Přehledný obsah"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Jasná konverzace"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Průhledná"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Opravdu chcete tuto položku smazat?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Potvrďte prosím, zda chcete pokračovat ve smazání této položky. Tuto akci nelze vrátit zpět."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Opravdu chcete odstranit klíč?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Potvrdit"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Obsah byl zkopírován do schránky"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("kopírovat"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Vytvoření chatu se nezdařilo"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Smazání se nezdařilo"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Odstranit"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Detail"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Stažení"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Upravit"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generování se nezdařilo"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("generovat"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Mřížka"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generování obrázku"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Velikost obrázku"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("Vstupní klíč"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Zájem"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Váš klíč API je uložen lokálně ve vašem mobilu a nikdy se neposílá nikam jinam. Klíč si můžete uložit a použít jej později. Klíč můžete také odebrat, pokud jej již nechcete používat."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Špatný klíč"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("pracovní pozice"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Pracovní schopnosti"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Styl rozvržení"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Naslouchání..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Klíč načtení se nezdařil"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Klíč načtení byl úspěšný"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Spravovat"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Střední"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Nálada"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Více možností"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Nový chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Negeneruje se žádný obrázek"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Počet obrázků, které se mají vygenerovat. Musí být mezi 1 a 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Počet obrázků"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Možnosti"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Stránka"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Zkontrolujte připojení a zkuste to znovu!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Prosím, vyplňte všechna pole"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Zadejte klíč"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Výzva"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Dejte sem svůj klíč"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Regenerovat odezvu"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("zbývající"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Odebrat klíč se nezdařil"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Klíč byl úspěšně odebrán"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Odstranit"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Resetovat nastavení"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Reset"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Uložit klíč se nezdařilo"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Klíč byl úspěšně uložen"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Uložit klíč"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Uložit"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Hledat podle výzvy..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Klíčová slova sekce"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Téma sekce"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Vyberte Chat se nezdařil"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Vyberte Dotázat se"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("NASTAVENÍ"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Podíl"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("dovedností"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Něco se pokazilo!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Něco se pokazilo! Prosím zkuste to znovu později. Děkuji mnohokrát!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Řeč není k dispozici"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Styl"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Chcete-li mluvit, klepněte na mikrofon"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generování textu"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Textový generátor"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Napište zprávu..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Typ zobrazení"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Pohled"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Napsat")
      };
}
