// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bg locale. All the
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
  String get localeName => 'bg';

  static String m0(x) => "Активен ${x}";

  static String m1(attribute) => "Всякакъв ${attribute}";

  static String m2(point) => "Вашите налични точки: ${point}";

  static String m3(state) => "Bluetooth адаптерът е ${state}";

  static String m5(currency) => "Променена валута на ${currency}";

  static String m7(priceRate, pointRate) => "${priceRate} = ${pointRate} точки";

  static String m12(country) => "Страната ${country} не се поддържа";

  static String m13(currency) => "${currency} не се поддържа";

  static String m14(day) => "${day} дни преди";

  static String m15(total) => "~${total} км";

  static String m16(timeLeft) => "Свършва след ${timeLeft}";

  static String m17(captcha) => "Въведете ${captcha}, за да потвърдите:";

  static String m18(message) => "Грешка: ${message}";

  static String m20(time) => "Изтича след ${time}";

  static String m21(total) => ">${total} км";

  static String m22(hour) => "${hour} часа преди";

  static String m25(message) =>
      "Възникна проблем с приложението по време на заявката на данните, моля, свържете се с администратора за отстраняване на проблемите: ${message}";

  static String m26(currency, amount) =>
      "Максималната сума за използване на този начин на плащане е ${currency} ${amount}";

  static String m27(size) => "Максимален размер на файл: ${size} MB";

  static String m28(currency, amount) =>
      "Минималната сума за използване на този начин на плащане е ${currency} ${amount}";

  static String m29(minute) => "${minute} минути преди";

  static String m30(month) => "${month} месеца преди";

  static String m31(store) => "Още от ${store}";

  static String m32(number) => "трябва да се купува в групи от ${number}";

  static String m33(itemCount) => "${itemCount} артикула";

  static String m34(price) => "Обща стойност на опциите: ${price}";

  static String m35(amount) => "Платете ${amount}";

  static String m37(total) => "Количество: ${total}";

  static String m39(percent) => "Разпродажба ${percent}%";

  static String m43(second) => "${second} секунди преди";

  static String m44(totalCartQuantity) =>
      "Количка за пазаруване, ${totalCartQuantity} артикула";

  static String m45(numberOfUnitsSold) => "Продадено: ${numberOfUnitsSold}";

  static String m46(fieldName) => "Полето ${fieldName} е задължително";

  static String m47(total) => "${total} продукта";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Използвайте максимум ${maxPointDiscount} точки за ${maxPriceDiscount} отстъпка на тази поръчка!";

  static String m50(date) => "Валидно до ${date}";

  static String m52(message) => "Предупреждение: ${message}";

  static String m53(defaultCurrency) =>
      "Избраната в момента валута не е налична за функцията Портфейл, моля променете я на ${defaultCurrency}";

  static String m54(length) => "Намерихме ${length} продукта";

  static String m55(week) => "Седмица ${week}";

  static String m56(name) => "Добре дошъл, ${name}";

  static String m57(year) => "${year} години преди";

  static String m58(total) => "Вие сте назначени за поръчка №${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("За нас"),
        "account": MessageLookupByLibrary.simpleMessage("Профил"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Изтриването на профила ви премахва личната информация от нашата база данни."),
        "accountIsPendingApproval":
            MessageLookupByLibrary.simpleMessage("Профилът изчаква одобрение."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Номер на сметката"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Настройка на профила"),
        "active": MessageLookupByLibrary.simpleMessage("Активен"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Активен преди дълго време"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Активен в момента"),
        "addAName": MessageLookupByLibrary.simpleMessage("Добави име"),
        "addANewPost": MessageLookupByLibrary.simpleMessage("Добави нов пост"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Добавете линк"),
        "addAnAttr": MessageLookupByLibrary.simpleMessage("Добави атрибут"),
        "addListing": MessageLookupByLibrary.simpleMessage("Добави обява"),
        "addNew": MessageLookupByLibrary.simpleMessage("Добави нов"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Добави нов блог"),
        "addNewPost": MessageLookupByLibrary.simpleMessage("Създай нов пост"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Добави продукт"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Добави в кошницата"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "Максималното количество е превишено"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Добави към поръчката"),
        "added": MessageLookupByLibrary.simpleMessage("Добавено"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Успешно добавено"),
        "addingYourImage": MessageLookupByLibrary.simpleMessage(
            "Добавяне на вашето изображение"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Допълнителна информация"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Допълнителни услуги"),
        "address": MessageLookupByLibrary.simpleMessage("Адрес"),
        "adults": MessageLookupByLibrary.simpleMessage("Възрастни"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Следобед"),
        "agree": MessageLookupByLibrary.simpleMessage("Съгласявам се"),
        "agreeWithPrivacy": MessageLookupByLibrary.simpleMessage(
            "Политика за поверителност и Условия"),
        "albanian": MessageLookupByLibrary.simpleMessage("Албански"),
        "all": MessageLookupByLibrary.simpleMessage("Всичко"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Всички марки"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Всички поръчки"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Последни продажби"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Всички продукти"),
        "allow": MessageLookupByLibrary.simpleMessage("Разрешаване"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "Разрешаване на достъп до камерата?"),
        "almostSoldOut":
            MessageLookupByLibrary.simpleMessage("Почти разпродадено"),
        "amount": MessageLookupByLibrary.simpleMessage("Сума"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Изглед"),
        "apply": MessageLookupByLibrary.simpleMessage("Приложи"),
        "approve": MessageLookupByLibrary.simpleMessage("Одобри"),
        "approved": MessageLookupByLibrary.simpleMessage("Одобрен"),
        "arabic": MessageLookupByLibrary.simpleMessage("Арабски"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Сигурни ли сте?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Сигурни ли сте, че искате да изтриете профила си?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Придружена"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Поне 3 знака..."),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Атрибутът вече съществува"),
        "attributes": MessageLookupByLibrary.simpleMessage("Атрибути"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Открити са аудио елементи. Искате ли да ги добавите към аудио плейъра?"),
        "availability": MessageLookupByLibrary.simpleMessage("Наличност"),
        "availablePoints": m2,
        "averageRating": MessageLookupByLibrary.simpleMessage("Средна оценка"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "backOrder":
            MessageLookupByLibrary.simpleMessage("На предварителна заявка"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Обратно към магазина"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Назад към портфейла"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Колекции с чанти"),
        "balance": MessageLookupByLibrary.simpleMessage("Баланс"),
        "bank": MessageLookupByLibrary.simpleMessage("Банка"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Тип на банера в списъка"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Тип на банера"),
        "bannerYoutubeURL": MessageLookupByLibrary.simpleMessage(
            "URL адрес на банера в YouTube"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Основна информация"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Станете продавач"),
        "bengali": MessageLookupByLibrary.simpleMessage("Бенгалски"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Адрес за фактуриране"),
        "bleHasNotBeenEnabled":
            MessageLookupByLibrary.simpleMessage("Bluetooth не е активиран"),
        "bleState": m3,
        "blog": MessageLookupByLibrary.simpleMessage("Блог"),
        "booked": MessageLookupByLibrary.simpleMessage("Вече е резервиран"),
        "booking": MessageLookupByLibrary.simpleMessage("Резервация"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Отменена резервация"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Потвърдено"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Има нещо грешно. Моля, опитайте отново по-късно."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("История на резервациите"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Резервирай сега"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Успешно резервиране"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Обобщение на резервациите"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Резервацията не е налична"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Босненски"),
        "brand": MessageLookupByLibrary.simpleMessage("Марка"),
        "brazil": MessageLookupByLibrary.simpleMessage("Португалски"),
        "burmese": MessageLookupByLibrary.simpleMessage("Бирмански"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Купи сега"),
        "by": MessageLookupByLibrary.simpleMessage("от"),
        "byAppointmentOnly": MessageLookupByLibrary.simpleMessage(
            "Само с предварителна уговорка"),
        "byCategory": MessageLookupByLibrary.simpleMessage("По категория"),
        "byPrice": MessageLookupByLibrary.simpleMessage("По цена"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "С регистрацията си се съгласявате с нашите "),
        "byTag": MessageLookupByLibrary.simpleMessage("По етикет"),
        "call": MessageLookupByLibrary.simpleMessage("Обаждане"),
        "callTo": MessageLookupByLibrary.simpleMessage("Обаждане на"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Обадете се на собственика на магазина"),
        "canNotCreateOrder": MessageLookupByLibrary.simpleMessage(
            "Не може да се създаде поръчка"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "Не може да се създаде потребител."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Не може да се получат методи за плащане"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Не може да се получат методи за доставка"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Не може да се получи информация за токен."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Не може да се стартира това приложение, уверете се, че настройките във вашия config.dart са правилни"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "В момента връзката не е достъпна на този сайт."),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Съжаляваме, това видео не може да бъде възпроизведено."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Не може да се запази поръчката в уебсайта"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Не може да се актуализира информацията за потребителя."),
        "cancel": MessageLookupByLibrary.simpleMessage("Откажи"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Не може да се намери този номер на поръчката"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Не може да се избере дата в миналото"),
        "cardHolder":
            MessageLookupByLibrary.simpleMessage("Титуляр на картата"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Номер на карта"),
        "cart": MessageLookupByLibrary.simpleMessage("Количка"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Отстъпка от кошницата"),
        "cash": MessageLookupByLibrary.simpleMessage("В брой"),
        "categories": MessageLookupByLibrary.simpleMessage("Категории"),
        "category": MessageLookupByLibrary.simpleMessage("Категория"),
        "change": MessageLookupByLibrary.simpleMessage("промени"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Промяна на езика"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Сменете принтера"),
        "changedCurrencyTo": m5,
        "chat": MessageLookupByLibrary.simpleMessage("Чат"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Чат GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Съобщения"),
        "chatViaFacebook":
            MessageLookupByLibrary.simpleMessage("Чат чрез Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Чат чрез WhatsApp"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Чат с бота"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Чат със собственика на магазина"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Проверете вашия имейл за потвърждение на линка"),
        "checking": MessageLookupByLibrary.simpleMessage("Проверка..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Плащане"),
        "chinese": MessageLookupByLibrary.simpleMessage("Китайски"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Китайски (опростен)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Китайски (традиционен)"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Изберете категория"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Избери от галерията"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Избери от сървъра"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Изберете план"),
        "chooseStaff":
            MessageLookupByLibrary.simpleMessage("Изберете персонал"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Изберете тип"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Изберете метод на плащане"),
        "city": MessageLookupByLibrary.simpleMessage("Град"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("Градът е задължителен"),
        "clear": MessageLookupByLibrary.simpleMessage("Изчисти"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Изчисти кошницата"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Изчистете разговора"),
        "close": MessageLookupByLibrary.simpleMessage("Затвори"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Затворено сега"),
        "closed": MessageLookupByLibrary.simpleMessage("Затворено"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage(
            "Допълнителна такса за наложен платеж"),
        "color": MessageLookupByLibrary.simpleMessage("Цвят"),
        "comment": MessageLookupByLibrary.simpleMessage("Коментар"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Моля, напишете вашия коментар"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Коментарът е успешен, моля изчакайте, докато бъде одобрен"),
        "complete": MessageLookupByLibrary.simpleMessage("Завършено"),
        "confirm": MessageLookupByLibrary.simpleMessage("Потвърди"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Потвърдете изтриването на профила"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Количката ще бъде изчистена при зареждане."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Сигурни ли сте, че искате да изчистите кошницата?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Сигурни ли сте, че искате да изтриете това? Това действие не може да бъде отменено."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Сигурни ли сте, че искате да изтриете този елемент?"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Наистина ли искате да премахнете този продукт?"),
        "connect": MessageLookupByLibrary.simpleMessage("Свържи се"),
        "contact": MessageLookupByLibrary.simpleMessage("Свържете се с нас"),
        "content": MessageLookupByLibrary.simpleMessage("Съдържание"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Продължи към плащане"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Продължи към прегледа"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Продължи към доставката"),
        "continues": MessageLookupByLibrary.simpleMessage("Продължи"),
        "conversations": MessageLookupByLibrary.simpleMessage("Конверсации"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("Копирано"),
        "copy": MessageLookupByLibrary.simpleMessage("Копирай"),
        "country": MessageLookupByLibrary.simpleMessage("Държава"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Държавата е задължителна"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Код за отстъпка"),
        "couponHasBeenSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Купонът е успешно запазен."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Вашият код за отстъпка е невалиден"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Поздравления! Кодът за отстъпка е успешно приложен"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Създай профил"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Вашият пост беше успешно създаден като чернова. Моля, погледнете на администраторския си сайт."),
        "createPost": MessageLookupByLibrary.simpleMessage("Създай пост"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Създай продукт"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Създай всички варианти"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Създадено на: "),
        "currencies": MessageLookupByLibrary.simpleMessage("Валути"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Текуща парола"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("В момента имаме само"),
        "customer": MessageLookupByLibrary.simpleMessage("Клиент"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Детайли за клиента"),
        "customerNote":
            MessageLookupByLibrary.simpleMessage("Забележка от клиента"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Чешки"),
        "danish": MessageLookupByLibrary.simpleMessage("Датски"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Тъмен дизайн"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Табло"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Няма данни"),
        "date": MessageLookupByLibrary.simpleMessage("Дата"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Дата възходящо"),
        "dateBooking":
            MessageLookupByLibrary.simpleMessage("Дата на резервация"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Дата низходящо"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Крайна дата"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Дата: Най-нови"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Дата: Най-стари"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Начална дата"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Дата и час"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Затваряне според датата"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Дебит"),
        "decline": MessageLookupByLibrary.simpleMessage("Отказване"),
        "delete": MessageLookupByLibrary.simpleMessage("Изтрий"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Изтрий профила"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Сигурни ли сте, че искате да изтриете профила си? Моля, прочетете как ще се отрази изтриването на профила."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Профилът е изтрит успешно. Вашата сесия е изтекла."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Изтрий всичко"),
        "delivered": MessageLookupByLibrary.simpleMessage("Доставена"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Доставено на"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Доставчик:"),
        "deliveryDate":
            MessageLookupByLibrary.simpleMessage("Дата на доставка"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Детайли за доставката"),
        "deliveryManagement":
            MessageLookupByLibrary.simpleMessage("Управление на доставката"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Няма данни.\nТази поръчка е премахната."),
        "description": MessageLookupByLibrary.simpleMessage("Описание"),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Не сте получили кода? "),
        "direction": MessageLookupByLibrary.simpleMessage("Посока"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Забрана за покупка"),
        "discount": MessageLookupByLibrary.simpleMessage("Отстъпка"),
        "displayName": MessageLookupByLibrary.simpleMessage("Показвано име"),
        "distance": m15,
        "doNotAnyTransactions":
            MessageLookupByLibrary.simpleMessage("Все още нямате транзакции"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Искате ли да излезете от приложението"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Искате ли да излезете?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "Apple Pay не е наличен на това устройство!"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Нямате профил?"),
        "download": MessageLookupByLibrary.simpleMessage("Изтегли"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Изтегли приложението"),
        "draft": MessageLookupByLibrary.simpleMessage("Чернова"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Шофьорът е определен"),
        "duration": MessageLookupByLibrary.simpleMessage("Продължителност"),
        "dutch": MessageLookupByLibrary.simpleMessage("Холандски"),
        "earnings": MessageLookupByLibrary.simpleMessage("Печалби"),
        "edit": MessageLookupByLibrary.simpleMessage("Редакция: "),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Редактиране на информация за продукта"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Редакция"),
        "egypt": MessageLookupByLibrary.simpleMessage("Египетски"),
        "email": MessageLookupByLibrary.simpleMessage("Електронна поща"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Изтриването на профила ви ще ви отпише от всички списъци с електронна поща."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "Електронната поща, която сте въвели, не съществува. Моля, опитайте отново."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("Имейлът е задължителен"),
        "emailSubscription": MessageLookupByLibrary.simpleMessage(
            "Абонамент за електронна поща"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Изглежда, че все още не сте добавили никакви артикули в чантата. Започнете да пазарувате, за да я пълните."),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Вашият коментар не може да бъде празен"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Все още не сте търсили за артикули. Нека започнем сега - ние ще ви помогнем."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Няма налични опции за доставка. Моля, уверете се, че адресът ви е въведен правилно или се свържете с нас, ако имате нужда от помощ."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "Потребителско име/Имейл е празно"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Докоснете всяко сърце до продукт, за да го добавите към любимите си. Ще ги запазим тук за вас!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Активирайте за плащане"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Активирайте за вход"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Активирайте за портфейл"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Включване на режим ваканция"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Моля, изберете дата след първата дата"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Английски"),
        "enterCaptcha": m17,
        "enterSentCode":
            MessageLookupByLibrary.simpleMessage("Въведете кода, изпратен на"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Въведете вашия имейл"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Въведете вашия имейл или потребителско име"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Въведете вашето първо име"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Въведете вашето фамилно име"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Моля, въведете своя мобилен номер"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Въведете вашия парола"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Въведете вашия телефонен номер, за да започнете."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Въведете вашия телефонен номер"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Въведената сума е по-голяма от текущата сума в портфейла. Моля, опитайте отново!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Моля, въведете валиден имейл адрес."),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Моля, въведете парола с поне 8 знака"),
        "evening": MessageLookupByLibrary.simpleMessage("Вечер"),
        "events": MessageLookupByLibrary.simpleMessage("Събития"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Очаквана дата на доставка"),
        "expired": MessageLookupByLibrary.simpleMessage("Изтекла"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Дата на изтичане"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("ММ/ГГ"),
        "expiringInTime": m20,
        "external": MessageLookupByLibrary.simpleMessage("Външен"),
        "extraServices":
            MessageLookupByLibrary.simpleMessage("Допълнителни услуги"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Неуспешно присвояване на потребител"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Неуспешно генериране на връзка"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Неуспешно зареждане на конфигурацията на приложението. Моля, опитайте отново или рестартирайте приложението си."),
        "failedToLoadImage": MessageLookupByLibrary.simpleMessage(
            "Неуспешно зареждане на изображението"),
        "favorite": MessageLookupByLibrary.simpleMessage("Любими"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Функцията не е налична"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Продукти в избраното"),
        "featured": MessageLookupByLibrary.simpleMessage("Избрани"),
        "features": MessageLookupByLibrary.simpleMessage("Характеристики"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Файлът е твърде голям. Моля, изберете по-малък файл!"),
        "fileUploadFailed":
            MessageLookupByLibrary.simpleMessage("Неуспешно качване на файл!"),
        "files": MessageLookupByLibrary.simpleMessage("Файлове"),
        "filter": MessageLookupByLibrary.simpleMessage("Филтър"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Пръстови отпечатъци, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Завършване на настройките"),
        "finnish": MessageLookupByLibrary.simpleMessage("Финландски"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Бъдете първият, който коментира този пост!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Име"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Името е задължително"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Първо подновяване"),
        "fixedCartDiscount": MessageLookupByLibrary.simpleMessage(
            "Фиксирана отстъпка от кошницата"),
        "fixedProductDiscount": MessageLookupByLibrary.simpleMessage(
            "Фиксирана отстъпка от продукта"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("за този продукт"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Безплатно"),
        "french": MessageLookupByLibrary.simpleMessage("Френски"),
        "friday": MessageLookupByLibrary.simpleMessage("Петък"),
        "from": MessageLookupByLibrary.simpleMessage("От"),
        "fullName": MessageLookupByLibrary.simpleMessage("Пълно име"),
        "gallery": MessageLookupByLibrary.simpleMessage("Галерия"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Общи настройки"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Генериране на връзка..."),
        "german": MessageLookupByLibrary.simpleMessage("Немски"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Получавай известия"),
        "getNotified":
            MessageLookupByLibrary.simpleMessage("Бъдете уведомени!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Получете линк за парола"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Започнете"),
        "goBack": MessageLookupByLibrary.simpleMessage("Назад"),
        "goBackHomePage": MessageLookupByLibrary.simpleMessage(
            "Върни се на началната страница"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Върни се към адреса"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Върни се към прегледа"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Върни се към доставката"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("Гръцки"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Брутни продажби"),
        "grouped": MessageLookupByLibrary.simpleMessage("Групиран"),
        "guests": MessageLookupByLibrary.simpleMessage("Гости"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("е изтрит"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Иврит"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Скрий за нас"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Скрий адреса"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Скрий имейла"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Скрий картата"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Скрий телефона"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Скрий политиката"),
        "hindi": MessageLookupByLibrary.simpleMessage("Хинди"),
        "history": MessageLookupByLibrary.simpleMessage("История"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("История"),
        "home": MessageLookupByLibrary.simpleMessage("Начало"),
        "hour": MessageLookupByLibrary.simpleMessage("Час"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("Унгарски"),
        "hungary": MessageLookupByLibrary.simpleMessage("Унгарски"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Съгласен съм с"),
        "imIn": MessageLookupByLibrary.simpleMessage("Участвам"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Избрано изображение"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("Галерия с изображения"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("Генериране на изображение"),
        "imageNetwork":
            MessageLookupByLibrary.simpleMessage("Мрежа за изображения"),
        "inStock": MessageLookupByLibrary.simpleMessage("В наличност"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Грешна парола"),
        "india": MessageLookupByLibrary.simpleMessage("Хинди"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Индонезийски"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Незабавно затваряне"),
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Невалиден телефонен номер"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Невалиден код за потвърждение по SMS"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Невалидна година на раждане"),
        "invoice": MessageLookupByLibrary.simpleMessage("Фактура"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Всичко ли е наред...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("пише..."),
        "italian": MessageLookupByLibrary.simpleMessage("Италиански"),
        "item": MessageLookupByLibrary.simpleMessage("Артикул"),
        "itemTotal": MessageLookupByLibrary.simpleMessage("Общо за артикула: "),
        "items": MessageLookupByLibrary.simpleMessage("артикули"),
        "itsOrdered":
            MessageLookupByLibrary.simpleMessage("Поръчката е направена!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Искам да създам профил"),
        "japanese": MessageLookupByLibrary.simpleMessage("Японски"),
        "kannada": MessageLookupByLibrary.simpleMessage("Канада"),
        "keep": MessageLookupByLibrary.simpleMessage("Запази"),
        "khmer": MessageLookupByLibrary.simpleMessage("Кхмерски"),
        "korean": MessageLookupByLibrary.simpleMessage("Корейски"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Кюрдски"),
        "language": MessageLookupByLibrary.simpleMessage("Език"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "Езикът е успешно актуализиран"),
        "lao": MessageLookupByLibrary.simpleMessage("Лаоски"),
        "lastName": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Фамилията е задължителна"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Последни транзакции"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Най-нови продукти"),
        "layout": MessageLookupByLibrary.simpleMessage("Оформление"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Светъл дизайн"),
        "link": MessageLookupByLibrary.simpleMessage("Връзка"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Тип на банера в списъка"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Видео банер в списъка"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Съобщения за известия"),
        "listening": MessageLookupByLibrary.simpleMessage("Слушане..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Зареждането неуспешно!"),
        "loading": MessageLookupByLibrary.simpleMessage("Зареждане..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Зареждане на връзката..."),
        "location": MessageLookupByLibrary.simpleMessage("Местоположение"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Заключване на екрана и сигурност"),
        "login": MessageLookupByLibrary.simpleMessage("Вход"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Входът е отменен"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Неуспешно влизане!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Неуспешно влизане! Моля, свържете се с администратора, за да провери вашия акаунт/роля."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Влизане успешно!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Моля, влезте, за да коментирате"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Моля, влезте, за да продължите"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Вход в профила ви"),
        "logout": MessageLookupByLibrary.simpleMessage("Изход"),
        "malay": MessageLookupByLibrary.simpleMessage("Малайски"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Колекции за мъже"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Управление на API ключ"),
        "manageStock":
            MessageLookupByLibrary.simpleMessage("Управление на склада"),
        "map": MessageLookupByLibrary.simpleMessage("Карта"),
        "marathi": MessageLookupByLibrary.simpleMessage("Марати"),
        "markAsRead":
            MessageLookupByLibrary.simpleMessage("Маркирай като прочетено"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Маркирай като изпратено"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Маркирай като непрочетено"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Може би по-късно"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Поръчка от менюто"),
        "message": MessageLookupByLibrary.simpleMessage("Съобщение"),
        "messageTo":
            MessageLookupByLibrary.simpleMessage("Изпращане на съобщение на"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Минималното количество е"),
        "minutesAgo": m29,
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Мобилна Верификация"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("преди момент"),
        "monday": MessageLookupByLibrary.simpleMessage("Понеделник"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...още"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Повече информация"),
        "morning": MessageLookupByLibrary.simpleMessage("Сутрин"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem": MessageLookupByLibrary.simpleMessage(
            "Трябва да изберете 1 артикул"),
        "myCart": MessageLookupByLibrary.simpleMessage("Моята кошница"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Моите точки"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Моите продукти"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Нямате никакви продукти. Опитайте да създадете един!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Моят портфейл"),
        "myWishList": MessageLookupByLibrary.simpleMessage("Моите желания"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Име"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Име на карта"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("Близки места"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Трябва да влезете отново, за да се отразят промените"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Нидерландски"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Ново съдържание налично!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Нова парола"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Нов вариант"),
        "next": MessageLookupByLibrary.simpleMessage("Следващ"),
        "niceName": MessageLookupByLibrary.simpleMessage("Приятно име"),
        "no": MessageLookupByLibrary.simpleMessage("Не"),
        "noBackHistoryItem":
            MessageLookupByLibrary.simpleMessage("Няма история за връщане"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Опс, блогът вече не съществува"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Не е разрешено използването на камерата. Моля, разрешете го в настройките на вашето устройство."),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Все още няма разговор"),
        "noData": MessageLookupByLibrary.simpleMessage("Няма налични данни"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Все още няма предпочитани."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Няма наличен файл за изтегляне."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Няма история за преминаване напред"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Няма интернет връзка"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("Няма списък в близост!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Няма поръчки"),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Съжаляваме, но този продукт не е достъпен за вашата текуща роля."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Този продукт е достъпен за потребители с конкретни роли."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Моля, влезте със съответните учетни данни, за да получите достъп до този продукт или се свържете с нас за повече информация."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Опс, тази страница вече не съществува!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Няма принтери"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Няма продукт"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Няма намерени резултати"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Няма прегледи"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Няма налични слотове"),
        "noThanks":
            MessageLookupByLibrary.simpleMessage("Благодаря, не е необходимо"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Съжаляваме, няма намерени видеа."),
        "none": MessageLookupByLibrary.simpleMessage("Няма"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Съжаляваме, не можахме да намерим резултати."),
        "notFound": MessageLookupByLibrary.simpleMessage("Не е намерено"),
        "note": MessageLookupByLibrary.simpleMessage("Бележка към поръчката"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("бележка"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Бележка (по избор)"),
        "notice": MessageLookupByLibrary.simpleMessage("Забележка"),
        "notifications": MessageLookupByLibrary.simpleMessage("Известия"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Известия за последните оферти и наличност на продукти"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("от този продукт"),
        "ok": MessageLookupByLibrary.simpleMessage("ОК"),
        "on": MessageLookupByLibrary.simpleMessage("на"),
        "onSale": MessageLookupByLibrary.simpleMessage("Продажба"),
        "onVacation": MessageLookupByLibrary.simpleMessage("На ваканция"),
        "online": MessageLookupByLibrary.simpleMessage("Онлайн"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Отворено 24 часа"),
        "openMap": MessageLookupByLibrary.simpleMessage("Карта"),
        "openNow": MessageLookupByLibrary.simpleMessage("Отворено сега"),
        "openingHours": MessageLookupByLibrary.simpleMessage("Работно време"),
        "options": MessageLookupByLibrary.simpleMessage("Опции"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("ИЛИ"),
        "orLoginWith": MessageLookupByLibrary.simpleMessage("или влезте с"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Потвърждение на поръчката"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Сигурни ли сте, че искате да направите поръчката?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Дата на поръчката"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Детайли за поръчката"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("История на поръчките"),
        "orderId": MessageLookupByLibrary.simpleMessage("Номер на поръчката: "),
        "orderIdWithoutColon": MessageLookupByLibrary.simpleMessage(
            "Идентификационен номер на поръчката"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Номер на поръчката"),
        "orderNotes":
            MessageLookupByLibrary.simpleMessage("Бележки към поръчката"),
        "orderNumber":
            MessageLookupByLibrary.simpleMessage("Номер на поръчката"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Отменена обръщане"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Отменена"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Обратно теглене"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Завършена"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Отказана"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Изтекла"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Неуспешна"),
        "orderStatusOnHold":
            MessageLookupByLibrary.simpleMessage("На изчакване"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Изчакваща"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Изчаква плащане"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Обработена"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("В процес на обработка"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Възстановена"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("Обърната"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Изпратена"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Анулирана"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Можете да проверите статуса на поръчката си, използвайки функцията за проследяване на доставката. Ще получите потвърждение за поръчката по имейл с подробности за поръчката ви и линк за проследяване на напредъка й."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Можете да влезете в своя профил, използвайки имейл и парола, определени преди това. Във вашия профил можете да редактирате данните си, да проверявате историята на транзакциите си, да редактирате абонамента си за бюлетин."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Поръчката ви е успешно направена"),
        "orderSuccessTitle2":
            MessageLookupByLibrary.simpleMessage("Вашият профил"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Резюме на поръчката"),
        "orderTotal":
            MessageLookupByLibrary.simpleMessage("Обща сума на поръчката"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Следене на поръчката"),
        "orders": MessageLookupByLibrary.simpleMessage("Поръчки"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("Потвърждение с OTP код"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Наши банкови данни"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Изчерпано"),
        "pageView": MessageLookupByLibrary.simpleMessage("Преглед на страница"),
        "paid": MessageLookupByLibrary.simpleMessage("Платено"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Платено състояние"),
        "password": MessageLookupByLibrary.simpleMessage("Парола"),
        "pasteYourImageUrl": MessageLookupByLibrary.simpleMessage(
            "Поставете вашия URL адрес на изображението"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Плащане с портфейл"),
        "payNow": MessageLookupByLibrary.simpleMessage("Плати сега"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Плащане"),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Метод на плащане"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Този начин на плащане не се поддържа"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Методи на плащане"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Плащането е успешно"),
        "pending": MessageLookupByLibrary.simpleMessage("В очакване"),
        "persian": MessageLookupByLibrary.simpleMessage("Персийски"),
        "phone": MessageLookupByLibrary.simpleMessage("Телефон"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("Телефонът е празен"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Формат: +84123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "Телефонният номер е задължителен"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Телефонен номер"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Потвърждение на телефонния номер"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Изберете дата и час"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Потвърди поръчката"),
        "playAll":
            MessageLookupByLibrary.simpleMessage("Възпроизвеждане на всички"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Моля, добавете цена"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Моля, съгласете се с нашите условия"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Моля, разрешете достъп до камерата и галерията"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Моля, проверете интернет връзката си!"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Моля, изберете категория"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Моля, въведете името на продукта"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Моля, попълнете кода си"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Моля, попълнете правилно всички полета"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Моля, увеличете или намалете количеството, за да продължите."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Моля, попълнете задължителните полета"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Моля, попълнете всички полета"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Моля, изберете дата за резервация"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Моля, изберете местоположение"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Моля, изберете опция за всяко свойство на продукта"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Моля, изберете поне 1 вариантен атрибут за всеки активен атрибут"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Моля, изберете изображения"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Моля, изберете задължителните опции!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Моля, влезте в профила си преди да качите файлове."),
        "point": MessageLookupByLibrary.simpleMessage("Точка"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Настройката за точки за отстъпка не е намерена на сървъра"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Моля, въведете точки за отстъпка"),
        "pointMsgMaximumDiscountPoint": MessageLookupByLibrary.simpleMessage(
            "Максимален брой точки за отстъпка"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Нямате достатъчно точки за отстъпка. Общият брой точки за отстъпка е"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Достигнахте максималния брой точки за отстъпка"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Общата стойност на отстъпката надвишава общата стойност на сметката"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "Точките за отстъпка са премахнати"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Точките за отстъпка са успешно приложени"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Има правило за отстъпка за прилагане на вашите точки към кошницата"),
        "polish": MessageLookupByLibrary.simpleMessage("Полски"),
        "popular": MessageLookupByLibrary.simpleMessage("Популярни"),
        "popularity": MessageLookupByLibrary.simpleMessage("Популярност"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Този адрес ще бъде запазен на вашето устройство. Той НЕ е адресът на потребителя."),
        "postContent": MessageLookupByLibrary.simpleMessage("Съдържание"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Създаването на вашия пост не бе успешно"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Избрано изображение"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Управление на постове"),
        "postProduct":
            MessageLookupByLibrary.simpleMessage("Публикувай продукт"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Вашият пост беше успешно създаден"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Заглавие"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Предплатено"),
        "prev": MessageLookupByLibrary.simpleMessage("Предишен"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Цена: Висока към Ниска"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Цена: Ниска към Висока"),
        "prices": MessageLookupByLibrary.simpleMessage("Менюта"),
        "printReceipt":
            MessageLookupByLibrary.simpleMessage("Отпечатайте касова бележка"),
        "printer": MessageLookupByLibrary.simpleMessage("Принтер"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Принтерът не е намерен"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Избор на принтер"),
        "printing": MessageLookupByLibrary.simpleMessage("Отпечатване..."),
        "privacyAndTerm": MessageLookupByLibrary.simpleMessage(
            "Политика за поверителност и Условия"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Политика за поверителност"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Поверителност и Условия"),
        "private": MessageLookupByLibrary.simpleMessage("Частен"),
        "product": MessageLookupByLibrary.simpleMessage("Продукт"),
        "productAdded":
            MessageLookupByLibrary.simpleMessage("Продуктът е добавен"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Вашият продукт ще се появи след преглед."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Съжаляваме, този продукт не може да бъде достъпен, защото е изтекъл."),
        "productName": MessageLookupByLibrary.simpleMessage("Име на продукта"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Името на продукта не може да бъде празно"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Продуктът от тип променлива изисква поне един вариант"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Продуктът от прост тип изисква име и обичайна цена"),
        "productRating": MessageLookupByLibrary.simpleMessage("Вашата оценка"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Отзив за продукта"),
        "productType": MessageLookupByLibrary.simpleMessage("Тип на продукта"),
        "products": MessageLookupByLibrary.simpleMessage("Продукти"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("PromptPay ID:"),
        "promptPayName": MessageLookupByLibrary.simpleMessage("PromptPay Име:"),
        "promptPayType": MessageLookupByLibrary.simpleMessage("PromptPay Тип:"),
        "publish": MessageLookupByLibrary.simpleMessage("Публикувай"),
        "pullToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Изтеглете, за да заредите повече"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "QR кодът беше успешно запазен."),
        "qRCodeSaveFailure": MessageLookupByLibrary.simpleMessage(
            "Неуспешно запазване на QR код"),
        "qty": MessageLookupByLibrary.simpleMessage("бр"),
        "qtyTotal": m37,
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Текущото количество е повече от наличното количество"),
        "rate": MessageLookupByLibrary.simpleMessage("Оцени"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Оцени приложението"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Оцени това приложение"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Ако харесвате това приложение, моля, отделете малко време, за да го прегледате!\nТова наистина ни помага и не би трябвало да ви отнеме повече от минута."),
        "rating": MessageLookupByLibrary.simpleMessage("рейтинг"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Моля, дайте оценка преди да изпратите коментара си"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Повторно поръчай"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Прегледи"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Получени пари"),
        "receiver": MessageLookupByLibrary.simpleMessage("Получател"),
        "recent": MessageLookupByLibrary.simpleMessage("Последни"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Последни търсения"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("Последно прегледани"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Скоро прегледани"),
        "recommended": MessageLookupByLibrary.simpleMessage("Препоръчано"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Повтарящи се общи стойности"),
        "refresh": MessageLookupByLibrary.simpleMessage("Обновяване"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Заявката за възстановяване на поръчката беше неуспешна"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Заявете възстановяване на поръчката успешно!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Искане за възстановяване"),
        "refundRequested": MessageLookupByLibrary.simpleMessage(
            "Изискана е връщане на средства"),
        "refunds": MessageLookupByLibrary.simpleMessage("Възстановявания"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Прегенерирайте отговора"),
        "registerAs":
            MessageLookupByLibrary.simpleMessage("Регистрирай се като"),
        "registerAsVendor": MessageLookupByLibrary.simpleMessage(
            "Регистрирай се като продавач"),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Регистрацията не бе успешна"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Регистрацията бе успешна"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Стандартна цена"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Свързани блогове"),
        "releaseToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Отпуснете, за да заредите повече"),
        "remove": MessageLookupByLibrary.simpleMessage("Премахни"),
        "removeFromWishList": MessageLookupByLibrary.simpleMessage(
            "Премахни от списъка с желания"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Заявка за резервация"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Имате заявени твърде много кодове в кратко време. Моля, опитайте отново по-късно."),
        "resend": MessageLookupByLibrary.simpleMessage(" ИЗПРАТИ ПОВТОРНО"),
        "reset": MessageLookupByLibrary.simpleMessage("Нулиране"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Нулиране на паролата"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Нулиране на вашата парола"),
        "results": MessageLookupByLibrary.simpleMessage("Резултати"),
        "retry": MessageLookupByLibrary.simpleMessage("Опитайте отново"),
        "review": MessageLookupByLibrary.simpleMessage("Преглед"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Одобрение на отзив"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Вашият отзив е изпратен и изчаква одобрение!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Вашият отзив е изпратен!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Отзиви"),
        "romanian": MessageLookupByLibrary.simpleMessage("Румънски"),
        "russian": MessageLookupByLibrary.simpleMessage("Руски"),
        "sale": m39,
        "salePrice":
            MessageLookupByLibrary.simpleMessage("Цена на разпродажба"),
        "saturday": MessageLookupByLibrary.simpleMessage("Събота"),
        "save": MessageLookupByLibrary.simpleMessage("Запази"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Запази адрес"),
        "saveAddressSuccess":
            MessageLookupByLibrary.simpleMessage("Адресът е успешно запазен"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Запази за по-късно"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Запази QR код"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Запази в списъка с желания"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Този артикул не може да бъде сканиран"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "За да сканирате поръчка, трябва да влезете в профила си"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Тази поръчка не е налична за вашия профил"),
        "search": MessageLookupByLibrary.simpleMessage("Търсене"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Търсене по име на страна или телефонен код"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Търсене по име..."),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Търсене на артикули"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Моля, напишете нещо в полето за търсене"),
        "searchOrderId": MessageLookupByLibrary.simpleMessage(
            "Търсене по номер на поръчката..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Търсене на място"),
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Търсене на адрес"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Виж всички"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Продължете да виждате ново съдържание в приложението си."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Виж поръчка"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Виж отзиви"),
        "select": MessageLookupByLibrary.simpleMessage("Избери"),
        "selectAddress": MessageLookupByLibrary.simpleMessage("Изберете адрес"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Избери всички"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Изберете дати"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Изборът на файл е отменен!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Избери изображение"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Избери нито един"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Изберете принтер"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Изберете роля"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Изберете магазин"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Изберете цвета"),
        "selectTheFile": MessageLookupByLibrary.simpleMessage("Изберете файла"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Изберете точката"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Изберете количество"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Изберете размера"),
        "send": MessageLookupByLibrary.simpleMessage("Изпрати"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Изпрати обратно"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Изпрати код"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Изпратете SMS на собственика на магазина"),
        "serbian": MessageLookupByLibrary.simpleMessage("Сръбски"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Сесията изтече"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Моля, задайте адрес в страницата с настройки"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "setup": MessageLookupByLibrary.simpleMessage("Настройка"),
        "share": MessageLookupByLibrary.simpleMessage("Сподели"),
        "shipped": MessageLookupByLibrary.simpleMessage("Изпратена"),
        "shipping": MessageLookupByLibrary.simpleMessage("Доставка"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Адрес за доставка"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Метод на доставка"),
        "shop": MessageLookupByLibrary.simpleMessage("Магазин"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Имейл на магазина"),
        "shopName": MessageLookupByLibrary.simpleMessage("Име на магазина"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Поръчки в магазина"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Телефон на магазина"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Магазин слъг"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Кратко описание"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Покажи всички мои поръчки"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Детайли"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Покажи галерията"),
        "showLess": MessageLookupByLibrary.simpleMessage("Покажи по-малко"),
        "showMore": MessageLookupByLibrary.simpleMessage("Покажи още"),
        "signIn": MessageLookupByLibrary.simpleMessage("Вход"),
        "signInWithEmail": MessageLookupByLibrary.simpleMessage("Вход с имейл"),
        "signUp": MessageLookupByLibrary.simpleMessage("Регистрация"),
        "signup": MessageLookupByLibrary.simpleMessage("Регистрация"),
        "simple": MessageLookupByLibrary.simpleMessage("Прост"),
        "size": MessageLookupByLibrary.simpleMessage("Размер"),
        "skip": MessageLookupByLibrary.simpleMessage("Пропусни"),
        "sku": MessageLookupByLibrary.simpleMessage("Артикул"),
        "slovak": MessageLookupByLibrary.simpleMessage("Словашки"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "СМС кодът е изтекъл. Моля, изпратете отново верификационния код, за да опитате отново."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Продава се от"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Нещо се обърка. Моля, опитайте отново по-късно."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Сортирай по"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Код за сортиране"),
        "spanish": MessageLookupByLibrary.simpleMessage("Испански"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Речта не е налична"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Започнете изследването"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Започнете пазаруването"),
        "state": MessageLookupByLibrary.simpleMessage("Щат"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("Областта е задължителна"),
        "stateProvince":
            MessageLookupByLibrary.simpleMessage("Област / Провинция"),
        "status": MessageLookupByLibrary.simpleMessage("Статус"),
        "stock": MessageLookupByLibrary.simpleMessage("На склад"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Количество на склад"),
        "stop": MessageLookupByLibrary.simpleMessage("Спри"),
        "store": MessageLookupByLibrary.simpleMessage("Магазин"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Адрес на магазина"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Банер"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Марка на магазина"),
        "storeClosed": MessageLookupByLibrary.simpleMessage(
            "Магазинът е затворен в момента"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Имейл на магазина"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Информация за магазина"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Списъчен банер на магазина"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Местоположение на магазина"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Лого на магазина"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Мобилен банер на магазина"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Настройки на магазина"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Скользящий баннер магазина"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Статичен банер на магазина"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Ваканция на магазина"),
        "stores": MessageLookupByLibrary.simpleMessage("Магазини"),
        "street": MessageLookupByLibrary.simpleMessage("Улица"),
        "street2": MessageLookupByLibrary.simpleMessage("Улица 2"),
        "streetIsRequired": MessageLookupByLibrary.simpleMessage(
            "Името на улицата е задължително"),
        "streetName": MessageLookupByLibrary.simpleMessage("Улица"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Апартамент"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Блок"),
        "submit": MessageLookupByLibrary.simpleMessage("Подай"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Подайте вашия пост"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Общо"),
        "sunday": MessageLookupByLibrary.simpleMessage("Неделя"),
        "support": MessageLookupByLibrary.simpleMessage("Поддръжка"),
        "swahili": MessageLookupByLibrary.simpleMessage("Суахили"),
        "swedish": MessageLookupByLibrary.simpleMessage("Шведски"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Този таг не съществува"),
        "tags": MessageLookupByLibrary.simpleMessage("Етикети"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Снимай"),
        "tamil": MessageLookupByLibrary.simpleMessage("Тамил"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Докоснете, за да изберете това място"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Докоснете микрофона, за да говорите"),
        "tax": MessageLookupByLibrary.simpleMessage("Данък"),
        "thailand": MessageLookupByLibrary.simpleMessage("Тайландски"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("Тази дата не е налична"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Тази функционалност не поддържа текущия език"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Това е ролята на клиента"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("Това е ролята на продавача"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Тази платформа не поддържа webview"),
        "thisProductNotSupport":
            MessageLookupByLibrary.simpleMessage("Този продукт не се поддържа"),
        "thursday": MessageLookupByLibrary.simpleMessage("Четвъртък"),
        "tickets": MessageLookupByLibrary.simpleMessage("Билети"),
        "time": MessageLookupByLibrary.simpleMessage("Време"),
        "title": MessageLookupByLibrary.simpleMessage("Заглавие"),
        "titleAToZ":
            MessageLookupByLibrary.simpleMessage("Заглавие: от А до З"),
        "titleZToA":
            MessageLookupByLibrary.simpleMessage("Заглавие: от З до А"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Твърде много неуспешни опити за вход. Моля, опитайте отново по-късно."),
        "topUp": MessageLookupByLibrary.simpleMessage("Зареждане"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Продуктът за зареждане не е намерен"),
        "total": MessageLookupByLibrary.simpleMessage("Обща сума"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Общата стойност на поръчката трябва да е поне"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Обща данъчна сума"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Номер за проследяване"),
        "trackingPage":
            MessageLookupByLibrary.simpleMessage("Страница за проследяване"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Транзакцията е отменена"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Детайл за транзакцията"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("Транзакцията не бе успешна"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Такса за транзакция"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Резултат от транзакцията"),
        "transfer": MessageLookupByLibrary.simpleMessage("Трансфер"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Потвърждение на трансфера"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Не можете да прехвърлите към този потребител"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Трансферът е неуспешен"),
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Трансферът е успешен"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Вторник"),
        "turkish": MessageLookupByLibrary.simpleMessage("Турски"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Включете Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Напишете съобщение..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Въведете съобщението си тук..."),
        "typing": MessageLookupByLibrary.simpleMessage("Пише..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Украински"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Недостъпно"),
        "undo": MessageLookupByLibrary.simpleMessage("Отмени"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Неплатено"),
        "update": MessageLookupByLibrary.simpleMessage("Актуализация"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Неуспешно обновяване!"),
        "updateInfo": MessageLookupByLibrary.simpleMessage(
            "Актуализиране на информацията"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Актуализиране на парола"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Актуализиране на статуса"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Обновяване успешно!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Актуализиране на профила"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Качи файл"),
        "uploadProduct": MessageLookupByLibrary.simpleMessage("Качи продукт"),
        "uploading": MessageLookupByLibrary.simpleMessage("Качване"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Използвай сега"),
        "useThisImage": MessageLookupByLibrary.simpleMessage(
            "Използвайте това изображение"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Този потребителско име/имейл вече съществува."),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Потребителското име или паролата са некоректни."),
        "username": MessageLookupByLibrary.simpleMessage("Потребителско име"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Изисква се потребителско име и парола"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Съобщение за ваканцията"),
        "vacationType":
            MessageLookupByLibrary.simpleMessage("Тип на ваканцията"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Променлив"),
        "variation": MessageLookupByLibrary.simpleMessage("Вариация"),
        "vendor": MessageLookupByLibrary.simpleMessage("Продавач"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Администратор на продавача"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Информация за продавача"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Код за верификация (6 цифри)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Потвърди"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Чрез портфейла"),
        "video": MessageLookupByLibrary.simpleMessage("Видео"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Виетнамски"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Вижте в Google Maps"),
        "viewRecentTransactions": MessageLookupByLibrary.simpleMessage(
            "Преглед на последните транзакции"),
        "visible": MessageLookupByLibrary.simpleMessage("Видим"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Посетете магазина"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Изчакване за зареждане на изображението"),
        "waitForPost": MessageLookupByLibrary.simpleMessage(
            "Изчакване за публикуване на продукта"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Изчакване на потвърждение"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Баланс на портфейла"),
        "walletName": MessageLookupByLibrary.simpleMessage("Име на портфейла"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Намерихме блог(ове)"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Ние се нуждаем от достъп до камерата, за да сканираме QR код или баркод."),
        "weSentAnOTPTo":
            MessageLookupByLibrary.simpleMessage("Изпратихме OTP код на"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Ще ви изпращаме известия, когато има нови продукти или предложения. Винаги можете да го изключите в настройките."),
        "webView": MessageLookupByLibrary.simpleMessage("Уеб изглед"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Сряда"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Добре дошли"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("На кой език предпочитате?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Моля, свържете се с администратора, за да одобри регистрацията ви."),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Колекции за жени"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Напишете вашия коментар"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Напишете вашата бележка"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Да"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Можете да поръчате само от един магазин."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Можете да закупите само"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Успешно запазихте адреса във вашия локален файл!"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Имате \$point точки"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Може би ще ви хареса"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Трябва да влезете, за да завършите поръчката"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "След завършване, този въпрос няма да бъде задаван отново"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Вашият профил се преглежда. Моля, свържете се с администратора, ако имате нужда от помощ."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Вашият адрес вече съществува в локалната ви база данни"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Адресът е успешно запазен в локалното съхранение"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Вашият заявление се преглежда."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Вашата чанта е празна"),
        "yourBookingDetail": MessageLookupByLibrary.simpleMessage(
            "Детайли за вашата резервация"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Вашите печалби този месец"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Вашето бележка"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("Вашата поръчка е добавена"),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Вашите поръчки"),
        "yourProductIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Вашият продукт се преглежда"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Вашето потребителско име или имейл"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Пощенски код"),
        "zipCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "Пощенският код е задължителен")
      };
}
