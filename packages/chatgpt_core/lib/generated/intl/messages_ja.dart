// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(limit) => "無料版では画像検索は ${limit}x しかありません。";

  static String m1(limit) => "最大 ${limit} 件のメッセージは、無料版でのみ表示できます。";

  static String m2(date) => "サブスクリプションの有効期限が切れた日 ${date}";

  static String m3(number) =>
      "生成 (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("約"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("適用する"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("アーティスト"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "chatDetail_openai": MessageLookupByLibrary.simpleMessage("チャットの詳細"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("チャットGPT"),
        "chatWithBot_openai": MessageLookupByLibrary.simpleMessage("ボットとチャット"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("チャット"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("画像のアーティストを選択"),
        "chooseDetail_openai":
            MessageLookupByLibrary.simpleMessage("画像の詳細を選択してください"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("画像の媒体を選択してください"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("画像の雰囲気を選択してください"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("ユースケースを選択"),
        "choseStyle_openai":
            MessageLookupByLibrary.simpleMessage("画像のスタイルを選択してください"),
        "clearConfirm_openai":
            MessageLookupByLibrary.simpleMessage("コンテンツをクリアしてもよろしいですか？"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("コンテンツをクリア"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("クリアな会話"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("クリア"),
        "confirmDeleteItem_openai":
            MessageLookupByLibrary.simpleMessage("このアイテムを削除してもよろしいですか？"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "このアイテムの削除を続行するかどうかを確認してください。この操作を元に戻すことはできません。"),
        "confirmRemoveKey_openai":
            MessageLookupByLibrary.simpleMessage("本当にキーを削除しますか?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("確認"),
        "copiedToClipboard_openai":
            MessageLookupByLibrary.simpleMessage("コンテンツをクリップボードにコピーしました"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("コピーする"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("チャットの作成に失敗しました"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("削除に失敗しました"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("削除"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("詳細"),
        "download_openai": MessageLookupByLibrary.simpleMessage("ダウンロード"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("編集"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("生成に失敗しました"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("生成する"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("グリッド"),
        "imageGenerate_openai": MessageLookupByLibrary.simpleMessage("画像生成"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("画像サイズ"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("キー入力"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("興味"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "API キーはモバイル上でローカルに保存され、他の場所に送信されることはありません。後で使用するためにキーを保存できます。キーをもう使用したくない場合は、キーを削除することもできます。"),
        "invalidKey_openai": MessageLookupByLibrary.simpleMessage("無効キー"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("職務"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("ジョブスキル"),
        "layoutStyle_openai": MessageLookupByLibrary.simpleMessage("レイアウトスタイル"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("聞いている..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("キーのロードに失敗しました"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("キーのロードが成功しました"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("管理する"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("中"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("ムード"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("より多くのオプション"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("新しいチャット"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("画像生成なし"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "生成する画像の数。 1 から 10 の間でなければなりません。"),
        "numberOfImages_openai": MessageLookupByLibrary.simpleMessage("画像数"),
        "options_openai": MessageLookupByLibrary.simpleMessage("オプション"),
        "page_openai": MessageLookupByLibrary.simpleMessage("ページ"),
        "pleaseCheckConnection_openai":
            MessageLookupByLibrary.simpleMessage("接続を確認して、もう一度お試しください。"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("すべてのフィールドに記入してください"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("キーを入力してください"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("促す"),
        "putKeyHere_openai": MessageLookupByLibrary.simpleMessage("ここに鍵を置きます"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("応答を再生成する"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("残り"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("キーの削除に失敗しました"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("キーが正常に削除されました"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("削除する"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage("設定をリセット"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("リセット"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("キーの保存に失敗しました"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("キーが正常に保存されました"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("キーの保存"),
        "save_openai": MessageLookupByLibrary.simpleMessage("保存する"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("プロンプトで検索..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("セクションのキーワード"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("セクションのトピック"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("チャットの選択に失敗しました"),
        "selectPrompt_openai": MessageLookupByLibrary.simpleMessage("プロンプトを選択"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("設定"),
        "share_openai": MessageLookupByLibrary.simpleMessage("シェア"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("スキル"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("何か問題が発生しました!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "エラーが発生しました。後でもう一度やり直してください。どうもありがとうございます！"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("スピーチは利用できません"),
        "style_openai": MessageLookupByLibrary.simpleMessage("スタイル"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("マイクをタップして話す"),
        "textGenerate_openai": MessageLookupByLibrary.simpleMessage("テキスト生成"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("テキストジェネレーター"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("メッセージを入力..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("表示タイプ"),
        "view_openai": MessageLookupByLibrary.simpleMessage("見る"),
        "write_openai": MessageLookupByLibrary.simpleMessage("書きます")
      };
}
