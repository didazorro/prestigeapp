// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sr locale. All the
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
  String get localeName => 'sr';

  static String m0(x) => "Активан ${x}";

  static String m1(attribute) => "Bilo koji ${attribute}";

  static String m2(point) => "Доступни бодови: ${point}";

  static String m3(state) => "Bluetooth adapter je ${state}";

  static String m4(author) => "Аутор: ${author}";

  static String m5(currency) => "Promijenjena valuta u ${currency}";

  static String m6(number) => " Преостало знакова:${number} ";

  static String m7(priceRate, pointRate) => "${priceRate} = ${pointRate} поена";

  static String m8(count) => "${count} ставка";

  static String m9(count) => "${count} ставки";

  static String m10(count) => "${count} ставка";

  static String m11(count) => "${count} ставки";

  static String m12(country) => "${country} земља није подржана";

  static String m13(currency) => "${currency} није подржан";

  static String m14(day) => "Пре ${day} Данa";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Завршава се у${timeLeft}";

  static String m17(captcha) => "Unesite ${captcha} da potvrdite:";

  static String m18(message) => "Fehler: ${message}";

  static String m19(message) => "Грешка: ${message}";

  static String m20(time) => "Истиче ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "Пре ${hour} Сати";

  static String m23(currentBalance) =>
      "Остало вам је још само ${currentBalance} у новчанику";

  static String m24(count) =>
      "${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m25(message) =>
      "Дошло је до грешке у апликацији приликом преузимања података, контактирајте администратора у вези са поруком: ${message}";

  static String m26(currency, amount) =>
      "Максимални износ за коришћење ове уплате је ${currency} ${amount}";

  static String m27(size) => "Maksimalna veličina datoteke: ${size} MB";

  static String m28(currency, amount) =>
      "Минимални износ за коришћење ове уплате је ${currency} ${amount}";

  static String m29(minute) => "Пре ${minute} Minuten";

  static String m30(month) => " Prije${month} mjeseci";

  static String m31(store) => "Više od ${store}";

  static String m32(number) => "мора се купити у групама од ${number}";

  static String m33(itemCount) => "${itemCount} Ставка";

  static String m34(price) => "Укупно опција: ${price}";

  static String m35(amount) => "Плати ${amount}";

  static String m36(name) => "${name} је успешно додат у корпу";

  static String m37(total) => "Količina: ${total}";

  static String m38(name) => "Примио новац од ${name}";

  static String m39(percent) => "Распродај ${percent} %";

  static String m40(keyword) => "Резултати претраге за: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} ставка)";

  static String m42(keyword, count) => "${keyword} (${count} ставки)";

  static String m43(second) => "Пре ${second} Минута";

  static String m44(totalCartQuantity) =>
      "корпа, ${totalCartQuantity} предмета";

  static String m45(numberOfUnitsSold) => "продато: ${numberOfUnitsSold}";

  static String m46(fieldName) => "Polje ${fieldName} je obavezno";

  static String m47(total) => "${total} proizvoda";

  static String m48(name) => "Пренесите новац на ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Искористите максимално ${maxPointDiscount} поена за попуст од ${maxPriceDiscount} на ову поруџбину!";

  static String m50(date) => "Датум истека ${date}";

  static String m51(balance) => "Стање у новчанику: ${balance}";

  static String m52(message) => "упозорење: ${message}";

  static String m53(defaultCurrency) =>
      "Trenutno odabrana valuta nije dostupna za funkciju Novčanik, promijenite je u ${defaultCurrency}";

  static String m54(length) => "Пронашли смо производе";

  static String m55(week) => " ${week}. Sedmica";

  static String m56(name) => "Добро дошли ${name}";

  static String m57(year) => " Prije${year} godina";

  static String m58(total) => "Dodijelili ste narudžbi br.${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("O нама"),
        "account": MessageLookupByLibrary.simpleMessage("račun"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("Под одобрењем"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Brisanjem vašeg naloga uklanjate lične podatke iz naše baze podataka. Vaša e-pošta postaje trajno rezervirana i ista e-pošta se ne može ponovo koristiti za registraciju novog naloga."),
        "accountIsPendingApproval":
            MessageLookupByLibrary.simpleMessage("Račun čeka odobrenje."),
        "accountNumber": MessageLookupByLibrary.simpleMessage("Број рачуна"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Podešavanje računa"),
        "active": MessageLookupByLibrary.simpleMessage("aktivan"),
        "activeFor": m0,
        "activeLongAgo": MessageLookupByLibrary.simpleMessage("Активан давно"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Тренутно активан"),
        "addAName": MessageLookupByLibrary.simpleMessage("Dodajte ime"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Dodajte novi post"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Dodajte puža"),
        "addAnAttr": MessageLookupByLibrary.simpleMessage("Dodajte atribut"),
        "addListing": MessageLookupByLibrary.simpleMessage("Додајте понуду"),
        "addMessage": MessageLookupByLibrary.simpleMessage("Додајте поруку"),
        "addNew": MessageLookupByLibrary.simpleMessage("Dodaj novi"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Додај нову адресу"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Dodaj novi blog"),
        "addNewPost": MessageLookupByLibrary.simpleMessage("Kreiraj novi post"),
        "addProduct": MessageLookupByLibrary.simpleMessage("редни број"),
        "addToCart": MessageLookupByLibrary.simpleMessage("У корпу"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "Maksimalna količina je premašena"),
        "addToCartSuccessfully":
            MessageLookupByLibrary.simpleMessage("Успешно додато у корпу"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Dodajte u narudžbu"),
        "addToQuoteRequest":
            MessageLookupByLibrary.simpleMessage("Додајте захтеву за понуду"),
        "addToWishlist":
            MessageLookupByLibrary.simpleMessage("Додај у листу жеља"),
        "added": MessageLookupByLibrary.simpleMessage("dodano"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Успешно додато"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Додавање ваше слике"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Додатне Информације"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Додатне услуге"),
        "address": MessageLookupByLibrary.simpleMessage("адреса"),
        "adults": MessageLookupByLibrary.simpleMessage("одрасла особа"),
        "afternoon": MessageLookupByLibrary.simpleMessage("popodne"),
        "agree": MessageLookupByLibrary.simpleMessage("Slažem se"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Правила о приватности"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albanski"),
        "all": MessageLookupByLibrary.simpleMessage("Све"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Svi brendovi"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Sve narudžbe"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Најновије продаје"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Svi proizvodi"),
        "allow": MessageLookupByLibrary.simpleMessage("Dopustiti"),
        "allowCameraAccess":
            MessageLookupByLibrary.simpleMessage("Dozvoliti pristup kameri?"),
        "almostSoldOut":
            MessageLookupByLibrary.simpleMessage("Скоро распродато"),
        "amazing": MessageLookupByLibrary.simpleMessage("Невероватно"),
        "amount": MessageLookupByLibrary.simpleMessage("Iznos"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Izgled"),
        "apply": MessageLookupByLibrary.simpleMessage("Применити"),
        "approve": MessageLookupByLibrary.simpleMessage("Одобри"),
        "approved": MessageLookupByLibrary.simpleMessage("Одобрено"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Одобрени захтеви"),
        "arabic": MessageLookupByLibrary.simpleMessage("Арапски"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Јеси ли сигуран?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Jeste li sigurni da ćete izbrisati svoj račun?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Да ли сте сигурни да желите да се одјавите?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Јеси сигуран да желиш да изађеш?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Dodijeljeno"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Najmanje 3 znaka ..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Атрибут"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Atribut već postoji"),
        "attributes": MessageLookupByLibrary.simpleMessage("Својства"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Otkrivene su audio stavke. Želite li dodati Audio Player?"),
        "availability": MessageLookupByLibrary.simpleMessage("Доступност"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Доступност: "),
        "availablePoints": m2,
        "averageRating": MessageLookupByLibrary.simpleMessage("Просечна оцена"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "backOrder":
            MessageLookupByLibrary.simpleMessage("Ако постоји заостатак"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Повратак у куповину"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Nazad u Novčanik"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Специјални производи"),
        "balance": MessageLookupByLibrary.simpleMessage("Ravnoteža"),
        "bank": MessageLookupByLibrary.simpleMessage("банка"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Vrsta liste bannera"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Vrsta bannera"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("URL bannera Youtube"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Osnovne informacije"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Постаните продавац"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengalski"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Адреса за наплату"),
        "bleHasNotBeenEnabled":
            MessageLookupByLibrary.simpleMessage("Bluetooth nije omogućen"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Блокирај"),
        "blockUser": MessageLookupByLibrary.simpleMessage("Блокирај корисника"),
        "blog": MessageLookupByLibrary.simpleMessage("Блог"),
        "booked": MessageLookupByLibrary.simpleMessage("Већ резервисали"),
        "booking": MessageLookupByLibrary.simpleMessage("резервације"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("резервација отказана"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Одобрено"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Овде нешто није у реду. Покушајте поново касније."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Историја резервација"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Резервиши одмах"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Резервисано је успешно"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Укупно резервација"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Резервација није доступна"),
        "bosnian": MessageLookupByLibrary.simpleMessage("bosanski"),
        "branch": MessageLookupByLibrary.simpleMessage("Филијала"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, корпа за куповину ће бити испражњена због промене региона. Радо ћемо вас контактирати ако вам затреба помоћ."),
        "brand": MessageLookupByLibrary.simpleMessage("Marka"),
        "brands": MessageLookupByLibrary.simpleMessage("Брендови"),
        "brazil": MessageLookupByLibrary.simpleMessage("Португалски"),
        "burmese": MessageLookupByLibrary.simpleMessage("Burmanski"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Купи сада"),
        "by": MessageLookupByLibrary.simpleMessage("Od"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Само по договору"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Би Бранд"),
        "byCategory": MessageLookupByLibrary.simpleMessage("по категорије"),
        "byPrice": MessageLookupByLibrary.simpleMessage("по цени"),
        "bySignup":
            MessageLookupByLibrary.simpleMessage("Prijavom pristajete na naše"),
        "byTag": MessageLookupByLibrary.simpleMessage("Дању"),
        "call": MessageLookupByLibrary.simpleMessage("Pozovite"),
        "callTo": MessageLookupByLibrary.simpleMessage("Pozovite"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Позовите власника продавнице"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("Ne mogu kreirati red"),
        "canNotCreateUser":
            MessageLookupByLibrary.simpleMessage("Ne mogu kreirati korisnika."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Ne mogu dobiti načine plaćanja"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Ne mogu dobiti metode dostave"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Ne mogu dobiti informacije o tokenu."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Није могуће покренути ову апликацију. Уверите се да су ваша подешавања у цонфиг.дарт тачна"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "Nije moguće učitati ovu vezu"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, овај видео се не може репродуковати."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Nije moguće sačuvati narudžbu na web stranici"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Nije moguće ažurirati podatke o korisniku."),
        "cancel": MessageLookupByLibrary.simpleMessage("отказати"),
        "cancelOrder":
            MessageLookupByLibrary.simpleMessage("Поништити, отказати"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Отказано"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Отказани захтеви"),
        "cannotDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Овај налог не може да се избрише"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "Не можете слати поруке овом кориснику"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Овај број поруџбине није могуће пронаћи"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Datum u prošlosti nije dozvoljen"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Држач картице"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Број картице"),
        "cart": MessageLookupByLibrary.simpleMessage("корпа"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Попуст на корпу за куповину"),
        "cash": MessageLookupByLibrary.simpleMessage("Gotovina"),
        "categories": MessageLookupByLibrary.simpleMessage("Категорије"),
        "category": MessageLookupByLibrary.simpleMessage("категорија"),
        "change": MessageLookupByLibrary.simpleMessage("промена"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Promijeni jezik"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Promijenite štampač"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Цхат ГПТ"),
        "chatListScreen":
            MessageLookupByLibrary.simpleMessage("Екран листе ћаскања"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Razgovarajte putem Facebook Messengera"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Chat putem WhatsAppa"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Ћаскање са Ботом"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Razgovarajte s vlasnikom trgovine"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Проверите своју е-пошту на линк за преузимање"),
        "checking": MessageLookupByLibrary.simpleMessage("Provjeravam..."),
        "checkout": MessageLookupByLibrary.simpleMessage("поручивање"),
        "chinese": MessageLookupByLibrary.simpleMessage("Кинески"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Kineski (pojednostavljeni)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Kineski (tradicionalni)"),
        "chooseBranch": MessageLookupByLibrary.simpleMessage("Изаберите грану"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Odaberite kategoriju"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Изаберите из галерије"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Изаберите са сервера"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Odaberite Plan"),
        "chooseStaff":
            MessageLookupByLibrary.simpleMessage("Odaberite Osoblje"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Odaberite vrstu"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Изаберите начин плаћања"),
        "city": MessageLookupByLibrary.simpleMessage("град"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("Поље Град је обавезно"),
        "clear": MessageLookupByLibrary.simpleMessage("избрисати"),
        "clearCart": MessageLookupByLibrary.simpleMessage("обриши корпу"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Очисти разговор"),
        "close": MessageLookupByLibrary.simpleMessage("затворити"),
        "closeNow": MessageLookupByLibrary.simpleMessage("zatvoreno"),
        "closed": MessageLookupByLibrary.simpleMessage("zatvoreno"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage("COD Extra Fee"),
        "color": MessageLookupByLibrary.simpleMessage("боја"),
        "comment": MessageLookupByLibrary.simpleMessage("Komentar"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Молимо напишите свој коментар"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Komentar je uspješan, pričekajte da se vaš komentar odobri"),
        "complete": MessageLookupByLibrary.simpleMessage("kompletan"),
        "confirm": MessageLookupByLibrary.simpleMessage("Potvrdite"),
        "confirmAccountDeletion":
            MessageLookupByLibrary.simpleMessage("Potvrdite brisanje naloga"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Kolica će biti očišćena prilikom dopune."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Jeste li sigurni da želite očistiti košaricu?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Да ли сте сигурни да желите да избришете ово? Ова радња се не може опозвати."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Jeste li sigurni da želite izbrisati ovu stavku?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Potvrdi šifru"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Поље за потврду лозинке је обавезно"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Да ли сте сигурни да желите да уклоните овај производ?"),
        "connect": MessageLookupByLibrary.simpleMessage("Povežite se"),
        "contact": MessageLookupByLibrary.simpleMessage("Контакт"),
        "content": MessageLookupByLibrary.simpleMessage("Sadržaj"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Nastavite sa kupovinom"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Наставите са прегледом"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Weiter zur Überprüfung"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Наставите са испоруком"),
        "continues": MessageLookupByLibrary.simpleMessage("Настави"),
        "conversations": MessageLookupByLibrary.simpleMessage("разговора"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("Копирано"),
        "copy": MessageLookupByLibrary.simpleMessage("kopiraj"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 ИнспиреУИ Сва права задржана."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("земља"),
        "countryCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "Позивни број земље је обавезан"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Das Land ist erforderlich"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Код купона"),
        "couponHasBeenSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Ваучер је успешно сачуван."),
        "couponInvalid":
            MessageLookupByLibrary.simpleMessage("Ваучер код је неважећи"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Честитамо! Код купона је успешно примењен."),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Направи налог"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Vaš post je uspješno kreiran kao skica. Molimo vas da pogledate svoju administratorsku stranicu."),
        "createPost": MessageLookupByLibrary.simpleMessage("Napravi post"),
        "createProduct":
            MessageLookupByLibrary.simpleMessage("Направите производ"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Хвала вам на рецензији"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Заиста ценимо ваш допринос и ценимо ваш допринос да нам помогнете да се побољшамо"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Kreirajte sve varijante"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Направљено дана:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Валуте"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Тренутна лозинка"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Тренутно имамо само"),
        "customer": MessageLookupByLibrary.simpleMessage("Kupac"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Detalji o kupcu"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Napomena kupca"),
        "cvv": MessageLookupByLibrary.simpleMessage("ЦВВ"),
        "czech": MessageLookupByLibrary.simpleMessage("češki"),
        "danish": MessageLookupByLibrary.simpleMessage("Danski"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Мрачна тема"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Nadzorna ploča"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Нема података"),
        "date": MessageLookupByLibrary.simpleMessage("датум"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Datum raste"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Датум поруџбине"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Datum opadajući"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Крајњи датум"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Datum: Najnovije"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Datum: Najstariji"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Датум почетка"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Datum i vrijeme"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Datum je mudro zatvoren"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Debit"),
        "decline": MessageLookupByLibrary.simpleMessage("Odbiti"),
        "delete": MessageLookupByLibrary.simpleMessage("Izbriši"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Obriši račun"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Jeste li sigurni da želite izbrisati svoj račun? Molimo pročitajte kako će brisanje računa utjecati."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Račun je uspješno izbrisan. Vaša sesija je istekla."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Izbrisati sve"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Избришите конверзацију"),
        "delivered": MessageLookupByLibrary.simpleMessage("Isporučeno"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Испоручено"),
        "delivering": MessageLookupByLibrary.simpleMessage("Испорука"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Dostavljač:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Datum dostave"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Detalji isporuke"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Dostava"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Nema podataka.\nOva narudžba je uklonjena."),
        "description": MessageLookupByLibrary.simpleMessage("Опис"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Унесите или изаберите ваучер за своју поруџбину."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Нисам примио код? "),
        "direction": MessageLookupByLibrary.simpleMessage("Pravac"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Onemogućite kupovinu"),
        "discount": MessageLookupByLibrary.simpleMessage("Попуст"),
        "displayName": MessageLookupByLibrary.simpleMessage("Anzeigename"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Još nemate nijednu transakciju"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Да ли желите да затворите апликацију?"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Да ли желите да одете без слања рецензије?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Želite li se odjaviti?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Да ли желите да деблокирате овог корисника?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "АпплеПаи није подржан. Проверите свој новчаник и картицу"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "dontHaveAccount": MessageLookupByLibrary.simpleMessage("немате налог"),
        "download": MessageLookupByLibrary.simpleMessage("Преузимање"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Preuzmite aplikaciju"),
        "draft": MessageLookupByLibrary.simpleMessage("Skica"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Driver Assigned"),
        "duration": MessageLookupByLibrary.simpleMessage("Трајање"),
        "dutch": MessageLookupByLibrary.simpleMessage("Holandski"),
        "earnings": MessageLookupByLibrary.simpleMessage("Зараде"),
        "edit": MessageLookupByLibrary.simpleMessage("Uredite:"),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Измените информације о производу"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Uredi"),
        "egypt": MessageLookupByLibrary.simpleMessage("Египат"),
        "email": MessageLookupByLibrary.simpleMessage("Е-маил"),
        "emailAddressInvalid":
            MessageLookupByLibrary.simpleMessage("Адреса е-поште је неважећа"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Е-пошта је већ у употреби!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Brisanjem vašeg naloga otkazat ćete se sa svih mailing lista."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "Račun e -pošte koji ste unijeli ne postoji. Molimo pokušajte ponovo."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("е-мајл адреса је обавезна"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("Pretplata na e-poštu"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Изгледа да још нисте направили ниједну резервацију.\nПочните да истражујете и направите своју прву резервацију!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Prazna kolica"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Изгледа да нисте ништа додали у корпу. Започните куповину"),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Упс! Ваша колица су мало лака.\n\nСпремни да купите нешто фантастично?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Vaš komentar ne može biti prazan"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Još niste tražili stavke. Počnimo sada - pomoći ćemo vam."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Nema dostupnih opcija dostave. Provjerite je li vaša adresa ispravno unesena ili nas kontaktirajte ako vam je potrebna pomoć."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "корисничко име / е-маил је празан"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Празна листа жеља"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Додирните било које срце поред производа који желите да означите као омиљени. Задржаћемо га овде за вас"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Ваша листа жеља је тренутно празна.\nПочните да додајете производе одмах!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Омогући за Цхецкоут"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Омогући за пријаву"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Омогући за Новчаник"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Omogućite način odmora"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Molimo odaberite datum nakon prvog datuma"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Eнглески језик"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Унесите износ"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Унесите адресу е-поште за сваког примаоца"),
        "enterSentCode":
            MessageLookupByLibrary.simpleMessage("Унесите код послан СМС-ом"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Унесите код ваучера"),
        "enterYourEmail": MessageLookupByLibrary.simpleMessage("Унесите емаил"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Unesite svoju adresu e -pošte ili korisničko ime"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Unesite svoje ime"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Unesite svoje prezime"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Molimo unesite svoj broj mobilnog telefona"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Унесите лозинку"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Unesite svoj broj telefona da započnete."),
        "enterYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Unesite svoj broj telefona"),
        "enterYourUsername": MessageLookupByLibrary.simpleMessage(
            "Унесите своје корисничко име"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Uneseni iznos veći je od trenutnog iznosa novčanika. Molimo pokušajte ponovo!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Molimo Vas da unesete validnu email adresu."),
        "errorMsg": m19,
        "errorOnGettingPost": MessageLookupByLibrary.simpleMessage(
            "Грешка при преузимању поста!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Molimo unesite lozinku od najmanje 8 znakova"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Грешка"),
        "evening": MessageLookupByLibrary.simpleMessage("Večernje"),
        "events": MessageLookupByLibrary.simpleMessage("Догађаји"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Očekivani datum isporuke"),
        "expired": MessageLookupByLibrary.simpleMessage("Истекло"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Истекао рок"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("ММ / ГГ"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Истражите сада"),
        "external": MessageLookupByLibrary.simpleMessage("Vanjski"),
        "extraServices": MessageLookupByLibrary.simpleMessage("додатне услуге"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Dodjeljivanje korisnika nije uspjelo"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Nije uspjelo generiranje veze"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Учитавање конфигурације апликације није успело. Покушајте поново или поново покрените апликацију."),
        "failedToLoadImage": MessageLookupByLibrary.simpleMessage(
            "Učitavanje slike nije uspjelo"),
        "fair": MessageLookupByLibrary.simpleMessage("Сајам"),
        "favorite": MessageLookupByLibrary.simpleMessage("Favorite"),
        "fax": MessageLookupByLibrary.simpleMessage("факс"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Функција није доступна"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Besondere Produkte"),
        "featured": MessageLookupByLibrary.simpleMessage("Представљено"),
        "features": MessageLookupByLibrary.simpleMessage("својства"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Datoteka je prevelika. Odaberite manji fajl!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Otpremanje datoteke nije uspjelo!"),
        "files": MessageLookupByLibrary.simpleMessage("Datoteke"),
        "filter": MessageLookupByLibrary.simpleMessage("Филтер"),
        "fingerprintsTouchID":
            MessageLookupByLibrary.simpleMessage("Отисци прстију, Тоуцх ИД"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Završite postavljanje"),
        "finnish": MessageLookupByLibrary.simpleMessage("Finski"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Budite prvi koji komentira ovaj post!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Име"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Име је обавезно"),
        "firstRenewal": MessageLookupByLibrary.simpleMessage("Prva obnova"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Попуст на фиксну куповину"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Feste Produktrabatte"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("за овај производ"),
        "free": MessageLookupByLibrary.simpleMessage("бесплатно"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Besplatno"),
        "french": MessageLookupByLibrary.simpleMessage("Француски"),
        "friday": MessageLookupByLibrary.simpleMessage("Petak"),
        "from": MessageLookupByLibrary.simpleMessage("Од"),
        "fullName": MessageLookupByLibrary.simpleMessage("Puno ime"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galerija"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("генерална подешавања"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Generiranje veze..."),
        "german": MessageLookupByLibrary.simpleMessage("Немачки"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Примајте обавештења"),
        "getNotified":
            MessageLookupByLibrary.simpleMessage("Budite obavješteni!"),
        "getPasswordLink": MessageLookupByLibrary.simpleMessage("Линк-лозинка"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Započnite"),
        "goBack": MessageLookupByLibrary.simpleMessage("Vrati se"),
        "goBackHomePage": MessageLookupByLibrary.simpleMessage(
            "Повратак на почетну страницу"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Повратак на адресу"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Повратак на испоруку"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Zurück zum Versand"),
        "good": MessageLookupByLibrary.simpleMessage("Dobro"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("Grčki"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Бруто продаје"),
        "grouped": MessageLookupByLibrary.simpleMessage("Grupisano"),
        "guests": MessageLookupByLibrary.simpleMessage("Гости"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("Je izbrisan"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Хебрејски"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Hide About"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Sakrij adresu"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Sakrij e -poštu"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Sakrij kartu"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Sakrij telefon"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Sakrij politiku"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindski"),
        "history": MessageLookupByLibrary.simpleMessage("istorija"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("istorija"),
        "home": MessageLookupByLibrary.simpleMessage("Код куће"),
        "hour": MessageLookupByLibrary.simpleMessage("сат"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("Мађарски"),
        "hungary": MessageLookupByLibrary.simpleMessage("Мађарски"),
        "iAgree": MessageLookupByLibrary.simpleMessage("слажем се"),
        "imIn": MessageLookupByLibrary.simpleMessage("ja sam za"),
        "imageFeature": MessageLookupByLibrary.simpleMessage("Funkcija slike"),
        "imageGallery": MessageLookupByLibrary.simpleMessage("Галерија слика"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("Генерисање слике"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Mreža slika"),
        "inStock": MessageLookupByLibrary.simpleMessage("на лагеру"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Netačna lozinka"),
        "india": MessageLookupByLibrary.simpleMessage("Индија"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Индонежански"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Табела са информацијама"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Молимо инсталирајте додатак ДИГИТС: Вордпресс Мобиле Нумбер Сигнуп анд Логин"),
        "instantlyClose": MessageLookupByLibrary.simpleMessage("Odmah blizu"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Nevažeći telefonski broj"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Неважећи СМС верификациони код"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Nevažeća godina rođenja"),
        "invoice": MessageLookupByLibrary.simpleMessage("Faktura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Je li sve namješteno ...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("је куцање..."),
        "italian": MessageLookupByLibrary.simpleMessage("Италијан"),
        "item": MessageLookupByLibrary.simpleMessage("Stavka"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("укупне ставке:"),
        "items": MessageLookupByLibrary.simpleMessage("артикле"),
        "itsOrdered":
            MessageLookupByLibrary.simpleMessage("Поруџбина је изјавена!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Желим да отворим налог"),
        "japanese": MessageLookupByLibrary.simpleMessage("Јапански"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Zadržati"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("korejski"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdish"),
        "language": MessageLookupByLibrary.simpleMessage("језици"),
        "languageSuccess":
            MessageLookupByLibrary.simpleMessage("Језик је успешно ажуриран"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Презиме"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Потребно је презиме"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Posljednje transakcije"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Najnoviji proizvodi"),
        "layout": MessageLookupByLibrary.simpleMessage("Лаиоутс"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Light Theme"),
        "link": MessageLookupByLibrary.simpleMessage("veza"),
        "listBannerType": MessageLookupByLibrary.simpleMessage("Lista banera"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Lista banner video zapisa"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Листа обавештења"),
        "listening": MessageLookupByLibrary.simpleMessage("слушам..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Учитавање није успело!"),
        "loading": MessageLookupByLibrary.simpleMessage("Учитај ..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Učitavanje linka..."),
        "location": MessageLookupByLibrary.simpleMessage("Локација"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Закључавање екрана и безбедност"),
        "login": MessageLookupByLibrary.simpleMessage("Пријавите се"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Пријава отказана"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Prijava nije uspjela!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Nije vam dopušteno koristiti ovu aplikaciju."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Prijavite se uspješno!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Molimo prijavite se da biste dali komentar"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Molimo prijavite se da nastavite"),
        "loginToReview": MessageLookupByLibrary.simpleMessage(
            "Молимо пријавите се да бисте прегледали"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Пријавите се на свој рачун"),
        "logout": MessageLookupByLibrary.simpleMessage("одјавите се"),
        "malay": MessageLookupByLibrary.simpleMessage("Malajski"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Мушка колекција"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Управљајте АПИ кључем"),
        "manageStock":
            MessageLookupByLibrary.simpleMessage("Управљање складиштем"),
        "map": MessageLookupByLibrary.simpleMessage("Мапа"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead":
            MessageLookupByLibrary.simpleMessage("Označi kao pročitano"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Označi kao isporučeno"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Označi kao nepročitano"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Касније"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Редослед менија"),
        "menus": MessageLookupByLibrary.simpleMessage("Менији"),
        "message": MessageLookupByLibrary.simpleMessage("Порука"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Pošalji poruku na"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Минимални износ је"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Мобилни"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("Мобилни телефон је обавезан"),
        "mobileNumberInUse": MessageLookupByLibrary.simpleMessage(
            "Број мобилног телефона је већ у употреби!"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Mobilna verifikacija"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("maloprije"),
        "monday": MessageLookupByLibrary.simpleMessage("Ponedeljak"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...Више"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Više informacija"),
        "morning": MessageLookupByLibrary.simpleMessage("Jutro"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Морате одабрати 1 ставку"),
        "myCart": MessageLookupByLibrary.simpleMessage("Моја корпа"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Моја наруџбина"),
        "myPoints": MessageLookupByLibrary.simpleMessage("моје бодове"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Моји производи"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Немате производа. Покушајте да га направите!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Moj novčanik"),
        "myWishList": MessageLookupByLibrary.simpleMessage("Моја листа жеља"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Презиме"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Ime na kartici"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("Близу мене"),
        "needHelp": MessageLookupByLibrary.simpleMessage("Треба вам помоћ?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Morate se ponovo prijaviti da biste izvršili ažuriranje"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Холандија"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Доступан је нови садржај!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Нова лозинка"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Nova varijacija"),
        "next": MessageLookupByLibrary.simpleMessage("даље"),
        "niceName": MessageLookupByLibrary.simpleMessage("Показати име"),
        "no": MessageLookupByLibrary.simpleMessage("Не"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Још увек није сачувана ниједна адреса."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Ниједан претходни производ није доступан"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Упс, изгледа да овај пост више не постоји."),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Dozvola za kameru nije odobrena. Molimo da to odobrite u postavkama svog uređaja."),
        "noComments": MessageLookupByLibrary.simpleMessage("Нема коментара"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Još nema razgovora"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Појавиће се када неко почне да ћаска са вама"),
        "noData": MessageLookupByLibrary.simpleMessage("Нема података"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("јос нема фаворита"),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Nema datoteke za preuzimanje."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Следећи производ није доступан"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Нема везе са Интернетом"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("Nema oglasa u blizini!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("нема поруџбине"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "Нема доступних начина плаћања."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, овај производ није доступан за вашу тренутну улогу."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Овај производ је доступан корисницима са одређеним улогама. Пријавите се са одговарајућим акредитивима да бисте приступили овом производу или нас контактирајте за више информација."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Пријавите се са одговарајућим акредитивима да бисте приступили овом производу или нас контактирајте за више информација."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Упс, ова страница више не постоји!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Nema štampača"),
        "noProduct": MessageLookupByLibrary.simpleMessage("нема производа"),
        "noResultFound": MessageLookupByLibrary.simpleMessage("Нема резултата"),
        "noReviews":
            MessageLookupByLibrary.simpleMessage("Додатне Информације"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Ниједан слот није доступан"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("Нема продавнице у близини!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Нема предлога"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Не хвала"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, није пронађена ниједна трансакција!"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, ниједан видео снимак није пронађен."),
        "none": MessageLookupByLibrary.simpleMessage("Ниједан"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, нисмо могли да пронађемо ниједан резултат."),
        "notFound": MessageLookupByLibrary.simpleMessage("Није пронађен"),
        "notRated": MessageLookupByLibrary.simpleMessage("Неоцењено"),
        "note": MessageLookupByLibrary.simpleMessage("Napomena o porudžbini"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Bilješka"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Napomena (opcionalno)"),
        "notice": MessageLookupByLibrary.simpleMessage("Bilješka"),
        "notifications": MessageLookupByLibrary.simpleMessage("Обавештења"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Obavijesti o najnovijim ponudama i dostupnosti proizvoda"),
        "ofThisProduct": MessageLookupByLibrary.simpleMessage("овог производа"),
        "ok": MessageLookupByLibrary.simpleMessage("У реду"),
        "on": MessageLookupByLibrary.simpleMessage("на"),
        "onSale": MessageLookupByLibrary.simpleMessage("Понуда"),
        "onVacation": MessageLookupByLibrary.simpleMessage("Na odmoru"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 сваком примаоцу"),
        "online": MessageLookupByLibrary.simpleMessage("Online"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Отворено 24х"),
        "openMap": MessageLookupByLibrary.simpleMessage("Mapa"),
        "openNow": MessageLookupByLibrary.simpleMessage("Otvorite sada"),
        "openingHours": MessageLookupByLibrary.simpleMessage("Радно време"),
        "optional": MessageLookupByLibrary.simpleMessage("Opciono"),
        "options": MessageLookupByLibrary.simpleMessage("Опције"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("или"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("Или се пријавите са"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Potvrda narudžbe"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Jeste li sigurni da kreirate narudžbu?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Датум поруџбине"),
        "orderDetail": MessageLookupByLibrary.simpleMessage("Детаљи поруџбине"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Историја наруџбина"),
        "orderId": MessageLookupByLibrary.simpleMessage("Auftragsnummer:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("ID narudžbe"),
        "orderNo": MessageLookupByLibrary.simpleMessage("редни број."),
        "orderNotes":
            MessageLookupByLibrary.simpleMessage("Информације за наручивање"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Broj narudžbe"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Otkazan storniranje"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Отказано"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Charge Back"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Завршено"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Odbijeno"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("istekao"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Није успео"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("Чекање"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("нерешен"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Уплата на чекању"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Obrađeno"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("У обради"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Надокнађено"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("Obrnuto"),
        "orderStatusShipped":
            MessageLookupByLibrary.simpleMessage("Isporučeno"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Poništeno"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Статус наруџбе можете проверити помоћу наше функције статуса испоруке. Добићете е-поруку са потврдом наруџбине са детаљима наруџбине и везом за праћење напретка наруџбине"),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Можете се пријавити на свој налог помоћу претходно дефинисане адресе е-поште и лозинке. На свом налогу можете уредити податке о профилу, проверити историју трансакција, уредити претплату на билтен"),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Успешно сте послали поруџбину"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Ваш рачун"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Sažetak Narudžbe"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("НАРУЧБЕ УКУПНО"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Праћење наруџби"),
        "orders": MessageLookupByLibrary.simpleMessage("Nalozi"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("OTP verifikacija"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Наши банковни подаци"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("није на лагеру"),
        "pageView": MessageLookupByLibrary.simpleMessage("Prikaz stranice"),
        "paid": MessageLookupByLibrary.simpleMessage("Plaćeno"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Plaćeni status"),
        "password": MessageLookupByLibrary.simpleMessage("Лозинка"),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Поље Лозинка је обавезно"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Lozinke se ne podudaraju"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Zalijepite URL svoje slike"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Platite novčanikom"),
        "payNow": MessageLookupByLibrary.simpleMessage("Платити сада"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("плаћање"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Подаци о плаћању су успешно промењени."),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("Начин плаћања"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Овај начин плаћања није подржан"),
        "paymentMethods": MessageLookupByLibrary.simpleMessage("Начин плаћања"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Подешавања плаћања"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Plaćanje uspješno"),
        "pending": MessageLookupByLibrary.simpleMessage("нерешен"),
        "persian": MessageLookupByLibrary.simpleMessage("Persian"),
        "phone": MessageLookupByLibrary.simpleMessage("телефон"),
        "phoneEmpty": MessageLookupByLibrary.simpleMessage("Telefon je prazan"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Format: +84123456789"),
        "phoneIsRequired":
            MessageLookupByLibrary.simpleMessage("Потребно је земљиште"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Број телефона"),
        "phoneNumberVerification":
            MessageLookupByLibrary.simpleMessage("Потврдите број телефона"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Изаберите датум и време"),
        "picking": MessageLookupByLibrary.simpleMessage("Чека се испорука"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Пошаљите моју поруџбину"),
        "playAll": MessageLookupByLibrary.simpleMessage("Igraj sve"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Molimo vas dodajte cijenu"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Молимо вас да се сложите са нашим условима коришћења"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Dozvolite pristup kameri i galeriji"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Молимо проверите интернет везу!!"),
        "pleaseChooseBranch":
            MessageLookupByLibrary.simpleMessage("Молимо изаберите грану"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Molimo odaberite kategoriju"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Molimo unesite naziv proizvoda"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Унесите своју шифру"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "* Молимо вас да тачно попуните сва поља"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Повећајте или смањите количину да бисте наставили."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Молимо Вас да попуните сва поља"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Молимо Вас да попуните сва поља"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Molimo odaberite datum rezervacije"),
        "pleaseSelectALocation":
            MessageLookupByLibrary.simpleMessage("Odaberite lokaciju"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Изаберите опцију за свако својство производа"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Molimo odaberite najmanje 1 opciju za svaki aktivni atribut"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Molimo odaberite slike"),
        "pleaseSelectRequiredOptions":
            MessageLookupByLibrary.simpleMessage("Изаберите жељене опције!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Prijavite se na svoj račun prije postavljanja datoteka."),
        "point": MessageLookupByLibrary.simpleMessage("Бодова"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Na serveru nije pronađena konfiguracija diskontne tačke"),
        "pointMsgEnter":
            MessageLookupByLibrary.simpleMessage("Molimo unesite popust"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Maksimalan popust"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Nemate dovoljno popusta. Vaš ukupni popust je"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Dosegli ste maksimalni bod popusta"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Ukupna vrijednost popusta je veća od ukupnog računa"),
        "pointMsgRemove":
            MessageLookupByLibrary.simpleMessage("Tačka popusta se uklanja"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Popust se uspješno primjenjuje"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Доступан је ваучер за вашу корпу"),
        "polish": MessageLookupByLibrary.simpleMessage("Пољски"),
        "poor": MessageLookupByLibrary.simpleMessage("Јадно"),
        "popular": MessageLookupByLibrary.simpleMessage("Popularno"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularnost"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Ova adresa će biti sačuvana na vašem lokalnom uređaju. To NIJE korisnička adresa."),
        "postContent": MessageLookupByLibrary.simpleMessage("Sadržaj"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Kreiranje vašeg posta nije uspjelo"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Funkcija slike"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Post Management"),
        "postProduct":
            MessageLookupByLibrary.simpleMessage("Пошаљите производ"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Vaš post je uspješno kreiran"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Naslov"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Prepaid"),
        "prev": MessageLookupByLibrary.simpleMessage("Zurück"),
        "preview": MessageLookupByLibrary.simpleMessage("Pregled"),
        "price": MessageLookupByLibrary.simpleMessage("Cena"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Cijena: od visoke do niske"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Cijena: od niske do visoke"),
        "prices": MessageLookupByLibrary.simpleMessage("Менији"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Print Receipt"),
        "printer": MessageLookupByLibrary.simpleMessage("Štampač"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Štampač nije pronađen"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Odabir štampača"),
        "printing": MessageLookupByLibrary.simpleMessage("Štampanje..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage(" Заштита података и услови "),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Politika privatnosti"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Privatnost & Uslovi"),
        "private": MessageLookupByLibrary.simpleMessage("Privatno"),
        "processing": MessageLookupByLibrary.simpleMessage("Обрада..."),
        "product": MessageLookupByLibrary.simpleMessage("производа"),
        "productAddToCart": m36,
        "productAdded": MessageLookupByLibrary.simpleMessage(
            "Производ је додан у вашу корпу"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Vaš proizvod će se pojaviti nakon pregleda."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Жао нам је, овом производу се не може приступити јер је истекао."),
        "productName": MessageLookupByLibrary.simpleMessage("Назив производа"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Назив производа не може бити празан"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Varijabla tipa proizvoda treba barem jednu varijantu"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Za tip proizvoda jednostavno je potrebno ime i redovna cijena"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "Овај производ није на залихама"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Преглед производа"),
        "productRating": MessageLookupByLibrary.simpleMessage("Твој рејтинг"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Преглед производа"),
        "productType": MessageLookupByLibrary.simpleMessage("Тип производа"),
        "products": MessageLookupByLibrary.simpleMessage("Производи"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("ПромптПаи ИД:"),
        "promptPayName": MessageLookupByLibrary.simpleMessage("ПромптПаи име:"),
        "promptPayType": MessageLookupByLibrary.simpleMessage("ПромптПаи Тип:"),
        "publish": MessageLookupByLibrary.simpleMessage("Objavite"),
        "pullToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Превуците нагоре да бисте видели више"),
        "qRCodeMsgSuccess":
            MessageLookupByLibrary.simpleMessage("КР код је успешно сачуван."),
        "qRCodeSaveFailure":
            MessageLookupByLibrary.simpleMessage("Чување КР кода није успело"),
        "qty": MessageLookupByLibrary.simpleMessage("износ"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Količina"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Тренутна количина је већа од количине на залихама"),
        "random": MessageLookupByLibrary.simpleMessage("Рандом"),
        "rate": MessageLookupByLibrary.simpleMessage("Оцените"),
        "rateProduct": MessageLookupByLibrary.simpleMessage("Оцените производ"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Оцените апликацију"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Оцени ову апликацију"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Ако вам се свиђа ова апликација, пошаљите нам повратне информације како бисмо је могли даље развијати.."),
        "rating": MessageLookupByLibrary.simpleMessage("рејтинг"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Молимо вас да оцените пре него што пошаљете свој коментар"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Ponovo naruči"),
        "readReviews":
            MessageLookupByLibrary.simpleMessage("Прочитајте критике"),
        "readyToPick": MessageLookupByLibrary.simpleMessage("Чека се испорука"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Primio novac"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("Prijemnik"),
        "recent": MessageLookupByLibrary.simpleMessage("Недавно"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Недавне претраге"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("Недавно прегледано"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Skoro Pregledano"),
        "recommended": MessageLookupByLibrary.simpleMessage("Preporučeno"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Ponavljajući iznosi"),
        "refresh": MessageLookupByLibrary.simpleMessage("Обнови"),
        "refund": MessageLookupByLibrary.simpleMessage("Враћање новца"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Zahtjev za povrat novca za narudžbu nije bio uspješan"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Uspješno zatražite povrat novca za svoju narudžbu!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("захтев поврацања"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Tražen povrat novca"),
        "refunds": MessageLookupByLibrary.simpleMessage("повраћај новца"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Регенерација одговора"),
        "registerAs":
            MessageLookupByLibrary.simpleMessage("Региструјте се као"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Региструјте се као продавац"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Није могуће синхронизовати налог. Пријавите се да бисте наставили."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Registracija nije uspjela"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "Захтев је неважећи или је истекао. Покушајте поново"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Registrirajte se uspješno"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Регуларна цена"),
        "relatedLayoutTitle": MessageLookupByLibrary.simpleMessage(
            "Stvari koje biste mogli da volite"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("За учитавање, отпустите"),
        "remove": MessageLookupByLibrary.simpleMessage("Уклоните"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Ukloni sa liste želja"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Затражите резервацију"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Zatražili ste previše kodova u kratkom vremenu. Pokušajte ponovo kasnije."),
        "resend": MessageLookupByLibrary.simpleMessage(" ПОШАЉИ ПОНОВО"),
        "reset": MessageLookupByLibrary.simpleMessage(
            "Врати на подразумеване вредности"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Ресетуј шифру"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Ресетујте вашу лозинку"),
        "results": MessageLookupByLibrary.simpleMessage("Rezultati"),
        "retry": MessageLookupByLibrary.simpleMessage("Покушај поново"),
        "review": MessageLookupByLibrary.simpleMessage("Проверавати"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Überprüfung der Genehmigung"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Vaša recenzija je poslana i čeka odobrenje!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Vaša recenzija je poslana!"),
        "reviews": MessageLookupByLibrary.simpleMessage("коментара"),
        "romanian": MessageLookupByLibrary.simpleMessage("Румунски"),
        "russian": MessageLookupByLibrary.simpleMessage("Руски"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Продајна цена"),
        "saturday": MessageLookupByLibrary.simpleMessage("Subota"),
        "save": MessageLookupByLibrary.simpleMessage("Spremi"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Сачувај адресу"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Ваша адреса је доступна у вашем пребивалишту"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Фиксни попусти на производе"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Сачувајте КР код"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Сачувај на листи жеља"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Ova stavka se ne može skenirati"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Da biste skenirali narudžbu, morate se prvo prijaviti"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Ova narudžba nije dostupna za vaš račun"),
        "search": MessageLookupByLibrary.simpleMessage("Претрага"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Претражујте по имену земље или позивном броју"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Traži sa imenom ..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Упс! Изгледа да ниједан резултат не одговара вашим критеријумима претраге"),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Потражите артикле"),
        "searchInput":
            MessageLookupByLibrary.simpleMessage("Унос претраживања"),
        "searchOrderId": MessageLookupByLibrary.simpleMessage("ИД захтева ..."),
        "searchPlace":
            MessageLookupByLibrary.simpleMessage("Претражите по локацији"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Претражи адресу"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Покажи све"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Наставите да видите нови садржај у својој апликацији."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Pogledajte Narudžba"),
        "seeReviews":
            MessageLookupByLibrary.simpleMessage("Pogledajte recenzije"),
        "select": MessageLookupByLibrary.simpleMessage("Odaberite"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("изаберите адресу"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Označi sve"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Odaberite datume"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Odabir datoteke otkazan!"),
        "selectImage": MessageLookupByLibrary.simpleMessage("изабери слику"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Odaberite ništa"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Odaberite Printer"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Изаберите Улога"),
        "selectStore":
            MessageLookupByLibrary.simpleMessage("Изаберите Продавница"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Изаберите боју"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Изаберите датотеку"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Користите бодове"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Изаберите износ"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Изаберите величину"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Изаберите ваучер"),
        "send": MessageLookupByLibrary.simpleMessage("Pošalji"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Vratiti"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Добиј код"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Пошаљите СМС власнику продавнице"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "Налог на који желите да пренесете (е-пошта)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Одвојите више адреса е-поште зарезом."),
        "serbian": MessageLookupByLibrary.simpleMessage("Српски"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Сесија је истекла"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Molimo postavite adresu na stranici postavki"),
        "settings": MessageLookupByLibrary.simpleMessage("Подешавања"),
        "setup": MessageLookupByLibrary.simpleMessage("Подесити"),
        "share": MessageLookupByLibrary.simpleMessage("Објави"),
        "shipped": MessageLookupByLibrary.simpleMessage("Isporučeno"),
        "shipping": MessageLookupByLibrary.simpleMessage("поштарина"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("адреса испоруке"),
        "shippingFee":
            MessageLookupByLibrary.simpleMessage("Накнада за испоруку"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("нацин испоруке"),
        "shop": MessageLookupByLibrary.simpleMessage("куповина"),
        "shopEmail":
            MessageLookupByLibrary.simpleMessage("E -pošta za kupovinu"),
        "shopName": MessageLookupByLibrary.simpleMessage("Naziv prodavnice"),
        "shopOrders": MessageLookupByLibrary.simpleMessage("наручити"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Telefon za kupovinu"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Shop slug"),
        "shoppingCartItems": m44,
        "shortDescription": MessageLookupByLibrary.simpleMessage("Кратак опис"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("појавите све моје поруџбине"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Прикажи детаље"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Прикажи галерију"),
        "showLess": MessageLookupByLibrary.simpleMessage("Prikaži manje"),
        "showMore": MessageLookupByLibrary.simpleMessage("Pokazati više"),
        "signIn": MessageLookupByLibrary.simpleMessage("Пријавите се"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Пријавите се са Е Мајл"),
        "signUp": MessageLookupByLibrary.simpleMessage("Pегистровати"),
        "signup": MessageLookupByLibrary.simpleMessage("регистровати"),
        "simple": MessageLookupByLibrary.simpleMessage("Jednostavno"),
        "size": MessageLookupByLibrary.simpleMessage("Величина"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Водич за величину"),
        "skip": MessageLookupByLibrary.simpleMessage("Прескочи"),
        "sku": MessageLookupByLibrary.simpleMessage("број предмета"),
        "slovak": MessageLookupByLibrary.simpleMessage("slovački"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "СМС код је истекао. Поново пошаљите верификациони код да бисте покушали поново."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Продаје"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Nešto nije u redu. Pokušajte ponovo kasnije."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Poredaj po"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Сорт Цоде"),
        "spanish": MessageLookupByLibrary.simpleMessage("Шпански"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Говор није доступан"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Započni istraživanje"),
        "startShopping": MessageLookupByLibrary.simpleMessage("Купи сада"),
        "state": MessageLookupByLibrary.simpleMessage("Država"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("Поље Стате је обавезно"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("држава"),
        "status": MessageLookupByLibrary.simpleMessage("статус"),
        "stock": MessageLookupByLibrary.simpleMessage("складиште"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Количина залиха"),
        "stop": MessageLookupByLibrary.simpleMessage("Stop"),
        "store": MessageLookupByLibrary.simpleMessage("Store"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Adresa prodavnice"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Baner"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Marka prodavnice"),
        "storeClosed": MessageLookupByLibrary.simpleMessage(
            "Prodavnica je sada zatvorena"),
        "storeEmail":
            MessageLookupByLibrary.simpleMessage("E -pošta za kupovinu"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Podaci o trgovini"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Baner liste trgovina"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Lokacija trgovine"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Унесите адресу/град"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Logotip trgovine"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Pohranite mobilni banner"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Postavke trgovine"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Store Slider Banner"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Statični banner trgovine"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Odmor u prodavnici"),
        "stores": MessageLookupByLibrary.simpleMessage("Продавнице"),
        "street": MessageLookupByLibrary.simpleMessage("Ulica"),
        "street2": MessageLookupByLibrary.simpleMessage("Ulica 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("Улица је обавезна"),
        "streetName": MessageLookupByLibrary.simpleMessage("улица"),
        "streetNameApartment": MessageLookupByLibrary.simpleMessage("апартман"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("блокирати"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Хвала за поруџбину. Радимо брзо на обради ваше поруџбине. Останите са нама за ускоро е-поруку са потврдом"),
        "submit": MessageLookupByLibrary.simpleMessage("Pošaljite"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Pošaljite svoj post"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Међузбир"),
        "sunday": MessageLookupByLibrary.simpleMessage("Nedjelja"),
        "support": MessageLookupByLibrary.simpleMessage("Podrška"),
        "swahili": MessageLookupByLibrary.simpleMessage("Svahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("Švedski"),
        "tag": MessageLookupByLibrary.simpleMessage("Таг"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Ova oznaka ne postoji"),
        "tags": MessageLookupByLibrary.simpleMessage("Ознаке"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Сликати"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tamilski"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Притисните да бисте изабрали ову локацију"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Додирните микрофон да бисте разговарали"),
        "tax": MessageLookupByLibrary.simpleMessage("порез"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("ТераВаллет"),
        "terrible": MessageLookupByLibrary.simpleMessage("Страшно"),
        "thailand": MessageLookupByLibrary.simpleMessage("Тхаи"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("Овај датум није доступан"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Ova funkcija ne podržava trenutni jezik"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Ово је улога купца"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("Ово је улога продавца"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Ова платформа није подржана за вебвиев"),
        "thisProductNotSupport":
            MessageLookupByLibrary.simpleMessage("Ovaj proizvod nije podržan"),
        "thursday": MessageLookupByLibrary.simpleMessage("Četvrtak"),
        "tickets": MessageLookupByLibrary.simpleMessage("Карте"),
        "time": MessageLookupByLibrary.simpleMessage("Vreme"),
        "title": MessageLookupByLibrary.simpleMessage("Naslov"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Наслов: А до З"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Наслов: З до А"),
        "to": MessageLookupByLibrary.simpleMessage("do"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Превише неуспешних покушаја пријаве. Покушајте поново касније."),
        "topUp": MessageLookupByLibrary.simpleMessage("Top Up"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Nadopuni proizvod nije pronađen"),
        "total": MessageLookupByLibrary.simpleMessage("Укупно"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Укупан износ куповине мора бити најмање"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Ukupna cijena"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("укупан порез"),
        "trackingNumberIs": MessageLookupByLibrary.simpleMessage("редни број"),
        "trackingPage":
            MessageLookupByLibrary.simpleMessage("Страница поруџбине"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Трансакција је отказана "),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Detalji transakcije"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("Трансакција није успела"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("трансакција није успела"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Transakciona naknada"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Rezultat transakcije"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transfer"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Potvrda prijenosa"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Ne možete prenijeti na ovog korisnika"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Prijenos nije uspio"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Uspjeh prijenosa"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Utorak"),
        "turkish": MessageLookupByLibrary.simpleMessage("Турски"),
        "turnOnBle":
            MessageLookupByLibrary.simpleMessage("Uključite Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Унесите поруку..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Ovdje upišite svoju poruku ..."),
        "typing": MessageLookupByLibrary.simpleMessage("куцање..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ukrajinski"),
        "unavailable": MessageLookupByLibrary.simpleMessage("недоступно"),
        "unblock": MessageLookupByLibrary.simpleMessage("Деблокирај"),
        "unblockUser":
            MessageLookupByLibrary.simpleMessage("Деблокирај корисника"),
        "undo": MessageLookupByLibrary.simpleMessage("повратак"),
        "unpaid": MessageLookupByLibrary.simpleMessage("neplaćeno"),
        "update": MessageLookupByLibrary.simpleMessage("Aжурирање"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Ažuriranje nije uspjelo!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Информације о ажурирању"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Ažurirajte lozinku"),
        "updateStatus": MessageLookupByLibrary.simpleMessage("Ажурирај статус"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Ažuriranje uspješno!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Ажурирање профил"),
        "uploadFile":
            MessageLookupByLibrary.simpleMessage("Otpremite datoteku"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Upload image"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Отпремите производ"),
        "uploading": MessageLookupByLibrary.simpleMessage("Uploading"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Користите сада"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Koristite ovu sliku"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Ovo korisničko ime/e -adresa nije dostupno."),
        "userHasBeenBlocked":
            MessageLookupByLibrary.simpleMessage("Корисник је блокиран"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Korisničko ime ili lozinka su netačni."),
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("Корисник није пронађен"),
        "username": MessageLookupByLibrary.simpleMessage("Корисничко име"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Корисничко име је већ у употреби!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Korisničko ime i lozinka su obavezni"),
        "usernameInvalid":
            MessageLookupByLibrary.simpleMessage("Корисничко име је неважеће"),
        "usernameIsRequired":
            MessageLookupByLibrary.simpleMessage("Корисничко име је обавезно"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Poruka za odmor"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Vrsta odmora"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variable"),
        "variation": MessageLookupByLibrary.simpleMessage("Varijacija"),
        "vendor": MessageLookupByLibrary.simpleMessage("Вендор"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Портал за продавце"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Информације о произвођачу"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Verifikacioni kôd (6 cifara)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("проверавати"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Preko novčanika"),
        "video": MessageLookupByLibrary.simpleMessage("Видео"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Вијетнамски"),
        "view": MessageLookupByLibrary.simpleMessage("Pogled"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Прикажи корпу"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Погледај Детаљ"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Погледај још"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Погледајте на Гоогле мапама"),
        "viewOrder":
            MessageLookupByLibrary.simpleMessage("Погледајте редослед"),
        "viewRecentTransactions": MessageLookupByLibrary.simpleMessage(
            "Pogledajte nedavne transakcije"),
        "visible": MessageLookupByLibrary.simpleMessage("Vidljivo"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Посетите радњу"),
        "waitForLoad":
            MessageLookupByLibrary.simpleMessage("Чекајући да се слика учита"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Чека се пост производ"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Сачекајте потврду"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Stanje novčanika"),
        "walletBalanceWithValue": m51,
        "walletName": MessageLookupByLibrary.simpleMessage("Naziv novčanika"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Pronašli smo blogove"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Potreban nam je pristup kameri da skeniramo QR kod ili Bar kod."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Kod za autentifikaciju je poslan na"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Poslat ćemo vam obavještenja kada novi proizvodi budu dostupni ili ponude. Ovu postavku uvijek možete promijeniti u postavkama."),
        "webView": MessageLookupByLibrary.simpleMessage("Web View"),
        "website": MessageLookupByLibrary.simpleMessage("веб сајт"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Srijeda"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Добродошли"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Добродошли назад"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Започните своје шопинг путовање са нама сада"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Који језик више волите?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Обратите се администратору да вам одобри регистрацију."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "Нећете моћи да шаљете и примате поруке од овог корисника."),
        "withdrawAmount": MessageLookupByLibrary.simpleMessage("повући износ"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Повући захтев"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Повлачење"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Женска колекција"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Напишите свој коментар"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Напишите своју белешку"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("да"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Možete kupiti samo u jednoj trgovini."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Можете само купити"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Немате дозволу да креирате пост"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Ваша адреса је сачувана локално"),
        "youHaveNoPost": MessageLookupByLibrary.simpleMessage("Немате постове"),
        "youHavePoints": MessageLookupByLibrary.simpleMessage("имате бодове"),
        "youMightAlsoLike": MessageLookupByLibrary.simpleMessage(
            "Можда ће вам се и ово свидети"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Морате се пријавити за плаћање"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Sljedeći put nakon završetka nećete biti upitani"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Ваш налог је у прегледу. Молимо контактирајте администратора ако вам је потребна помоћ."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Ваша адреса ће бити сачувана локално"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Adresa je sačuvana u vašoj lokalnoj pohrani"),
        "yourApplicationIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Vaša prijava je u pregledu."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Ваша колица су празна"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Детаљи резервације"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Ваш приход тог месеца"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Ваша белешка"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("Vaša narudžba je dodana"),
        "yourOrderIsConfirmed": MessageLookupByLibrary.simpleMessage(
            "Ваша поруџбина је потврђена!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Ваша поруџбина је празна"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Изгледа да нисте додали ниједну ставку.\nПочните да купујете да бисте га попунили."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Ваша наређења"),
        "yourProductIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Vaš proizvod je u pregledu"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Ваше корисничко име или адреса е-поште"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Поштански број"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Потребан је поштански број")
      };
}
