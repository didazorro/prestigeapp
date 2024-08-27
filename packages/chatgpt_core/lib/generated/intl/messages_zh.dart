// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(limit) => "免费版只有 ${limit}x 图片搜索。";

  static String m1(limit) => "最多 ${limit} 条消息只能在免费版本中显示。";

  static String m2(date) => "订阅到期日期 ${date}";

  static String m3(number) =>
      "生成（${number} ${Intl.plural(number, one: 'time', other: 'times')}）";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("关于"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("应用"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("艺术家"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("取消"),
        "chatDetail_openai": MessageLookupByLibrary.simpleMessage("聊天详情"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("聊天 GPT"),
        "chatWithBot_openai": MessageLookupByLibrary.simpleMessage("与机器人聊天"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("聊"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("为您的图像选择艺术家"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage("选择图像的细节"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("为您的图像选择介质"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage("为您的图像选择心情"),
        "chooseUseCase_openai": MessageLookupByLibrary.simpleMessage("选择用例"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage("为您的图片选择风格"),
        "clearConfirm_openai":
            MessageLookupByLibrary.simpleMessage("您确定要清除内容吗？"),
        "clearContent_openai": MessageLookupByLibrary.simpleMessage("清除内容"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("清晰的对话"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("明确"),
        "confirmDeleteItem_openai":
            MessageLookupByLibrary.simpleMessage("您确定要删除此项目吗？"),
        "confirmDelete_openai":
            MessageLookupByLibrary.simpleMessage("请确认您是否希望继续删除该项目。您无法撤消此操作。"),
        "confirmRemoveKey_openai":
            MessageLookupByLibrary.simpleMessage("您确定要删除密钥吗？"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("确认"),
        "copiedToClipboard_openai":
            MessageLookupByLibrary.simpleMessage("将内容复制到剪贴板"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("复制"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("创建聊天失败"),
        "deleteFailed_openai": MessageLookupByLibrary.simpleMessage("删除失败"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("删除"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("详情"),
        "download_openai": MessageLookupByLibrary.simpleMessage("下载"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("编辑"),
        "failedToGenerate_openai": MessageLookupByLibrary.simpleMessage("生成失败"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("生成"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("格"),
        "imageGenerate_openai": MessageLookupByLibrary.simpleMessage("图像生成"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("图片尺寸"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("输入键"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("利益"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "您的 API 密钥存储在您的本地手机上，绝不会发送到其他任何地方。您可以保存密钥以备后用。如果您不想再使用它，也可以删除您的密钥。"),
        "invalidKey_openai": MessageLookupByLibrary.simpleMessage("无效的密钥"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("职业角色"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("工作技巧"),
        "layoutStyle_openai": MessageLookupByLibrary.simpleMessage("布局样式"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("听..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage("加载密钥失败"),
        "loadKeySuccess_openai": MessageLookupByLibrary.simpleMessage("加载密钥成功"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("管理"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("介质"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("心情"),
        "moreOptions_openai": MessageLookupByLibrary.simpleMessage("更多的选择"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("新聊天"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("没有图像生成"),
        "numberOfImagesCondition_openai":
            MessageLookupByLibrary.simpleMessage("要生成的图像数。必须介于 1 和 10 之间。"),
        "numberOfImages_openai": MessageLookupByLibrary.simpleMessage("图片数量"),
        "options_openai": MessageLookupByLibrary.simpleMessage("选项"),
        "page_openai": MessageLookupByLibrary.simpleMessage("页"),
        "pleaseCheckConnection_openai":
            MessageLookupByLibrary.simpleMessage("请检查您的连接并重试！"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("请填写所有字段"),
        "pleaseInputKey_openai": MessageLookupByLibrary.simpleMessage("请输入密钥"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("提示"),
        "putKeyHere_openai": MessageLookupByLibrary.simpleMessage("把你的钥匙放在这里"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("重新生成响应"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("其余"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("删除密钥失败"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("成功删除密钥"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("去掉"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage("重新设置"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("重启"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage("保存密钥失败"),
        "saveKeySuccess_openai": MessageLookupByLibrary.simpleMessage("保存密钥成功"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("保存密钥"),
        "save_openai": MessageLookupByLibrary.simpleMessage("保存"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("按提示搜索..."),
        "sectionKeywords_openai": MessageLookupByLibrary.simpleMessage("栏目关键词"),
        "sectionTopic_openai": MessageLookupByLibrary.simpleMessage("节主题"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("选择聊天失败"),
        "selectPrompt_openai": MessageLookupByLibrary.simpleMessage("选择提示"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("设置"),
        "share_openai": MessageLookupByLibrary.simpleMessage("分享"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("技能专长"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("出了些问题！！！"),
        "somethingWhenWrong_openai":
            MessageLookupByLibrary.simpleMessage("出了些问题！请稍后再试。太感谢了！"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("语音不可用"),
        "style_openai": MessageLookupByLibrary.simpleMessage("样式"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("点击麦克风说话"),
        "textGenerate_openai": MessageLookupByLibrary.simpleMessage("文本生成"),
        "textGenerator_openai": MessageLookupByLibrary.simpleMessage("文本生成器"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai": MessageLookupByLibrary.simpleMessage("输入讯息..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("查看类型"),
        "view_openai": MessageLookupByLibrary.simpleMessage("视图"),
        "write_openai": MessageLookupByLibrary.simpleMessage("写")
      };
}
