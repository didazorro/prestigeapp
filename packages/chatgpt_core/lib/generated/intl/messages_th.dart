// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
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
  String get localeName => 'th';

  static String m0(limit) => "มีการค้นหารูปภาพเพียง ${limit}x ในเวอร์ชันฟรี";

  static String m1(limit) =>
      "สามารถแสดงได้สูงสุด ${limit} ข้อความในเวอร์ชันฟรีเท่านั้น";

  static String m2(date) => "การสมัครหมดอายุวันที่ ${date}";

  static String m3(number) =>
      "สร้าง (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("เกี่ยวกับ"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("ใช่"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("ศิลปิน"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("รายละเอียดการแชท"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("แชท GPT"),
        "chatWithBot_openai": MessageLookupByLibrary.simpleMessage("แชทกับบอต"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("พูดคุย"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("เลือกศิลปินสำหรับภาพของคุณ"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "เลือกรายละเอียดสำหรับภาพของคุณ"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("เลือกสื่อสำหรับรูปภาพของคุณ"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("เลือกอารมณ์สำหรับภาพของคุณ"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("เลือกกรณีการใช้งาน"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "เลือกสไตล์สำหรับรูปภาพของคุณ"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "คุณแน่ใจว่าจะล้างเนื้อหาหรือไม่"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("ล้างเนื้อหา"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("การสนทนาที่ชัดเจน"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("ชัดเจน"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "แน่ใจไหมว่าต้องการลบรายการนี้"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "โปรดยืนยันว่าคุณต้องการดำเนินการลบรายการนี้ต่อ คุณไม่สามารถเลิกทำการกระทำนี้ได้"),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "คุณแน่ใจหรือว่าจะเอากุญแจออก?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("ยืนยัน"),
        "copiedToClipboard_openai":
            MessageLookupByLibrary.simpleMessage("คัดลอกเนื้อหาไปยังคลิปบอร์ด"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("สำเนา"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("สร้างแชทล้มเหลว"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("ลบไม่สำเร็จ"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("ลบ"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("รายละเอียด"),
        "download_openai": MessageLookupByLibrary.simpleMessage("ดาวน์โหลด"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("แก้ไข"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("สร้างไม่สำเร็จ"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("ผลิต"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("ตะแกรง"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("สร้างภาพ"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("ขนาดรูปภาพ"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("คีย์อินพุต"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("ความสนใจ"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "รหัส API ของคุณถูกจัดเก็บไว้ในเครื่องมือถือของคุณและไม่เคยส่งไปที่อื่น คุณสามารถบันทึกคีย์เพื่อใช้ในภายหลังได้ คุณยังสามารถนำกุญแจออกได้หากไม่ต้องการใช้อีกต่อไป"),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("กุญแจนี้ใช้ไม่ได้"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("บทบาทงาน"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("ทักษะการทำงาน"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("รูปแบบเค้าโครง"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("การฟัง..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("โหลดคีย์ล้มเหลว"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("โหลดคีย์สำเร็จ"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("จัดการ"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("กลาง"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("อารมณ์"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("ตัวเลือกเพิ่มเติม"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("แชทใหม่"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("ไม่มีการสร้างภาพ"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "จำนวนภาพที่จะสร้าง ต้องอยู่ระหว่าง 1 ถึง 10"),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("จำนวนภาพ"),
        "options_openai": MessageLookupByLibrary.simpleMessage("ตัวเลือก"),
        "page_openai": MessageLookupByLibrary.simpleMessage("หน้า"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "โปรดตรวจสอบการเชื่อมต่อของคุณแล้วลองอีกครั้ง!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "กรุณากรอกข้อมูลให้ครบทุกช่อง"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("กรุณาใส่รหัส"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("รวดเร็ว"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("ใส่กุญแจของคุณที่นี่"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("สร้างการตอบสนองใหม่"),
        "remaining_openai":
            MessageLookupByLibrary.simpleMessage("ที่เหลืออยู่"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("ลบคีย์ล้มเหลว"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("นำคีย์ออกสำเร็จ"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("เอาออก"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("คืนค่าการตั้งค่า"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("รีเซ็ต"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("บันทึกคีย์ล้มเหลว"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("บันทึกคีย์เรียบร้อยแล้ว"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("บันทึกคีย์"),
        "save_openai": MessageLookupByLibrary.simpleMessage("บันทึก"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("ค้นหาโดยพรอมต์..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("คำหลักส่วน"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("หัวข้อส่วน"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("เลือกแชทล้มเหลว"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("เลือกพร้อมท์"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "share_openai": MessageLookupByLibrary.simpleMessage("หุ้น"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("ทักษะ"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("บางอย่างผิดพลาด!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "บางอย่างผิดพลาด! กรุณาลองใหม่อีกครั้งในภายหลัง. ขอบคุณมาก!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("คำพูดไม่พร้อมใช้งาน"),
        "style_openai": MessageLookupByLibrary.simpleMessage("สไตล์"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("แตะไมค์เพื่อพูด"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("สร้างข้อความ"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("ตัวสร้างข้อความ"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("พิมพ์ข้อความ ..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("ดูประเภท"),
        "view_openai": MessageLookupByLibrary.simpleMessage("ดู"),
        "write_openai": MessageLookupByLibrary.simpleMessage("เขียน")
      };
}
