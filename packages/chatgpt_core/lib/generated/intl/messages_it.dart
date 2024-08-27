// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(limit) =>
      "C\'è solo ${limit}x ricerca di immagini nella versione gratuita.";

  static String m1(limit) =>
      "Fino a ${limit} messaggi possono essere visualizzati solo nella versione gratuita.";

  static String m2(date) => "Data di scadenza dell\'abbonamento ${date}";

  static String m3(number) =>
      "Genera (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Di"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("applicare"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Artista"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Annulla"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Dettaglio chat"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chatta con Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Chiacchierare"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Scegli l\'artista per la tua immagine"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Scegli i dettagli per la tua immagine"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Scegli il mezzo per la tua immagine"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Scegli l\'atmosfera per la tua immagine"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Scegli il caso d\'uso"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Scegli lo stile per la tua immagine"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di cancellare il contenuto?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Contenuti chiari"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Conversazione chiara"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Chiaro"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler eliminare questo articolo?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Si prega di confermare se si desidera procedere con l\'eliminazione di questo elemento. Non puoi annullare questa azione."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di rimuovere la chiave?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Confermare"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Contenuto copiato negli appunti"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("copia"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Creazione chat fallita"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Elimina non riuscito"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Elimina"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("dettaglio"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Scaricare"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Modificare"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Impossibile generare"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Creare"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Griglia"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Immagine generata"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Dimensione dell\'immagine"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Tasto di inserimento"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("interesse"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "La tua chiave API viene archiviata localmente sul tuo dispositivo mobile e non viene mai inviata da nessun\'altra parte. Puoi salvare la tua chiave per usarla in seguito. Puoi anche rimuovere la tua chiave se non vuoi più usarla."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Chiave non valida"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Ruolo"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Competenze professionali"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Stile di layout"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Ascoltando..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Caricamento chiave non riuscito"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Caricamento chiave riuscito"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Gestire"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("medio"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Umore"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Più opzioni"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Nuova chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Nessuna immagine generata"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Il numero di immagini da generare. Deve essere compreso tra 1 e 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Numero di immagini"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Opzioni"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Pagina"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Controlla la tua connessione e riprova!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Si prega di compilare tutti i campi"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Inserisci la chiave"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Richiesta"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Metti qui la tua chiave"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Rigenera la risposta"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Rimanente"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Rimozione chiave non riuscita"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Chiave rimossa con successo"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Rimuovere"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Ripristina le impostazioni"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Reset"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Salva chiave non riuscita"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Chiave salvata con successo"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Salva chiave"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Salvare"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Cerca per messaggio..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Parole chiave della sezione"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Argomento della sezione"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Seleziona Chat fallita"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Seleziona Prompt"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("impostazioni"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Condividere"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Abilita"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Qualcosa è andato storto!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Qualcosa è andato storto! Per favore riprova più tardi. Grazie mille!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Discorso non disponibile"),
        "style_openai": MessageLookupByLibrary.simpleMessage("stile"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Tocca il microfono per parlare"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Genera testo"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Generatore di testo"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Scrivi un messaggio..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Visualizza tipo"),
        "view_openai": MessageLookupByLibrary.simpleMessage("vista"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Scrivi")
      };
}
