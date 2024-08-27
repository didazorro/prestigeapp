// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sv locale. All the
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
  String get localeName => 'sv';

  static String m0(limit) =>
      "Det finns bara ${limit}x bildsökning i gratisversionen.";

  static String m1(limit) =>
      "Upp till ${limit} meddelanden kan endast visas i gratisversionen.";

  static String m2(date) => "Prenumerationens utgångsdatum ${date}";

  static String m3(number) =>
      "Generera (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Handla om"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Tillämpa"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Konstnär"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Annullera"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Chattdetaljer"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chatta GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chatta med Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Chatt"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("Välj artist för din bild"),
        "chooseDetail_openai":
            MessageLookupByLibrary.simpleMessage("Välj detalj för din bild"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("Välj medium för din bild"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("Välj humör för din bild"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Välj användningsfall"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("Välj stil för din bild"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att rensa innehåll?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Tydligt innehåll"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Tydlig konversation"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Klar"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill ta bort det här objektet?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Vänligen bekräfta om du vill fortsätta med raderingen av detta objekt. Du kan inte ångra den här åtgärden."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att ta bort nyckeln?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Bekräfta"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Kopierat innehåll till urklipp"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Kopia"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att skapa chatt"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Radering misslyckades"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Radera"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Detalj"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Ladda ner"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Redigera"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Det gick inte att generera"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Generera"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Rutnät"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Bild generera"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("Bildstorlek"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Inmatningsnyckel"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Intressera"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Din API-nyckel lagras lokalt på din mobil och skickas aldrig någon annanstans. Du kan spara din nyckel för att använda den senare. Du kan också ta bort din nyckel om du inte vill använda den längre."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Ogiltig nyckel"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Arbetsroll"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Arbetserfarenheter"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Layoutstil"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Lyssnande..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Ladda nyckel misslyckades"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Ladda nyckel framgång"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Hantera"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Medium"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("humör"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Fler alternativ"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Ny chatt"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Ingen bild genereras"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Antalet bilder som ska genereras. Måste vara mellan 1 och 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Antal bilder"),
        "options_openai": MessageLookupByLibrary.simpleMessage("alternativ"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Sida"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Kontrollera din anslutning och försök igen!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("Var god fyll i alla fält"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Vänligen ange nyckel"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Prompt"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Lägg din nyckel här"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Återskapa svar"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Återstående"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att ta bort nyckel"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Nyckeln har tagits bort"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Ta bort"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Återställ inställningar"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Återställa"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Spara nyckel misslyckades"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Nyckeln har sparats"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Spara nyckel"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Spara"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Sök efter uppmaning..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Sektionssökord"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Avsnittsämne"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Välj Chatt misslyckades"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Välj Fråga"),
        "settings_openai":
            MessageLookupByLibrary.simpleMessage("Inställningar"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Dela med sig"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Kompetens"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Något gick fel!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Något gick fel! Vänligen försök igen senare. Tack så mycket!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Tal inte tillgängligt"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Stil"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Tryck på mikrofonen för att prata"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Text genererar"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Textgenerator"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Skriv ett meddelande..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("Visa typ"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Se"),
        "write_openai": MessageLookupByLibrary.simpleMessage("skriva")
      };
}
