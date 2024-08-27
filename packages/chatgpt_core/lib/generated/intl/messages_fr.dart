// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(limit) =>
      "Il n\'y a que ${limit}x recherche d\'images dans la version gratuite.";

  static String m1(limit) =>
      "Jusqu\'à ${limit}  messages ne peuvent être affichés que dans la version gratuite.";

  static String m2(date) => "Date d\'expiration de l\'abonnement ${date}";

  static String m3(number) =>
      "Générer (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("sur"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("appliquer"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Artiste"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("annuler"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Détails du chat"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chatter avec le robot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("bavarder"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Choisissez l\'artiste pour votre image"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Choisissez le détail de votre image"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Choisissez le support de votre image"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Choisissez l\'ambiance de votre image"),
        "chooseUseCase_openai": MessageLookupByLibrary.simpleMessage(
            "Choisissez le cas d\'utilisation"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Choisissez le style de votre image"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous vraiment effacer le contenu ?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Effacer le contenu"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Conversation claire"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Clair"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous vraiment supprimer cet élément?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Veuillez confirmer si vous souhaitez procéder à la suppression de cet élément. Vous ne pouvez pas annuler cette action."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de retirer la clé ?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Contenu copié dans le presse-papiers"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("copie"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Échec de la création du chat"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("La suppression a échoué"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Effacer"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Détail"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Télécharger"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("modifier"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("n\'a pas réussi à générer"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("produire"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("la grille"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Génération d\'images"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Taille de l\'image"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Clé d\'entrée"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Intérêt"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Votre clé API est stockée localement sur votre mobile et n\'est jamais envoyée ailleurs. Vous pouvez enregistrer votre clé pour l\'utiliser plus tard. Vous pouvez également retirer votre clé si vous ne souhaitez plus l\'utiliser."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Clé non valide"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("Rôle de l\'emploi"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage(
            "Compétences professionnelles"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Style de mise en page"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("Écoute..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Échec du chargement de la clé"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Charger la clé réussie"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Gérer"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Moyen"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Ambiance"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Plus d\'options"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Nouveau chat"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Aucune image générée"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Le nombre d\'images à générer. Doit être compris entre 1 et 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Nombre d\'images"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Les options"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Page"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Veuillez vérifier votre connexion et réessayer !"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Merci de remplir tous les champs"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Veuillez entrer la clé"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("rapide"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Mettez votre clé ici"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Régénérer la réponse"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Restant"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Échec de la suppression de la clé"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Clé supprimée avec succès"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Retirer"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Réinitialiser les options"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Réinitialiser"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Échec de l\'enregistrement de la clé"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Clé enregistrée avec succès"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("Enregistrer la clé"),
        "save_openai": MessageLookupByLibrary.simpleMessage("sauvegarder"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Rechercher par invite..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Mots-clés de la section"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Sujet de la section"),
        "selectChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Échec de la sélection du chat"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Sélectionnez l\'invite"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Réglages"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Partager"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("compétences"),
        "somethingWentWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Quelque chose s\'est mal passé !!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Quelque chose s\'est mal passé ! Veuillez réessayer plus tard. Merci beaucoup!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Discours non disponible"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Style"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Appuyez sur le micro pour parler"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Génération de texte"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Générateur de texte"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Tapez un message ..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("Type de vue"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Vue"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Écrire")
      };
}
