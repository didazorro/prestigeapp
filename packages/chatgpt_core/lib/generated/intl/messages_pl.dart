// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(limit) =>
      "W darmowej wersji dostępne jest tylko ${limit}x wyszukiwanie grafiki.";

  static String m1(limit) =>
      "Tylko w bezpłatnej wersji można wyświetlić maksymalnie ${limit} wiadomości.";

  static String m2(date) => "Data wygaśnięcia subskrypcji ${date}";

  static String m3(number) =>
      "Wygeneruj (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("O"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Zastosować"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Artysta"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Szczegóły czatu"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Czat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Czat z Botem"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Czat"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Wybierz artystę dla swojego obrazu"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Wybierz szczegóły dla swojego obrazu"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Wybierz medium dla swojego obrazu"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Wybierz nastrój dla swojego obrazu"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Wybierz przypadek użycia"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Wybierz styl dla swojego obrazu"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno usunąć zawartość?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Wyczyść treść"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Wyraźna rozmowa"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Jasny"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz usunąć ten element?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Potwierdź, czy chcesz kontynuować usuwanie tego elementu. Tej czynności nie można cofnąć."),
        "confirmRemoveKey_openai":
            MessageLookupByLibrary.simpleMessage("Czy na pewno usunąć klucz?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Potwierdzać"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Skopiowano zawartość do schowka"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Kopiuj"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Tworzenie czatu nie powiodło się"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Usunięcie nie powiodło się"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Kasować"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Szczegół"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Ściągnij"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Edytować"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Nie udało się wygenerować"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Generować"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Krata"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Wygeneruj obraz"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Rozmiar obrazu"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Klucz wejściowy"),
        "interest_openai":
            MessageLookupByLibrary.simpleMessage("Zainteresowanie"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Twój klucz API jest przechowywany lokalnie na telefonie komórkowym i nigdy nie jest wysyłany nigdzie indziej. Możesz zapisać swój klucz, aby użyć go później. Możesz też wyjąć klucz, jeśli nie chcesz go już używać."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Niewłaściwy klucz"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Rola pracy"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Umiejętności w pracy"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Styl układu"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Słuchający..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Ładowanie klucza nie powiodło się"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Załaduj klucz pomyślnie"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Zarządzanie"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Średni"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Nastrój"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Więcej opcji"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Nowy czat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Brak generowania obrazu"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Liczba obrazów do wygenerowania. Musi zawierać się w przedziale od 1 do 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Liczba obrazów"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Opcje"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Strona"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Proszę, sprawdź swoje połączenie i spróbuj ponownie!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Proszę wypełnić wszystkie pola"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Proszę wprowadzić klucz"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Skłonić"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Połóż swój klucz tutaj"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Zregeneruj odpowiedź"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Pozostały"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Usuwanie klucza nie powiodło się"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Pomyślnie usunięto klucz"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("usunąć"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Resetowanie ustawień"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Nastawić"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Zapisywanie klucza nie powiodło się"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Pomyślnie zapisano klucz"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Zapisz klucz"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Zapisać"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Szukaj według monitu..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Słowa kluczowe sekcji"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Temat sekcji"),
        "selectChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Wybierz Czat nie powiódł się"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Wybierz Podpowiedź"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Dzielić"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Umiejętności"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Coś poszło nie tak!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Coś poszło nie tak! Spróbuj ponownie później. Bardzo dziękuję!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Mowa niedostępna"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Styl"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Dotknij mikrofonu, aby mówić"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Wygeneruj tekst"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Generator tekstu"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Wpisz wiadomość..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("Zobacz typ"),
        "view_openai": MessageLookupByLibrary.simpleMessage("widok"),
        "write_openai": MessageLookupByLibrary.simpleMessage("pisać")
      };
}
