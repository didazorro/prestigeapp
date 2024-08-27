// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(limit) => "무료 버전에는 ${limit}x 이미지 검색만 있습니다.";

  static String m1(limit) => "최대 ${limit} 개의 메시지는 무료 버전에서만 표시될 수 있습니다.";

  static String m2(date) => "구독 만료일 ${date}";

  static String m3(number) =>
      "생성(${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("약"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("대다"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("예술가"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("취소"),
        "chatDetail_openai": MessageLookupByLibrary.simpleMessage("채팅 세부정보"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("채팅 GPT"),
        "chatWithBot_openai": MessageLookupByLibrary.simpleMessage("봇과 채팅"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("잡담"),
        "chooseArtist_openai":
            MessageLookupByLibrary.simpleMessage("이미지의 아티스트 선택"),
        "chooseDetail_openai":
            MessageLookupByLibrary.simpleMessage("이미지 세부 정보 선택"),
        "chooseMedium_openai":
            MessageLookupByLibrary.simpleMessage("이미지의 매체 선택"),
        "chooseMood_openai":
            MessageLookupByLibrary.simpleMessage("이미지의 분위기를 선택하세요"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("사용 사례 선택"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage("이미지 스타일 선택"),
        "clearConfirm_openai":
            MessageLookupByLibrary.simpleMessage("콘텐츠를 삭제하시겠습니까?"),
        "clearContent_openai": MessageLookupByLibrary.simpleMessage("콘텐츠 지우기"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("명확한 대화"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("명확한"),
        "confirmDeleteItem_openai":
            MessageLookupByLibrary.simpleMessage("이 항목을 삭제 하시겠습니까?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "이 항목의 삭제를 계속하려면 확인하십시오. 이 작업은 실행취소할 수 없습니다."),
        "confirmRemoveKey_openai":
            MessageLookupByLibrary.simpleMessage("키를 제거하시겠습니까?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("확인"),
        "copiedToClipboard_openai":
            MessageLookupByLibrary.simpleMessage("클립보드에 복사된 내용"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("부"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("채팅 만들기 실패"),
        "deleteFailed_openai": MessageLookupByLibrary.simpleMessage("삭제 실패"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("지우다"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("세부 묘사"),
        "download_openai": MessageLookupByLibrary.simpleMessage("다운로드"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("편집하다"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("생성 실패"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("일으키다"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("그리드"),
        "imageGenerate_openai": MessageLookupByLibrary.simpleMessage("이미지 생성"),
        "imageSize_openai": MessageLookupByLibrary.simpleMessage("이미지 크기"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("입력 키"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("관심"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "API 키는 모바일에 로컬로 저장되며 다른 곳으로 전송되지 않습니다. 나중에 사용할 수 있도록 키를 저장할 수 있습니다. 키를 더 이상 사용하지 않으려면 키를 제거할 수도 있습니다."),
        "invalidKey_openai": MessageLookupByLibrary.simpleMessage("유효하지 않은 키"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("직무"),
        "jobSkills_openai": MessageLookupByLibrary.simpleMessage("직업 기술"),
        "layoutStyle_openai": MessageLookupByLibrary.simpleMessage("레이아웃 스타일"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("청취..."),
        "loadKeyFailed_openai": MessageLookupByLibrary.simpleMessage("키 로드 실패"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("키 성공 로드"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("꾸리다"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("매질"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("분위기"),
        "moreOptions_openai": MessageLookupByLibrary.simpleMessage("더 많은 옵션"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("새 채팅"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("이미지 생성 없음"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "생성할 이미지 수입니다. 1에서 10 사이여야 합니다."),
        "numberOfImages_openai": MessageLookupByLibrary.simpleMessage("이미지 수"),
        "options_openai": MessageLookupByLibrary.simpleMessage("옵션"),
        "page_openai": MessageLookupByLibrary.simpleMessage("페이지"),
        "pleaseCheckConnection_openai":
            MessageLookupByLibrary.simpleMessage("연결을 확인하고 다시 시도하십시오!"),
        "pleaseInputFillAllFields_openai":
            MessageLookupByLibrary.simpleMessage("모든 칸을 채워주세요"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("키를 입력하세요"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("신속한"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("여기에 열쇠를 두세요"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("응답 재생성"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("남은"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("키 제거 실패"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("키를 성공적으로 제거했습니다."),
        "remove_openai": MessageLookupByLibrary.simpleMessage("풀다"),
        "resetSettings_openai": MessageLookupByLibrary.simpleMessage("설정 재설정"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("다시 놓기"),
        "saveKeyFailed_openai": MessageLookupByLibrary.simpleMessage("키 저장 실패"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("성공적으로 저장된 키"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("키 저장"),
        "save_openai": MessageLookupByLibrary.simpleMessage("구하다"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("프롬프트로 검색..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("섹션 키워드"),
        "sectionTopic_openai": MessageLookupByLibrary.simpleMessage("섹션 주제"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("채팅 선택 실패"),
        "selectPrompt_openai": MessageLookupByLibrary.simpleMessage("프롬프트 선택"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("설정"),
        "share_openai": MessageLookupByLibrary.simpleMessage("몫"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("기술"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("뭔가 잘못됐어!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "문제가 발생했습니다. 나중에 다시 시도 해주십시오. 매우 감사합니다!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("음성을 사용할 수 없음"),
        "style_openai": MessageLookupByLibrary.simpleMessage("스타일"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai":
            MessageLookupByLibrary.simpleMessage("말하려면 마이크를 탭하세요."),
        "textGenerate_openai": MessageLookupByLibrary.simpleMessage("텍스트 생성"),
        "textGenerator_openai": MessageLookupByLibrary.simpleMessage("텍스트 생성기"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("메시지를 입력하십시오 ..."),
        "viewType_openai": MessageLookupByLibrary.simpleMessage("보기 유형"),
        "view_openai": MessageLookupByLibrary.simpleMessage("전망"),
        "write_openai": MessageLookupByLibrary.simpleMessage("쓰다")
      };
}
