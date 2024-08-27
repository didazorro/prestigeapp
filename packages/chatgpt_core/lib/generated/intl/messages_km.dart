// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a km locale. All the
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
  String get localeName => 'km';

  static String m0(limit) =>
      "មានតែការស្វែងរករូបភាព ${limit}x នៅក្នុងកំណែឥតគិតថ្លៃ។";

  static String m1(limit) =>
      "សាររហូតដល់ ${limit} អាចបង្ហាញតែក្នុងកំណែឥតគិតថ្លៃប៉ុណ្ណោះ។";

  static String m2(date) => "កាលបរិច្ឆេទផុតកំណត់នៃការជាវ ${date}";

  static String m3(number) =>
      "បង្កើត (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("អំពី"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("អនុវត្ត"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("សិល្បករ"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("បោះបង់"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("ព័ត៌មានលម្អិតជជែក"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("ជជែក GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("ជជែកជាមួយ Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("ជជែក"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "ជ្រើសរើសសិល្បករសម្រាប់រូបភាពរបស់អ្នក។"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "ជ្រើសរើសព័ត៌មានលម្អិតសម្រាប់រូបភាពរបស់អ្នក។"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "ជ្រើសរើសមធ្យមសម្រាប់រូបភាពរបស់អ្នក។"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "ជ្រើសរើសអារម្មណ៍សម្រាប់រូបភាពរបស់អ្នក។"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើសករណីប្រើប្រាស់"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "ជ្រើសរើសរចនាប័ទ្មសម្រាប់រូបភាពរបស់អ្នក។"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "តើអ្នកប្រាកដក្នុងការសម្អាតខ្លឹមសារទេ?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("ជម្រះមាតិកា"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("ជម្រះការសន្ទនា"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("ច្បាស់"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "តើអ្នកប្រាកដថាចង់លុបធាតុនេះទេ?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "សូមបញ្ជាក់ប្រសិនបើអ្នកចង់បន្តការលុបធាតុនេះ។ អ្នក​មិន​អាច​មិន​ធ្វើ​សកម្មភាព​នេះ​វិញ​ទេ។"),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "តើអ្នកប្រាកដក្នុងការដកសោចេញទេ?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("បញ្ជាក់"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "បានចម្លងមាតិកាទៅក្ដារតម្បៀតខ្ទាស់"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("ចម្លង"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("បង្កើតការជជែកបានបរាជ័យ"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("លុបបានបរាជ័យ"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("លុប"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("ពត៌មានលំអិត"),
        "download_openai": MessageLookupByLibrary.simpleMessage("ទាញយក"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("កែសម្រួល"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("បរាជ័យក្នុងការបង្កើត"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("បង្កើត"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("ក្រឡាចត្រង្គ"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("បង្កើតរូបភាព"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("ទំហំរូបភាព"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("គ្រាប់ចុចបញ្ចូល"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("ការប្រាក់"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "API Key របស់អ្នកត្រូវបានរក្សាទុកក្នុងមូលដ្ឋាននៅលើទូរស័ព្ទរបស់អ្នក ហើយមិនដែលផ្ញើទៅកន្លែងណាផ្សេងទេ។ អ្នកអាចរក្សាទុកសោរបស់អ្នកដើម្បីប្រើវានៅពេលក្រោយ។ អ្នកក៏អាចដកសោរបស់អ្នកចេញ ប្រសិនបើអ្នកមិនចង់ប្រើវាទៀតទេ។"),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("សោមិនត្រឹមត្រូវ"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("តួនាទី​ការ​ងារ"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("ជំនាញការងារ"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("រចនាប័ទ្មប្លង់"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("កំពុងស្តាប់..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("ការផ្ទុកសោបានបរាជ័យ"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("ផ្ទុកសោជោគជ័យ"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("គ្រប់គ្រង"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("មធ្យម"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("អារម្មណ៍"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("មាន​ជម្រើស​ជា​ច្រើន​ទៀត"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("ការជជែកថ្មី។"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("គ្មានរូបភាពបង្កើតទេ។"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "ចំនួនរូបភាពដែលត្រូវបង្កើត។ ត្រូវ​មាន​ចន្លោះ​ពី ១ ទៅ ១០។"),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("ចំនួនរូបភាព"),
        "options_openai": MessageLookupByLibrary.simpleMessage("ជម្រើស"),
        "page_openai": MessageLookupByLibrary.simpleMessage("ទំព័រ"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "សូមពិនិត្យមើលការតភ្ជាប់របស់អ្នក ហើយព្យាយាមម្តងទៀត!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("សូមបំពេញគ្រប់វិស័យ"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("សូមបញ្ចូលគន្លឹះ"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("ប្រអប់បញ្ចូល"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("ដាក់គន្លឹះរបស់អ្នកនៅទីនេះ"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("បង្កើតការឆ្លើយតបឡើងវិញ"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("នៅសល់"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("ការលុបសោបានបរាជ័យ"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("បានលុបសោដោយជោគជ័យ"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("យកចេញ"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("កំណត់ការកំណត់ឡើងវិញ"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("កំណត់ឡើងវិញ"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("រក្សាទុកសោបានបរាជ័យ"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("បានរក្សាទុកសោដោយជោគជ័យ"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("រក្សាទុកសោ"),
        "save_openai": MessageLookupByLibrary.simpleMessage("រក្សាទុក"),
        "searchByPrompt_openai": MessageLookupByLibrary.simpleMessage(
            "ស្វែងរក​តាម​ប្រអប់​បញ្ចូល..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("ផ្នែកពាក្យគន្លឹះ"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("ផ្នែកប្រធានបទ"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើសការជជែកមិនបានជោគជ័យ"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើសប្រអប់បញ្ចូល"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("ការកំណត់"),
        "share_openai": MessageLookupByLibrary.simpleMessage("ចែករំលែក"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("ជំនាញ"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("មាន​អ្វីមួយ​មិន​ប្រក្រតី!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "មាន​អ្វីមួយ​មិន​ប្រក្រតី! សូម​ព្យាយាម​ម្តង​ទៀត​នៅ​ពេល​ក្រោយ។ អរគុណច្រើន!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("ការនិយាយមិនមានទេ។"),
        "style_openai": MessageLookupByLibrary.simpleMessage("ស្តាយ"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("ប៉ះមីក្រូហ្វូនដើម្បីនិយាយ"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("បង្កើតអត្ថបទ"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("ម៉ាស៊ីនបង្កើតអត្ថបទ"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("វាយ​សារ..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("មើលប្រភេទ"),
        "view_openai": MessageLookupByLibrary.simpleMessage("មើល"),
        "write_openai": MessageLookupByLibrary.simpleMessage("សរសេរ")
      };
}
