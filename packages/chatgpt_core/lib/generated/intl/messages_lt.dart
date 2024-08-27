// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a lt locale. All the
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
  String get localeName => 'lt';

  static String m0(limit) =>
      "Nemokamoje versijoje yra tik ${limit}x vaizdų paieška.";

  static String m1(limit) =>
      "Tik nemokama versija gali būti rodoma iki ${limit} pranešimų.";

  static String m2(date) => "Prenumeratos galiojimo pabaigos data ${date}";

  static String m3(number) =>
      "Generuoti (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Apie"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Taikyti"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Menininkas"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Atšaukti"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Pokalbio detalė"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Pokalbis GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Kalbėkitės su Botu"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Pokalbis"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite savo įvaizdžio menininką"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite savo vaizdo detales"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite savo vaizdo terpę"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite savo įvaizdžio nuotaiką"),
        "chooseUseCase_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite naudojimo atvejį"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite savo įvaizdžio stilių"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Ar tikrai išvalysite turinį?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Aiškus turinys"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Aiškus pokalbis"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Išvalyti"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Ar tikrai norite ištrinti šį elementą?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Patvirtinkite, jei norite tęsti šio elemento ištrynimą. Šio veiksmo anuliuoti negalite."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Ar tikrai pašalinsite raktą?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Patvirtinti"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Turinys nukopijuotas į mainų sritį"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Kopijuoti"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Nepavyko sukurti pokalbio"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Ištrinti nepavyko"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Ištrinti"),
        "detail_openai":
            MessageLookupByLibrary.simpleMessage("Išsami informacija"),
        "download_openai": MessageLookupByLibrary.simpleMessage("parsisiųsti"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Redaguoti"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Nepavyko sugeneruoti"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Generuoti"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Tinklelis"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Vaizdo generavimas"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Paveikslėlio dydis"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Įvesties raktas"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Palūkanos"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Jūsų API raktas yra saugomas jūsų mobiliajame telefone ir niekada niekur nesiunčiamas. Galite išsaugoti raktą, kad galėtumėte jį naudoti vėliau. Taip pat galite išimti raktą, jei nebenorite jo naudoti."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Neteisingas raktas"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Darbo vaidmuo"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Darbo įgūdžiai"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Išdėstymo stilius"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("Klausau..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Nepavyko įkelti rakto"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Įkelti raktą sėkminga"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Tvarkykite"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Vidutinis"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Nuotaika"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Daugiau pasirinkimų"),
        "newChat_openai":
            MessageLookupByLibrary.simpleMessage("Naujas pokalbis"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Vaizdas negeneruojamas"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Sugeneruojamų vaizdų skaičius. Turi būti nuo 1 iki 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Vaizdų skaičius"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Galimybės"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Puslapis"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Patikrinkite ryšį ir bandykite dar kartą!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Prašome užpildyti visus laukus"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Prašome įvesti raktą"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Raginama"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Įdėkite savo raktą čia"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Regeneruoti atsaką"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Lieka"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Nepavyko pašalinti rakto"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Raktas sėkmingai pašalintas"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Pašalinti"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Atstatyti nustatymus"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Atstatyti"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Nepavyko išsaugoti rakto"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Raktas sėkmingai išsaugotas"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("Išsaugoti raktą"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Sutaupyti"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Ieškoti pagal raginimą..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Skyrius Raktiniai žodžiai"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Skyriaus tema"),
        "selectChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite Pokalbis nepavyko"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Pasirinkite Raginimas"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Nustatymai"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Dalintis"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Įgūdžiai"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Kažkas ne taip!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Kažkas ne taip! Pabandykite dar kartą vėliau. Labai ačiū!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Kalba nepasiekiama"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Stilius"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Norėdami kalbėti, bakstelėkite mikrofoną"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Teksto generavimas"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Teksto generatorius"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Įveskite pranešimą ..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Rodinio tipas"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Vaizdas"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Rašyti")
      };
}
