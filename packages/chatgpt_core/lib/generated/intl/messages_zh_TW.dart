// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
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
  String get localeName => 'zh_TW';

  static String m0(limit) => "免費版只有 ${limit}x 圖片搜索。";

  static String m1(limit) => "最多 ${limit} 條消息只能在免費版本中顯示。";

  static String m2(date) => "訂閱到期日期 ${date}";

  static String m3(number) =>
      "生成（${number} ${Intl.plural(number, one: 'time', other: 'times')}）";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("關於"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("應用"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("藝術家"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("取消"),
        "chatDetail_openai": MessageLookupByLibrary.simpleMessage("聊天詳情"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("聊天 GPT"),
        "chatWithBot_openai": MessageLookupByLibrary.simpleMessage("與機器人聊天"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("聊"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("為您的圖像選擇藝術家"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage("選擇圖像的細節"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("為您的圖像選擇介質"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage("為您的圖像選擇心情"),
        "chooseUseCase_openai": MessageLookupByLibrary.simpleMessage("選擇用例"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage("為您的圖片選擇風格"),
        "clearConfirm_openai":
            MessageLookupByLibrary.simpleMessage("您確定要清除內容嗎？"),
        "clearContent_openai": MessageLookupByLibrary.simpleMessage("清除內容"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("清晰的對話"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("明確"),
        "confirmDeleteItem_openai":
            MessageLookupByLibrary.simpleMessage("您確定要刪除此項目嗎？"),
        "confirmDelete_openai":
            MessageLookupByLibrary.simpleMessage("請確認您是否希望繼續刪除該項目。您無法撤消此操作。"),
        "confirmRemoveKey_openai":
            MessageLookupByLibrary.simpleMessage("您確定要刪除密鑰嗎？"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("確認"),
        "copiedToClipboard_openai":
            MessageLookupByLibrary.simpleMessage("將內容複製到剪貼板"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("複製"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("創建聊天失敗"),
        "deleteFailed_openai": MessageLookupByLibrary.simpleMessage("刪除失敗"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("刪除"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("詳情"),
        "download_openai": MessageLookupByLibrary.simpleMessage("下載"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("編輯"),
        "failedToGenerate_openai": MessageLookupByLibrary.simpleMessage("生成失敗"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("生成"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("格"),
        "imageGenerate_openai": MessageLookupByLibrary.simpleMessage("圖像生成"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("圖片大小"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("輸入鍵"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("興趣"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "您的 API 密鑰存儲在您的本地手機上，絕不會發送到其他任何地方。您可以保存密鑰以備後用。如果您不想再使用它，也可以刪除您的密鑰。"),
        "invalidKey_openai": MessageLookupByLibrary.simpleMessage("無效的密鑰"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("職業角色"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("工作技巧"),
        "layoutStyle_openai": MessageLookupByLibrary.simpleMessage("佈局樣式"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("聽..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage("加載密鑰失敗"),
        "loadKeySuccess_openai": MessageLookupByLibrary.simpleMessage("加載密鑰成功"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("管理"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("介質"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("情緒"),
        "moreOptions_openai": MessageLookupByLibrary.simpleMessage("更多選擇"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("新聊天"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("沒有圖像生成"),
        "numberOfImagesCondition_openai":
            MessageLookupByLibrary.simpleMessage("要生成的圖像數。必須介於 1 和 10 之間。"),
        "numberOfImages_openai": MessageLookupByLibrary.simpleMessage("圖片數量"),
        "options_openai": MessageLookupByLibrary.simpleMessage("選項"),
        "page_openai": MessageLookupByLibrary.simpleMessage("頁"),
        "pleaseCheckConnection_openai":
            MessageLookupByLibrary.simpleMessage("請檢查您的連接並重試！"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("請填寫所有字段"),
        "pleaseInputKey_openai": MessageLookupByLibrary.simpleMessage("請輸入密鑰"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("提示"),
        "putKeyHere_openai": MessageLookupByLibrary.simpleMessage("把你的鑰匙放在這裡"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("重新生成響應"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("其餘"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("刪除密鑰失敗"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("成功刪除密鑰"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("去掉"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage("重新設置"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("重啟"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage("保存密鑰失敗"),
        "saveKeySuccess_openai": MessageLookupByLibrary.simpleMessage("保存密鑰成功"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("保存密鑰"),
        "save_openai": MessageLookupByLibrary.simpleMessage("保存"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("按提示搜索..."),
        "sectionKeywords_openai": MessageLookupByLibrary.simpleMessage("欄目關鍵詞"),
        "sectionTopic_openai": MessageLookupByLibrary.simpleMessage("節主題"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("選擇聊天失敗"),
        "selectPrompt_openai": MessageLookupByLibrary.simpleMessage("選擇提示"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("設置"),
        "share_openai": MessageLookupByLibrary.simpleMessage("分享"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("技能"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("出了些問題！！！"),
        "somethingWhenWrong_openai":
            MessageLookupByLibrary.simpleMessage("出了些問題！請稍後再試。太感謝了！"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("語音不可用"),
        "style_openai": MessageLookupByLibrary.simpleMessage("樣式"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("點擊麥克風說話"),
        "textGenerate_openai": MessageLookupByLibrary.simpleMessage("文本生成"),
        "textGenerator_openai": MessageLookupByLibrary.simpleMessage("文本生成器"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai": MessageLookupByLibrary.simpleMessage("輸入消息..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("查看類型"),
        "view_openai": MessageLookupByLibrary.simpleMessage("視圖"),
        "write_openai": MessageLookupByLibrary.simpleMessage("寫")
      };
}
