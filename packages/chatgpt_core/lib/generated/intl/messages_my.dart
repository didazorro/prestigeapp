// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a my locale. All the
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
  String get localeName => 'my';

  static String m0(limit) =>
      "အခမဲ့ဗားရှင်းတွင် ရုပ်ပုံရှာဖွေမှု ${limit}x သာရှိသည်။";

  static String m1(limit) =>
      "မက်ဆေ့ခ်ျ ${limit} စောင်အထိ အခမဲ့ဗားရှင်းတွင်သာ ပြသနိုင်သည်။";

  static String m2(date) => "စာရင်းသွင်းမှု သက်တမ်းကုန်ဆုံးရက် ${date}";

  static String m3(number) =>
      "ထုတ်လုပ်ပါ (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("အကြောင်း"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("လျှောက်ထားပါ"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("အနုပညာရှင်"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("ပယ်ဖျက်ပါ"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("ချတ်အသေးစိတ်"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("GPT ချတ်"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Bot နှင့် ချတ်လုပ်ပါ။"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("ချက်တင်"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "သင့်ပုံအတွက် အနုပညာရှင်ကို ရွေးချယ်ပါ။"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "သင့်ပုံအတွက် အသေးစိတ်ကို ရွေးပါ။"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "သင့်ပုံအတွက် ကြားခံကို ရွေးပါ။"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "သင့်ပုံအတွက် စိတ်ခံစားချက်ကို ရွေးချယ်ပါ။"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("အသုံးပြုပုံကို ရွေးချယ်ပါ။"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "သင့်ပုံအတွက် စတိုင်လ်ကို ရွေးချယ်ပါ။"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "အကြောင်းအရာကို ရှင်းလင်းရန် သေချာပါသလား။"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("အကြောင်းအရာကို ရှင်းလင်းပါ။"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("ရှင်းလင်းပြောဆိုခြင်း။"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("ရှင်းလင်းသော"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "ဤအရာကို ဖျက်လိုသည်မှာ သေချာပါသလား။"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "ဤအရာအား ဖျက်ခြင်းနှင့်ပတ်သက်၍ ဆက်လက်လုပ်ဆောင်လိုပါက အတည်ပြုပါ။ ဤလုပ်ဆောင်ချက်ကို သင်ပြန်ပြင်၍မရပါ။"),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "သော့ကို ဖယ်ရှားရန် သေချာပါသလား။"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("အတည်ပြုပါ"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "အကြောင်းအရာကို ကလစ်ဘုတ်သို့ ကူးယူထားသည်။"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("ကူးပါ"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "ချတ်ဖန်တီးခြင်း မအောင်မြင်ပါ။"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("ဖျက်၍မရပါ။"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("ဖျက်ပါ"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("အသေးစိတ်"),
        "download_openai": MessageLookupByLibrary.simpleMessage("ဒေါင်းလုပ်"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("တည်းဖြတ်ပါ"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("ထုတ်လုပ်ရန် မအောင်မြင်ပါ။"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Generate"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("ဂရစ်"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("ပုံထုတ်ပေးသည်။"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("ပုံအရွယ်အစား"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("ထည့်သွင်းသောကီး"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("အတိုး"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "သင်၏ API ကီးကို သင့်မိုဘိုင်းတွင် စက်တွင်း၌ သိမ်းဆည်းထားပြီး အခြားမည်သည့်နေရာကိုမှ မပို့ပါ။ နောက်မှအသုံးပြုရန် သင့်သော့ကို သင်သိမ်းဆည်းနိုင်ပါသည်။ သင့်သော့ကို အသုံးမပြုလိုပါကလည်း ဖယ်ရှားနိုင်ပါသည်။"),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("ကီးမမှန်ကန်ပါ။"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("ယောဘကဏ္ R"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("အလုပ်ကျွမ်းကျင်မှု"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("လက်ကွက်ပုံစံ"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("နားထောင်နေသည်..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("ကီးတင်ရန် မအောင်မြင်ပါ။"),
        "loadKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "သော့ဖွင့်ခြင်း အောင်မြင်သည်။"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("စီမံသည်"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("အလယ်အလတ်"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("စိတ်ဓာတ်"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("နောက်ထပ် ရွေးချယ်စရာများ"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Chat အသစ်"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("ပုံထုတ်ပေးခြင်းမရှိပါ။"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "ထုတ်လုပ်ရန် ပုံအရေအတွက်။ 1 နှင့် 10 ကြားရှိရမည်။"),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("ပုံအရေအတွက်"),
        "options_openai": MessageLookupByLibrary.simpleMessage("ရွေးစရာများ"),
        "page_openai": MessageLookupByLibrary.simpleMessage("စာမျက်နှာ"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "သင့်ချိတ်ဆက်မှုကို စစ်ဆေးပြီး ထပ်စမ်းကြည့်ပါ။"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("ကွက်လပ်အားလုံးကို ဖြည့်ပါ။"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("ကျေးဇူးပြု၍ သော့ထည့်ပါ။"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("ချက်ချင်း"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("သင့်သော့ကို ဤနေရာတွင်ထားပါ။"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("တုံ့ပြန်မှုကို ပြန်ထုတ်ပါ။"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("ကျန်"),
        "removeKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "သော့ကို ဖယ်ရှားခြင်း မအောင်မြင်ပါ။"),
        "removeKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "သော့ကို အောင်မြင်စွာ ဖယ်ရှားခဲ့သည်။"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("ဖယ်ရှားပါ"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage(
            "ဆက်တင်များကို ပြန်လည်သတ်မှတ်ပါ။"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("ပြန်လည်စတင်"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage(
            "သော့ကို သိမ်းဆည်းခြင်း မအောင်မြင်ပါ။"),
        "saveKeySuccess_openai": MessageLookupByLibrary.simpleMessage(
            "သော့ကို အောင်မြင်စွာ သိမ်းဆည်းပြီးပါပြီ။"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("သော့ကိုသိမ်းဆည်းပါ။"),
        "save_openai": MessageLookupByLibrary.simpleMessage("သိမ်းဆည်းပါ"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Prompt ဖြင့်ရှာပါ..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("ကဏ္ဍ သော့ချက်စာလုံးများ"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("ကဏ္ဍခေါင်းစဉ်"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Chat Failed ကို ရွေးပါ။"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Prompt ကို ရွေးပါ။"),
        "settings_openai":
            MessageLookupByLibrary.simpleMessage("ချိန်ညှိချက်များ"),
        "share_openai": MessageLookupByLibrary.simpleMessage("မျှဝေပါ"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("ကျွမ်းကျင်မှု"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("တစ်ခုခု မှားသွားသည်!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "တစ်ခုခုမှားသွားသည်။ နောက်မှ ထပ်စမ်းကြည့်ပါ။ ကျေးဇူးအရမ်းတင်ပါတယ်!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("စကားပြောမရနိုင်ပါ။"),
        "style_openai": MessageLookupByLibrary.simpleMessage("စတိုင်"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "စကားပြောရန် မိုက်ကို တို့ပါ။"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("စာသားဖန်တီးပါ။"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("စာသားမီးစက်"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("မက်ဆေ့ခ်ျရိုက်ပါ..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("ကြည့်ရှုမှုအမျိုးအစား"),
        "view_openai": MessageLookupByLibrary.simpleMessage("ကြည့်ရှုပါ"),
        "write_openai": MessageLookupByLibrary.simpleMessage("ရေးပါ။")
      };
}
