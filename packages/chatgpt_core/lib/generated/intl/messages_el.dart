// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a el locale. All the
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
  String get localeName => 'el';

  static String m0(limit) =>
      "Υπάρχει μόνο ${limit}x αναζήτηση εικόνων στη δωρεάν έκδοση.";

  static String m1(limit) =>
      "Μέχρι ${limit} μηνύματα μπορούν να εμφανιστούν μόνο στη δωρεάν έκδοση.";

  static String m2(date) => "Ημερομηνία λήξης συνδρομής ${date}";

  static String m3(number) =>
      "Δημιουργία (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Σχετικά με"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Ισχύουν"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Καλλιτέχνης"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Ματαίωση"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Λεπτομέρεια συνομιλίας"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Συνομιλία GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Συνομιλία με Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Κουβέντα"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε καλλιτέχνη για την εικόνα σας"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε λεπτομέρεια για την εικόνα σας"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε μέσο για την εικόνα σας"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε διάθεση για την εικόνα σας"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Επιλέξτε περίπτωση χρήσης"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε στυλ για την εικόνα σας"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Είστε βέβαιοι ότι θα διαγράψετε το περιεχόμενο;"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Καθαρό περιεχόμενο"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Καθαρή συνομιλία"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Σαφή"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Είστε βέβαιοι ότι θέλετε να διαγράψετε αυτό το στοιχείο;"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Επιβεβαιώστε εάν θέλετε να προχωρήσετε στη διαγραφή αυτού του στοιχείου. Δεν μπορείτε να αναιρέσετε αυτήν την ενέργεια."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Είστε βέβαιοι ότι θα αφαιρέσετε το κλειδί;"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Επιβεβαιώνω"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Αντιγράφηκε περιεχόμενο στο πρόχειρο"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("αντίγραφο"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Η δημιουργία συνομιλίας απέτυχε"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Η διαγραφή απέτυχε"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Διαγράφω"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Λεπτομέρεια"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Κατεβάστε"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Επεξεργασία"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Αποτυχία δημιουργίας"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Παράγω"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Πλέγμα"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Δημιουργία εικόνας"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Μέγεθος εικόνας"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Κλειδί εισόδου"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Ενδιαφέρον"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Το κλειδί API αποθηκεύεται τοπικά στο κινητό σας και δεν αποστέλλεται ποτέ πουθενά αλλού. Μπορείτε να αποθηκεύσετε το κλειδί σας για να το χρησιμοποιήσετε αργότερα. Μπορείτε επίσης να αφαιρέσετε το κλειδί σας εάν δεν θέλετε να το χρησιμοποιείτε πλέον."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Μη έγκυρο κλειδί"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("Ρόλος Εργασίας"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Επαγγελματικές Δεξιότητες"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Στυλ Διάταξης"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Ακούγοντας..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Το κλειδί φόρτωσης απέτυχε"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Επιτυχία φόρτωσης κλειδιού"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Διαχειρίζονται"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Μεσαίο"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Διάθεση"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Περισσότερες επιλογές"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Νέα συνομιλία"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Δεν δημιουργείται εικόνα"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Ο αριθμός των εικόνων που θα δημιουργηθούν. Πρέπει να είναι μεταξύ 1 και 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Αριθμός εικόνων"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Επιλογές"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Σελίδα"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Ελέγξτε τη σύνδεσή σας και δοκιμάστε ξανά!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Παρακαλώ συμπληρώστε όλα τα πεδία"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Παρακαλώ εισάγετε το κλειδί"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Προτροπή"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Βάλτε το κλειδί σας εδώ"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Αναγέννηση απόκρισης"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Παραμένων"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Η αφαίρεση του κλειδιού απέτυχε"),
        "removeKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Το κλειδί καταργήθηκε με επιτυχία"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Αφαιρώ"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Επαναφορά ρυθμίσεων"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Επαναφορά"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Η αποθήκευση κλειδιού απέτυχε"),
        "saveKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "Το κλειδί αποθηκεύτηκε με επιτυχία"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("Αποθήκευση κλειδιού"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Αποθηκεύσετε"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Αναζήτηση μέσω προτροπής..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Λέξεις-κλειδιά ενότητας"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Θέμα Ενότητας"),
        "selectChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε Η συνομιλία απέτυχε"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Επιλέξτε Ερώτηση"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Ρυθμίσεις"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Μερίδιο"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Δεξιότητες"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Κάτι πήγε στραβά!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Κάτι πήγε στραβά! Παρακαλώ δοκιμάστε ξανά αργότερα. Σε ευχαριστώ πάρα πολύ!"),
        "speechNotAvailable_openai": MessageLookupByLibrary.simpleMessage(
            "Η ομιλία δεν είναι διαθέσιμη"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Στυλ"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Πατήστε το μικρόφωνο για να μιλήσετε"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Δημιουργία κειμένου"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Γεννήτρια κειμένου"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai": MessageLookupByLibrary.simpleMessage(
            "Πληκτρολογήστε ένα μήνυμα ..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Τύπος προβολής"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Θέα"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Γράφω")
      };
}
