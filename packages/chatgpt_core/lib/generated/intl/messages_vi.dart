// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(limit) =>
      "Chỉ có tìm kiếm hình ảnh ${limit}x trong phiên bản miễn phí.";

  static String m1(limit) =>
      "Chỉ có thể hiển thị tối đa ${limit} tin nhắn trong phiên bản miễn phí.";

  static String m2(date) => "Ngày hết hạn đăng ký ${date}";

  static String m3(number) =>
      "Tạo (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Về"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Áp dụng"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Nghệ sĩ"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Huỷ"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Chi tiết trò chuyện"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Trò chuyện với Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Trò chuyện"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Chọn nghệ sĩ cho hình của bạn"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Chọn chi tiết cho hình của bạn"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Chọn chất liệu cho hình của bạn"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Chọn cảm xúc cho hình của bạn"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Chọn use case"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Chọn phong cách cho hình của bạn"),
        "clearConfirm_openai":
            MessageLookupByLibrary.simpleMessage("Bạn muốn xoá nội dung?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Xoá nội dung"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Xoá cuộc trò chuyện"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Xoá"),
        "confirmDeleteItem_openai":
            MessageLookupByLibrary.simpleMessage("Bạn muốn xoá mục này?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Vui lòng xác nhận trước khi xoá. Bạn sẽ không thể hoàn tác."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn để loại bỏ chìa khóa?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Xác nhận"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Đã sao chép vào khay nhớ tạm"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Sao chép"),
        "createChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Tạo trò chuyện không thành công"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Xóa không thành công"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Xoá"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Chi tiết"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Tải xuống"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Sửa"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Lỗi khi tạo"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Tạo"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Lưới"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Tạo hình ảnh"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("Kích thước"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("Phím nhập"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Quan tâm"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Khóa API của bạn được lưu trữ cục bộ trên điện thoại di động của bạn và không bao giờ được gửi đi bất kỳ nơi nào khác. Bạn có thể lưu khóa của mình để sử dụng sau này. Bạn cũng có thể xóa khóa của mình nếu không muốn sử dụng nữa."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Khóa không hợp lệ"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("Vai trò công việc"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Kỹ năng làm việc"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Kiểu bố cục"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Đang nghe..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Tải khóa không thành công"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Tải khóa thành công"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Quản lý"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Chất liệu"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Cảm xúc"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Thêm tuỳ chọn"),
        "newChat_openai":
            MessageLookupByLibrary.simpleMessage("Cuộc trò truyện mới"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Không hình ảnh nào được tạo"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Số hình ảnh cần tạo, Phải từ 1 đến 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Số lượng hình ảnh"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Tuỳ chọn"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Trang"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Vui lòng kiểm tra kết nối của bạn và thử lại!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Vui lòng điền vào tất cả các trường"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Vui lòng nhập khóa"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Lời nhắc"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Đặt chìa khóa của bạn ở đây"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Tạo lại phản hồi"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Còn lại"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Xóa khóa không thành công"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Đã xóa khóa thành công"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Xoá bỏ"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage("Đặt lại"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Đặt lại"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Lưu khóa không thành công"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Đã lưu khóa thành công"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Lưu khóa"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Tiết kiệm"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Tìm kiếm theo lời nhắc..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Phần từ khóa"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Phần chủ đề"),
        "selectChatFailed_openai": MessageLookupByLibrary.simpleMessage(
            "Chọn trò chuyện không thành công"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Chọn lời nhắc"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Chia sẻ"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Kỹ năng"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Đã xảy ra sự cố!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Có vấn đề xảy ra! Vui lòng thử lại sau. Xin cảm ơn!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Không khả dụng"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Phong cách"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("Nhấn vào mic để nói"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Tạo văn bản"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Trình tạo văn bản"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Nhập tin nhắn..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("Dạng xem"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Xem"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Viết")
      };
}
