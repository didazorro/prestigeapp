// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(limit) =>
      "У безкоштовній версії є лише ${limit}x пошук зображень.";

  static String m1(limit) =>
      "Лише у безкоштовній версії можна відобразити до ${limit} повідомлень.";

  static String m2(date) => "Термін дії підписки закінчився ${date}";

  static String m3(number) =>
      "Створити (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Про"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("застосувати"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("художник"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Скасувати"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Деталі чату"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Чат GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Спілкуйтеся з Ботом"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Чат"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Виберіть художника для свого образу"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Виберіть деталь для свого образу"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Виберіть засіб для свого зображення"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Виберіть настрій для свого образу"),
        "chooseUseCase_openai": MessageLookupByLibrary.simpleMessage(
            "Виберіть варіант використання"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Виберіть стиль для свого образу"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "Ви впевнені, що хочете очистити вміст?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Чіткий вміст"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Чітка розмова"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Очистити"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "Ви впевнені, що хочете видалити цей елемент?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Підтвердьте, якщо ви бажаєте продовжити видалення цього елемента. Ви не можете скасувати цю дію."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "Ви впевнені, що хочете видалити ключ?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Підтвердьте"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Вміст скопійовано в буфер обміну"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Копіювати"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не вдалося створити чат"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не вдалося видалити"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Видалити"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Докладно"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Завантажити"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("редагувати"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Не вдалося створити"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Створювати"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Сітка"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Генерація зображення"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Розмір зображення"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Ключ введення"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Інтерес"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Ваш ключ API зберігається локально на вашому мобільному телефоні та більше нікуди не надсилається. Ви можете зберегти свій ключ, щоб використовувати його пізніше. Ви також можете видалити свій ключ, якщо більше не хочете ним користуватися."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Недійсний ключ"),
        "jobRole_openai": MessageLookupByLibrary.simpleMessage("Посадова роль"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Робочі навички"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Стиль макета"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai": MessageLookupByLibrary.simpleMessage("Слухання..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не вдалося завантажити ключ"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Успішне завантаження ключа"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("управління"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("середній"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("настрій"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Більше опцій"),
        "newChat_openai": MessageLookupByLibrary.simpleMessage("Новий чат"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Зображення не генерується"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "Кількість зображень для створення. Має бути від 1 до 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("кількість зображень"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Параметри"),
        "page_openai": MessageLookupByLibrary.simpleMessage("сторінка"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "Перевірте підключення та повторіть спробу!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Будь ласка, заповніть усі поля"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Будь ласка, введіть ключ"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Підказуйте"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Покладіть свій ключ тут"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Відновити відповідь"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Залишився"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не вдалося видалити ключ"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Ключ успішно видалено"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("Видалити"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Скинути налаштування"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Скинути"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Не вдалося зберегти ключ"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Ключ успішно збережено"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Зберегти ключ"),
        "save_openai": MessageLookupByLibrary.simpleMessage("зберегти"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Пошук за запитом..."),
        "sectionKeywords_openai":
            MessageLookupByLibrary.simpleMessage("Ключові слова розділу"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Розділ Тема"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Виберіть Чат не вдалося"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Виберіть Підказка"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("налаштування"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Поділитися"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Навички"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("Щось пішло не так!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "Щось пішло не так! Будь-ласка спробуйте пізніше. Дуже дякую!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Мовлення недоступне"),
        "style_openai": MessageLookupByLibrary.simpleMessage("Стиль"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Торкніться мікрофона, щоб говорити"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Генерувати текст"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Генератор тексту"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Введіть повідомлення..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Вид перегляду"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Переглянути"),
        "write_openai": MessageLookupByLibrary.simpleMessage("Напишіть")
      };
}
