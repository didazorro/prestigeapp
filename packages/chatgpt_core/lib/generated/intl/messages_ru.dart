// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(limit) =>
      "В бесплатной версии есть только ${limit}x поиск изображений.";

  static String m1(limit) =>
      "Только в бесплатной версии может отображаться до ${limit} сообщений.";

  static String m2(date) => "Срок действия подписки ${date}";

  static String m3(number) =>
      "Создать (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Около"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Применять"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("художник"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("отменить"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Подробности чата"),
        "chatGPT_openai":
            MessageLookupByLibrary.simpleMessage("Теги GPT в чате"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Чат с ботом"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("чат"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Выберите исполнителя для вашего изображения"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Выберите детали для вашего образа"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Выберите средство для вашего изображения"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Выберите настроение для вашего образа"),
        "chooseUseCase_openai": MessageLookupByLibrary.simpleMessage(
            "Выберите вариант использования"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Выберите стиль для вашего образа"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить контент?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Очистить содержание"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Очистить разговор"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Очистить"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить этот элемент?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, подтвердите, если вы хотите продолжить удаление этого элемента. Это действие нельзя отменить."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить ключ?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("подтвердить"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Содержимое скопировано в буфер обмена"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("копия"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не удалось создать чат"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не удалось удалить"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("удалять"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("подробность"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Скачать"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("редактировать"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Не удалось сгенерировать"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("генерировать"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("сетка"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Создание изображения"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Размер изображения"),
        "inputKey_openai": MessageLookupByLibrary.simpleMessage("Ключ ввода"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("интерес"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Ваш API-ключ хранится локально на вашем мобильном телефоне и никогда никуда не отправляется. Вы можете сохранить свой ключ, чтобы использовать его позже. Вы также можете удалить свой ключ, если не хотите его больше использовать."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Неправильный ключ"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("рабочая роль"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Рабочие навыки"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Стиль макета"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Прослушивание ..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Ошибка загрузки ключа"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Загрузить ключ успешно"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("управлять"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Средняя"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Настроение"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Больше вариантов"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Новый чат"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Не генерируется изображение"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Количество изображений для создания. Должно быть от 1 до 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Количество изображений"),
        "options_openai": MessageLookupByLibrary.simpleMessage("опции"),
        "page_openai": MessageLookupByLibrary.simpleMessage("страница"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, проверьте подключение и повторите попытку!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, заполните все поля"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Пожалуйста, введите ключ"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("подсказка"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Положи сюда свой ключ"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Восстановить ответ"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("остальной"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Ошибка удаления ключа"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Ключ успешно удален"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Удалить"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Сбросить настройки"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Сброс"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Ошибка сохранения ключа"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Ключ успешно сохранен"),
        "saveKey_openai":
            MessageLookupByLibrary.simpleMessage("Сохранить ключ"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Поиск по подсказке..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Ключевые слова раздела"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Раздел Тема"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Выберите чат не удалось"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Выберите Подсказка"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("настройки"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Навыки"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Что-то пошло не так!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Что-то пошло не так! Пожалуйста, повторите попытку позже. Большое спасибо!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Речь недоступна"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Стиль"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Коснитесь микрофона, чтобы поговорить"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Генерация текста"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Генератор текста"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Введите сообщение ..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Тип просмотра"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Посмотреть"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Напишите")
      };
}
