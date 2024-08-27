// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a da locale. All the
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
  String get localeName => 'da';

  static String m0(limit) =>
      "Der er kun ${limit}x billedsøgning i den gratis version.";

  static String m1(limit) =>
      "Op til ${limit} beskeder kan kun vises i den gratis version.";

  static String m2(date) => "Abonnementets udløbsdato ${date}";

  static String m3(number) =>
      "Generer (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Om"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("ansøge"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Kunstner"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("afbestille"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Chat detaljer"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chat med Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Snak"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Vælg kunstner til dit billede"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Vælg detalje til dit billede"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("Vælg medium til dit billede"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Vælg stemning til dit billede"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Vælg use case"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("Vælg stil til dit billede"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at rydde indhold?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Ryd indhold"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Klar samtale"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Klar"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på, at du vil slette dette element?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Bekræft venligst, om du ønsker at fortsætte med sletningen af dette element. Du kan ikke fortryde denne handling."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil fjerne nøglen?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("bekræfte"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Kopieret indhold til udklipsholder"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Kopi"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Opret chat mislykkedes"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Slet mislykkedes"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Slet"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Detalje"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Hent"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Redigere"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Kunne ikke generere"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Frembringe"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Grid"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generer billede"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Billedestørrelse"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Indtastningstast"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Interesse"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Din API-nøgle gemmes lokalt på din mobil og sendes aldrig andre steder. Du kan gemme din nøgle for at bruge den senere. Du kan også fjerne din nøgle, hvis du ikke ønsker at bruge den mere."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Ugyldig nøgle"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Jobrolle"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Arbejdsevner"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("layout stil"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Hører efter..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Indlæsningsnøglen mislykkedes"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Indlæs nøgle succes"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Styre"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Medium"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Humør"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Flere muligheder"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Ny chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Intet billede genereres"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Antallet af billeder, der skal genereres. Skal være mellem 1 og 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Antal billeder"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Muligheder"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Side"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Tjek venligst din forbindelse og prøv igen!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("Udfyld venligst alle felter"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Indtast venligst nøgle"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Hurtig"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Læg din nøgle her"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Gendan respons"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Resterende"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Fjern nøgle mislykkedes"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Fjernet nøgle med succes"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Fjerne"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Nulstil indstillingerne"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Nulstil"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Gem nøgle mislykkedes"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Nøglen er gemt"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Gem nøgle"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Gemme"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Søg efter prompt..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Sektion Nøgleord"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Afsnit Emne"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Vælg Chat mislykkedes"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Vælg Spørg"),
        "settings_openai":
            MessageLookupByLibrary.simpleMessage("INDSTILLINGER"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Del"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Skills"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Noget gik galt!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Noget gik galt! Prøv igen senere. Mange tak!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Tale ikke tilgængelig"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Stil"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Tryk på mikrofonen for at tale"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generer tekst"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Tekstgenerator"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Skriv en meddelelse ..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("Visningstype"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Udsigt"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Skrive")
      };
}
