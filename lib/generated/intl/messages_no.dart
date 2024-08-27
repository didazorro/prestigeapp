// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a no locale. All the
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
  String get localeName => 'no';

  static String m0(x) => "Aktiv ${x}";

  static String m1(attribute) => "Hvilken som helst ${attribute}";

  static String m2(point) => "Dine tilgjengelige poeng: ${point}";

  static String m3(state) => "Bluetooth-adapteren er ${state}";

  static String m5(currency) => "Endret valuta til ${currency}";

  static String m6(number) => "${number} tegn igjen";

  static String m7(priceRate, pointRate) => "${priceRate} = ${pointRate} poeng";

  static String m8(count) => "${count} vare";

  static String m9(count) => "${count} varer";

  static String m12(country) => "Landet ${country} støttes ikke";

  static String m13(currency) => "${currency} støttes ikke";

  static String m14(day) => "${day} dager siden";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Slutter om ${timeLeft}";

  static String m17(captcha) => "Skriv inn ${captcha} for å bekrefte:";

  static String m18(message) => "Feil: ${message}";

  static String m20(time) => "Utløper om ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "${hour} timer siden";

  static String m24(count) =>
      "${Intl.plural(count, one: '${count} vare', other: '${count} varer')}";

  static String m25(message) =>
      "Det oppstår et problem med appen under forespørsel om data. Vennligst kontakt administratoren for å fikse problemene: ${message}";

  static String m26(currency, amount) =>
      "Maksimumsbeløpet for å bruke denne betalingen er ${currency} ${amount}";

  static String m27(size) => "Maksimal filstørrelse: ${size} MB";

  static String m28(currency, amount) =>
      "Minimumsbeløpet for å bruke denne betalingen er ${currency} ${amount}";

  static String m29(minute) => "${minute} minutter siden";

  static String m30(month) => "${month} måneder siden";

  static String m31(store) => "Mer fra ${store}";

  static String m32(number) => "må kjøpes i grupper på ${number}";

  static String m33(itemCount) => "${itemCount} varer";

  static String m34(price) => "Valg totalt: ${price}";

  static String m35(amount) => "Betal ${amount}";

  static String m36(name) => "${name} er lagt til i handlekurven";

  static String m37(total) => "Antall: ${total}";

  static String m39(percent) => "Salg ${percent}%";

  static String m40(keyword) => "Søkeresultater for: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} element)";

  static String m42(keyword, count) => "${keyword} (${count} elementer)";

  static String m43(second) => "${second} sekunder siden";

  static String m44(totalCartQuantity) =>
      "Handlekurv, ${totalCartQuantity} varer";

  static String m45(numberOfUnitsSold) => "Solgt: ${numberOfUnitsSold}";

  static String m46(fieldName) => "Feltet ${fieldName} er påkrevd";

  static String m47(total) => "${total} produkter";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Bruk maksimalt ${maxPointDiscount} poeng for en rabatt på ${maxPriceDiscount} på denne bestillingen!";

  static String m50(date) => "Gyldig til ${date}";

  static String m52(message) => "Advarsel: ${message}";

  static String m53(defaultCurrency) =>
      "Den valgte valutaen er ikke tilgjengelig for lommebokfunksjonen. Vennligst bytt til ${defaultCurrency}";

  static String m54(length) => "Vi fant ${length} produkter";

  static String m55(week) => "Uke ${week}";

  static String m56(name) => "Velkommen ${name}";

  static String m57(year) => "${year} år siden";

  static String m58(total) => "Du er tildelt bestilling #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Om oss"),
        "account": MessageLookupByLibrary.simpleMessage("Konto"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Når du sletter kontoen din, fjernes personlig informasjon fra databasen vår."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Kontoen venter på godkjenning."),
        "accountNumber": MessageLookupByLibrary.simpleMessage("Kontonummer"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Kontoinnstillinger"),
        "active": MessageLookupByLibrary.simpleMessage("Aktiv"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Aktiv for lenge siden"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Aktiv nå"),
        "addAName": MessageLookupByLibrary.simpleMessage("Legg til et navn"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Legg til et nytt innlegg"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Legg til en slug"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Legg til en attributt"),
        "addListing":
            MessageLookupByLibrary.simpleMessage("Legg til oppføring"),
        "addMessage":
            MessageLookupByLibrary.simpleMessage("Legg til en melding"),
        "addNew": MessageLookupByLibrary.simpleMessage("Legg til ny"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Legg til ny adresse"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Legg til ny blogg"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Opprett nytt innlegg"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Legg til produkt"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Legg i handlekurv"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "Maksimalt antall er overskredet"),
        "addToCartSuccessfully":
            MessageLookupByLibrary.simpleMessage("Lagt til i handlekurven"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Legg til i bestilling"),
        "addToQuoteRequest":
            MessageLookupByLibrary.simpleMessage("Legg til i tilbudsanmodning"),
        "addToWishlist":
            MessageLookupByLibrary.simpleMessage("Legg til ønskelisten"),
        "added": MessageLookupByLibrary.simpleMessage("Lagt til"),
        "addedSuccessfully": MessageLookupByLibrary.simpleMessage("Lagt til"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Legger til bildet ditt"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Ekstra informasjon"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Ytterligere tjenester"),
        "address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "adults": MessageLookupByLibrary.simpleMessage("Voksne"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Ettermiddag"),
        "agree": MessageLookupByLibrary.simpleMessage("Godta"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Personvern og vilkår"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albansk"),
        "all": MessageLookupByLibrary.simpleMessage("Alle"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Alle merker"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Alle bestillinger"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Siste salg"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Alle produkter"),
        "allow": MessageLookupByLibrary.simpleMessage("Tillat"),
        "allowCameraAccess":
            MessageLookupByLibrary.simpleMessage("Tillate kameratilgang?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Nesten utsolgt"),
        "amazing": MessageLookupByLibrary.simpleMessage("Fantastisk"),
        "amount": MessageLookupByLibrary.simpleMessage("Beløp"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Utseende"),
        "apply": MessageLookupByLibrary.simpleMessage("Bruk"),
        "approve": MessageLookupByLibrary.simpleMessage("Godkjenn"),
        "approved": MessageLookupByLibrary.simpleMessage("Godkjent"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabisk"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Er du sikker?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil slette kontoen din?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil avslutte?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Tildelt"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Minst 3 tegn..."),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Attributtet finnes allerede"),
        "attributes": MessageLookupByLibrary.simpleMessage("Egenskaper"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Det ble oppdaget lydfil(er). Ønsker du å legge til i lydavspilleren?"),
        "availability": MessageLookupByLibrary.simpleMessage("Tilgjengelighet"),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Gjennomsnittlig vurdering"),
        "back": MessageLookupByLibrary.simpleMessage("Tilbake"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Bestilling på vent"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Tilbake til butikken"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Tilbake til lommebok"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Utstyrssamlinger"),
        "balance": MessageLookupByLibrary.simpleMessage("Saldo"),
        "bank": MessageLookupByLibrary.simpleMessage("Bank"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Bannerliste-type"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Banner Type"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banner Youtube-URL"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Grunnleggende informasjon"),
        "becomeAVendor": MessageLookupByLibrary.simpleMessage("Bli selger"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengali"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Faktureringsadresse"),
        "bleHasNotBeenEnabled":
            MessageLookupByLibrary.simpleMessage("Bluetooth er ikke aktivert"),
        "bleState": m3,
        "blog": MessageLookupByLibrary.simpleMessage("Blogg"),
        "booked": MessageLookupByLibrary.simpleMessage("Allerede booket"),
        "booking": MessageLookupByLibrary.simpleMessage("Bestilling"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Bestilling kansellert"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Bekreftet"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Det har oppstått en feil. Vennligst prøv igjen senere."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Bestillingshistorikk"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Book nå"),
        "bookingSuccess": MessageLookupByLibrary.simpleMessage(
            "Bestillingen ble gjennomført"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Bestillingssammendrag"),
        "bookingUnavailable": MessageLookupByLibrary.simpleMessage(
            "Bestilling er ikke tilgjengelig"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bosnisk"),
        "branch": MessageLookupByLibrary.simpleMessage("Avdeling"),
        "brand": MessageLookupByLibrary.simpleMessage("Merke"),
        "brazil": MessageLookupByLibrary.simpleMessage("Portugisisk"),
        "burmese": MessageLookupByLibrary.simpleMessage("Burmese"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Kjøp nå"),
        "by": MessageLookupByLibrary.simpleMessage("av"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Kun etter avtale"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Etter kategori"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Etter pris"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Ved å registrere deg godtar du våre "),
        "byTag": MessageLookupByLibrary.simpleMessage("Etter merkelappen"),
        "call": MessageLookupByLibrary.simpleMessage("Ring"),
        "callTo": MessageLookupByLibrary.simpleMessage("Ring til"),
        "callToVendor": MessageLookupByLibrary.simpleMessage("Ring butikkeier"),
        "canNotCreateOrder": MessageLookupByLibrary.simpleMessage(
            "Kan ikke opprette bestilling"),
        "canNotCreateUser":
            MessageLookupByLibrary.simpleMessage("Kan ikke opprette brukeren."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Kan ikke hente betalingsmetoder"),
        "canNotGetShipping":
            MessageLookupByLibrary.simpleMessage("Kan ikke hente fraktmetoder"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Kan ikke hente tokeninformasjon."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Kan ikke starte denne appen, sørg for at innstillingene i config.dart er korrekte"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "Denne lenken er for øyeblikket utilgjengelig på dette nettstedet."),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Beklager, denne videoen kan ikke spilles av."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Kan ikke lagre bestillingen på nettstedet."),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Kan ikke oppdatere brukerinformasjon."),
        "cancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Kan ikke finne denne ordre-IDen"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Dato i fortiden er ikke tillatt"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Kortholder"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Kortnummer"),
        "cart": MessageLookupByLibrary.simpleMessage("Handlekurv"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Rabatt på handlekurv"),
        "cash": MessageLookupByLibrary.simpleMessage("Kontant"),
        "categories": MessageLookupByLibrary.simpleMessage("Kategorier"),
        "category": MessageLookupByLibrary.simpleMessage("Kategori"),
        "change": MessageLookupByLibrary.simpleMessage("endre"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Endre språk"),
        "changePrinter": MessageLookupByLibrary.simpleMessage("Bytt skriver"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Meldinger"),
        "chatViaFacebook":
            MessageLookupByLibrary.simpleMessage("Chat via Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Chat via WhatsApp"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Chat med Bot"),
        "chatWithStoreOwner":
            MessageLookupByLibrary.simpleMessage("Chat med butikkeier"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Sjekk e-posten din for bekreftelseslenken"),
        "checking": MessageLookupByLibrary.simpleMessage("Sjekker..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Gå til kassen"),
        "chinese": MessageLookupByLibrary.simpleMessage("Kinesisk"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Kinesisk (forenklet)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Kinesisk (tradisjonell)"),
        "chooseBranch": MessageLookupByLibrary.simpleMessage("Velg avdeling"),
        "chooseCategory": MessageLookupByLibrary.simpleMessage("Velg kategori"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Velg fra galleri"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Velg fra server"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Velg plan"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Velg personale"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Velg type"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Velg betalingsmetode"),
        "city": MessageLookupByLibrary.simpleMessage("By"),
        "cityIsRequired": MessageLookupByLibrary.simpleMessage("By er påkrevd"),
        "clear": MessageLookupByLibrary.simpleMessage("Tøm"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Tøm handlekurv"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Tøm samtale"),
        "close": MessageLookupByLibrary.simpleMessage("Lukk"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Stengt nå"),
        "closed": MessageLookupByLibrary.simpleMessage("Stengt"),
        "codExtraFee":
            MessageLookupByLibrary.simpleMessage("COD ekstra avgift"),
        "color": MessageLookupByLibrary.simpleMessage("Farge"),
        "comment": MessageLookupByLibrary.simpleMessage("Kommentar"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv kommentaren din"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Kommentaren din ble sendt inn. Vennligst vent til kommentaren din er godkjent."),
        "complete": MessageLookupByLibrary.simpleMessage("Fullfør"),
        "confirm": MessageLookupByLibrary.simpleMessage("Bekreft"),
        "confirmAccountDeletion":
            MessageLookupByLibrary.simpleMessage("Bekreft sletting av konto"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Handlekurven vil bli tømt ved påfylling."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil tømme handlekurven?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil slette dette? Denne handlingen kan ikke angres."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil slette dette elementet?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Bekreft passord"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Bekreft passordfeltet er påkrevd"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil fjerne dette produktet?"),
        "connect": MessageLookupByLibrary.simpleMessage("Koble til"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "content": MessageLookupByLibrary.simpleMessage("Innhold"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Fortsett å handle"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Fortsett til betaling"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Fortsett til gjennomgang"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Fortsett til frakt"),
        "continues": MessageLookupByLibrary.simpleMessage("Fortsett"),
        "conversations": MessageLookupByLibrary.simpleMessage("Samtaler"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("Kopiert"),
        "copy": MessageLookupByLibrary.simpleMessage("Kopier"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI. Alle rettigheter reservert."),
        "countItem": m8,
        "countItems": m9,
        "country": MessageLookupByLibrary.simpleMessage("Land"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Land er påkrevd"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Kupongkode"),
        "couponHasBeenSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Rabattkoden er lagret."),
        "couponInvalid":
            MessageLookupByLibrary.simpleMessage("Kupongkoden din er ugyldig"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Gratulerer! Kupongkoden er brukt"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Opprett en konto"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Innlegget ditt er opprettet som utkast. Vennligst ta en titt på administrasjonssiden din."),
        "createPost": MessageLookupByLibrary.simpleMessage("Opprett innlegg"),
        "createProduct":
            MessageLookupByLibrary.simpleMessage("Opprett produkt"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Takk for din anmeldelse"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Vi setter virkelig pris på din tilbakemelding og verdsetter ditt bidrag til å hjelpe oss med å forbedre oss"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Opprett alle varianter"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Opprettet den: "),
        "currencies": MessageLookupByLibrary.simpleMessage("Valutaer"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Nåværende passord"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("For øyeblikket har vi bare"),
        "customer": MessageLookupByLibrary.simpleMessage("Kunde"),
        "customerDetail": MessageLookupByLibrary.simpleMessage("Kundedetaljer"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Kundemerknad"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Tsjekkisk"),
        "danish": MessageLookupByLibrary.simpleMessage("Dansk"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Mørkt tema"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Dataen er tom"),
        "date": MessageLookupByLibrary.simpleMessage("Dato"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Dato stigende"),
        "dateBooking":
            MessageLookupByLibrary.simpleMessage("Dato for bestilling"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Dato synkende"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Sluttdato"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Dato: Nyeste"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Dato: Eldste"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Startdato"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Dato og tid"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Lukk etter dato"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Debet"),
        "decline": MessageLookupByLibrary.simpleMessage("Avslå"),
        "delete": MessageLookupByLibrary.simpleMessage("Slett"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Slett konto"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil slette kontoen din? Vennligst les hvordan kontosletting vil påvirke."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Kontoen er slettet. Økten din har utløpt."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Slett alle"),
        "delivered": MessageLookupByLibrary.simpleMessage("Levert"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Levert til"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Leveringsgutt:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Leveringsdato"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Leveringsdetaljer"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Levering"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Ingen data.\nDenne bestillingen er fjernet."),
        "description": MessageLookupByLibrary.simpleMessage("Beskrivelse"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv inn eller velg gavekortet for bestillingen din."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Mottok ikke koden? "),
        "direction": MessageLookupByLibrary.simpleMessage("Retning"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Deaktiver kjøp"),
        "discount": MessageLookupByLibrary.simpleMessage("Rabatt"),
        "displayName": MessageLookupByLibrary.simpleMessage("Visningsnavn"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Du har ingen transaksjoner ennå"),
        "doYouWantToExitApp":
            MessageLookupByLibrary.simpleMessage("Vil du avslutte appen"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Vil du forlate uten å sende inn anmeldelsen din?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Ønsker du å logge ut?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "Apple Pay er ikke tilgjengelig på denne enheten!"),
        "done": MessageLookupByLibrary.simpleMessage("Ferdig"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Har du ikke en konto?"),
        "download": MessageLookupByLibrary.simpleMessage("Last ned"),
        "downloadApp": MessageLookupByLibrary.simpleMessage("Last ned appen"),
        "draft": MessageLookupByLibrary.simpleMessage("Kladd"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Sjåfør tildelt"),
        "duration": MessageLookupByLibrary.simpleMessage("Varighet"),
        "dutch": MessageLookupByLibrary.simpleMessage("Nederlandsk"),
        "earnings": MessageLookupByLibrary.simpleMessage("Inntjening"),
        "edit": MessageLookupByLibrary.simpleMessage("Rediger: "),
        "editProductInfo":
            MessageLookupByLibrary.simpleMessage("Rediger produktinformasjon"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Rediger"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egypt"),
        "email": MessageLookupByLibrary.simpleMessage("E-post"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Når du sletter kontoen din, blir du avmeldt fra alle e-postlister."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "E-postkontoen du har oppgitt eksisterer ikke. Vennligst prøv igjen."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("E-post er påkrevd"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("E-postabonnement"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Det ser ut som du ikke har gjort noen bestillinger ennå. \nStart utforskningen og gjør din første bestilling!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Tøm handlekurv"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ser ut som du ikke har lagt til noen varer i handlekurven ennå. Begynn å handle for å fylle den."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Oops! Handlekurven din er litt tom. \n\nKlar til å handle noe fantastisk?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Kommentarfeltet kan ikke være tomt"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Du har ikke søkt etter elementer ennå. La oss starte nå - vi hjelper deg."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Det er ingen tilgjengelige fraktalternativer. Vennligst sørg for at adressen din er riktig angitt, eller kontakt oss hvis du trenger hjelp."),
        "emptyUsername":
            MessageLookupByLibrary.simpleMessage("Brukernavn/e-post er tomt"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Tøm ønskelisten"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trykk på hjertet ved siden av et produkt for å legge det til favoritter. Vi lagrer dem for deg her!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Ønskelisten din er tom for øyeblikket.\nBegynn å legge til produkter nå!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Aktiver for utsjekking"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Aktiver for innlogging"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Aktiver for lommebok"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Aktiver feriemodus"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Vennligst velg en dato etter første dato"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Engelsk"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Skriv inn en e-postadresse for hver mottaker"),
        "enterSentCode": MessageLookupByLibrary.simpleMessage(
            "Skriv inn koden som ble sendt til"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Skriv inn kupongkoden"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Skriv inn e-posten din"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Skriv inn e-posten eller brukernavnet ditt"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Skriv inn fornavnet ditt"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Skriv inn etternavnet ditt"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Skriv inn mobilnummeret ditt"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Skriv inn passordet ditt"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Skriv inn telefonnummeret ditt for å komme i gang."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Skriv inn telefonnummeret ditt"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Beløpet du har angitt er større enn gjeldende lommebokbeløp. Vennligst prøv igjen!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv inn en gyldig e-postadresse."),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv inn et passord med minst 8 tegn."),
        "evening": MessageLookupByLibrary.simpleMessage("Kveld"),
        "events": MessageLookupByLibrary.simpleMessage("Arrangementer"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Forventet leveringsdato"),
        "expired": MessageLookupByLibrary.simpleMessage("Utløpt"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Utløpsdato"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM/ÅÅ"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Utforsk nå"),
        "external": MessageLookupByLibrary.simpleMessage("Ekstern"),
        "extraServices":
            MessageLookupByLibrary.simpleMessage("Ekstratjenester"),
        "failToAssign":
            MessageLookupByLibrary.simpleMessage("Kunne ikke tildele bruker"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Klarte ikke å generere lenken"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Kunne ikke laste inn programkonfigurasjonen. Vennligst prøv igjen eller start applikasjonen på nytt."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("Kunne ikke laste inn bildet"),
        "fair": MessageLookupByLibrary.simpleMessage("Greit"),
        "favorite": MessageLookupByLibrary.simpleMessage("Favoritt"),
        "featureNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Funksjonen er ikke tilgjengelig"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Utvalgte produkter"),
        "featured": MessageLookupByLibrary.simpleMessage("Utvalgt"),
        "features": MessageLookupByLibrary.simpleMessage("Funksjoner"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Filen er for stor. Vennligst velg en mindre fil!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Opplasting av fil mislyktes!"),
        "files": MessageLookupByLibrary.simpleMessage("Filer"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtrer"),
        "fingerprintsTouchID":
            MessageLookupByLibrary.simpleMessage("Fingeravtrykk, Touch ID"),
        "finishSetup": MessageLookupByLibrary.simpleMessage("Fullfør oppsett"),
        "finnish": MessageLookupByLibrary.simpleMessage("Finsk"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Vær den første som kommenterer dette innlegget!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Fornavn"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Fornavn er påkrevd"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Første fornyelse"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Fast rabatt på handlekurv"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Fast rabatt på produkt"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("for dette produktet"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Gratis"),
        "french": MessageLookupByLibrary.simpleMessage("Fransk"),
        "friday": MessageLookupByLibrary.simpleMessage("Fredag"),
        "from": MessageLookupByLibrary.simpleMessage("Fra"),
        "fullName": MessageLookupByLibrary.simpleMessage("Fullt navn"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galleri"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Generelle innstillinger"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Genererer lenke..."),
        "german": MessageLookupByLibrary.simpleMessage("Tysk"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Motta varsler"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Få varsler!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Få passordlink"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Kom i gang"),
        "goBack": MessageLookupByLibrary.simpleMessage("Gå tilbake"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Gå tilbake til hjemmesiden"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Gå tilbake til adresse"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Gå tilbake til gjennomgang"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Gå tilbake til frakt"),
        "good": MessageLookupByLibrary.simpleMessage("God"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("Gresk"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Brutto salg"),
        "grouped": MessageLookupByLibrary.simpleMessage("Gruppert"),
        "guests": MessageLookupByLibrary.simpleMessage("Gjester"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("er slettet"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebraisk"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Skjul Om"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Skjul adresse"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Skjul e-post"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Skjul kart"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Skjul telefon"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Skjul policy"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Historie"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Historikk"),
        "home": MessageLookupByLibrary.simpleMessage("Hjem"),
        "hour": MessageLookupByLibrary.simpleMessage("Time"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("Ungarsk"),
        "hungary": MessageLookupByLibrary.simpleMessage("Ungarsk"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Jeg godtar"),
        "imIn": MessageLookupByLibrary.simpleMessage("Jeg er med"),
        "imageFeature": MessageLookupByLibrary.simpleMessage("Utvalgt bilde"),
        "imageGallery": MessageLookupByLibrary.simpleMessage("Bildegalleri"),
        "imageGenerate": MessageLookupByLibrary.simpleMessage("Generer bilde"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Bildetjeneste"),
        "inStock": MessageLookupByLibrary.simpleMessage("På lager"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Feil passord"),
        "india": MessageLookupByLibrary.simpleMessage("Hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indonesisk"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Informasjonstabell"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Lukk umiddelbart"),
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Ugyldig telefonnummer"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Ugyldig SMS-verifiseringskode"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Ugyldig fødselsår"),
        "invoice": MessageLookupByLibrary.simpleMessage("Faktura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Er alt klart...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("skriver..."),
        "italian": MessageLookupByLibrary.simpleMessage("Italiensk"),
        "item": MessageLookupByLibrary.simpleMessage("Vare"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Vare total: "),
        "items": MessageLookupByLibrary.simpleMessage("gjenstander"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage("Det er bestilt!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Jeg vil opprette en konto"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japansk"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Behold"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("Koreansk"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdisk"),
        "language": MessageLookupByLibrary.simpleMessage("Språk"),
        "languageSuccess":
            MessageLookupByLibrary.simpleMessage("Språket er oppdatert"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Etternavn"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Etternavn er påkrevd"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Siste transaksjoner"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Siste produkter"),
        "layout": MessageLookupByLibrary.simpleMessage("Oppsett"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Lyst tema"),
        "link": MessageLookupByLibrary.simpleMessage("Lenke"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Liste-banner-type"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Liste-banner-video"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Varslingsmeldinger"),
        "listening": MessageLookupByLibrary.simpleMessage("Lytter..."),
        "loadFail": MessageLookupByLibrary.simpleMessage("Kunne ikke laste"),
        "loading": MessageLookupByLibrary.simpleMessage("Laster..."),
        "loadingLink": MessageLookupByLibrary.simpleMessage("Laster lenke..."),
        "location": MessageLookupByLibrary.simpleMessage("Sted"),
        "lockScreenAndSecurity":
            MessageLookupByLibrary.simpleMessage("Låseskjerm og sikkerhet"),
        "login": MessageLookupByLibrary.simpleMessage("Logg inn"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Innloggingen er avbrutt"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Innlogging mislyktes!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Kan ikke logge inn! Vennligst kontakt administrator for å sjekke kontoen/rollen din."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Innlogging vellykket!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Vennligst logg inn for å kommentere"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Vennligst logg inn for å fortsette"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Logg inn på kontoen din"),
        "logout": MessageLookupByLibrary.simpleMessage("Logg ut"),
        "malay": MessageLookupByLibrary.simpleMessage("Malay"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Mankolleksjoner"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Administrer API-nøkkel"),
        "manageStock":
            MessageLookupByLibrary.simpleMessage("Administrer lager"),
        "map": MessageLookupByLibrary.simpleMessage("Kart"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Merk som lest"),
        "markAsShipped": MessageLookupByLibrary.simpleMessage("Merk som sendt"),
        "markAsUnread": MessageLookupByLibrary.simpleMessage("Merk som ulest"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Kanskje senere"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Menybestilling"),
        "menus": MessageLookupByLibrary.simpleMessage("Menyer"),
        "message": MessageLookupByLibrary.simpleMessage("Melding"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Send melding til"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Minimum antall er"),
        "minutesAgo": m29,
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Mobilverifisering"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("et øyeblikk siden"),
        "monday": MessageLookupByLibrary.simpleMessage("Mandag"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...mer"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Mer informasjon"),
        "morning": MessageLookupByLibrary.simpleMessage("Morgen"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Du må velge 1 element"),
        "myCart": MessageLookupByLibrary.simpleMessage("Handlekurven min"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Min bestilling"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Mine poeng"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Mine produkter"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Du har ingen produkter. Prøv å opprette ett!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Min Lommebok"),
        "myWishList": MessageLookupByLibrary.simpleMessage("Ønskelisten min"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Navn"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Navn på kortet"),
        "nearbyPlaces":
            MessageLookupByLibrary.simpleMessage("Nærliggende steder"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Du må logge inn på nytt for å oppdatere"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Nederlandsk"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Ny innhold tilgjengelig!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nytt passord"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Ny variasjon"),
        "next": MessageLookupByLibrary.simpleMessage("Neste"),
        "niceName": MessageLookupByLibrary.simpleMessage("Hyggelig navn"),
        "no": MessageLookupByLibrary.simpleMessage("Nei"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Ingen adresser er lagret ennå."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Ingen tidligere historikkoppføring"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Oops, bloggen ser ikke ut til å eksistere lenger"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Ingen kameratillatelse er gitt. Vennligst gi tillatelse i enhetens innstillinger."),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Ingen samtale ennå"),
        "noData": MessageLookupByLibrary.simpleMessage("Ingen data"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Ingen favoritter ennå."),
        "noFileToDownload":
            MessageLookupByLibrary.simpleMessage("Ingen filer å laste ned."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Ingen fremtidig historikkoppføring"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Ingen internettilkobling"),
        "noListingNearby": MessageLookupByLibrary.simpleMessage(
            "Ingen oppføringer i nærheten!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Ingen bestillinger"),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Beklager, dette produktet er ikke tilgjengelig for din nåværende rolle."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Dette produktet er tilgjengelig for brukere med spesifikke roller."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Vennligst logg inn med riktig legitimasjon for å få tilgang til dette produktet eller kontakt oss for mer informasjon."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Oops, denne siden ser ikke ut til å eksistere lenger!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Ingen skrivere"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Ingen produkt"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Ingen resultater funnet"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Ingen anmeldelser"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Ingen ledige tidspunkter"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("Ingen butikk i nærheten!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Ingen forslag til søk"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Nei takk"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Beklager, ingen videoer funnet."),
        "none": MessageLookupByLibrary.simpleMessage("Ingen"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Beklager, vi fant ingen resultater."),
        "notFound": MessageLookupByLibrary.simpleMessage("Ikke funnet"),
        "notRated": MessageLookupByLibrary.simpleMessage("Ikke vurdert"),
        "note": MessageLookupByLibrary.simpleMessage("Bestillingsnotat"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("merknad"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Merknad (valgfritt)"),
        "notice": MessageLookupByLibrary.simpleMessage("Merknad"),
        "notifications": MessageLookupByLibrary.simpleMessage("Varsler"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Varsle siste tilbud og tilgjengelighet av produkter"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("av dette produktet"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "on": MessageLookupByLibrary.simpleMessage("på"),
        "onSale": MessageLookupByLibrary.simpleMessage("Til salgs"),
        "onVacation": MessageLookupByLibrary.simpleMessage("På ferie"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 til hver mottaker"),
        "online": MessageLookupByLibrary.simpleMessage("På nett"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Åpent 24 timer"),
        "openMap": MessageLookupByLibrary.simpleMessage("Kart"),
        "openNow": MessageLookupByLibrary.simpleMessage("Åpent nå"),
        "openingHours": MessageLookupByLibrary.simpleMessage("Åpningstider"),
        "optional": MessageLookupByLibrary.simpleMessage("valgfritt"),
        "options": MessageLookupByLibrary.simpleMessage("Valg"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("ELLER"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("eller logg inn med"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Ordrebekreftelse"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Er du sikker på at du vil opprette bestillingen?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Bestillingsdato"),
        "orderDetail": MessageLookupByLibrary.simpleMessage("Ordredetaljer"),
        "orderHistory": MessageLookupByLibrary.simpleMessage("Ordrehistorikk"),
        "orderId": MessageLookupByLibrary.simpleMessage("Ordre-ID: "),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("Bestillings-ID"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Bestillingsnr"),
        "orderNotes":
            MessageLookupByLibrary.simpleMessage("Bestillingsnotater"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Ordrenummer"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Kansellert reversering"),
        "orderStatusCancelled": MessageLookupByLibrary.simpleMessage("Avbrutt"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Tilbakeføring"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Fullført"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Avvist"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Utløpt"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Mislyktes"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("Avventer"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Avventer"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Venter betaling"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Behandlet"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Behandles"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Refundert"),
        "orderStatusReversed":
            MessageLookupByLibrary.simpleMessage("Reversert"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Sendt"),
        "orderStatusVoided":
            MessageLookupByLibrary.simpleMessage("Ugyldiggjort"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Du kan sjekke statusen på bestillingen din ved å bruke vår sporingsfunksjon for levering. Du vil motta en bekreftelses-e-post med detaljer om bestillingen din og en lenke for å spore fremdriften."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Du kan logge inn på kontoen din ved å bruke e-post og passord som du tidligere har definert. På kontoen din kan du redigere profildata, sjekke transaksjonshistorikk og redigere abonnementet ditt på nyhetsbrevet."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Du har plassert bestillingen"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Din konto"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Bestillingsoppsummering"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("Totalt beløp"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Sporing av bestilling"),
        "orders": MessageLookupByLibrary.simpleMessage("Bestillinger"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("OTP-verifisering"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Våre bankdetaljer"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Ikke på lager"),
        "pageView": MessageLookupByLibrary.simpleMessage("Sidevisning"),
        "paid": MessageLookupByLibrary.simpleMessage("Betalt"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Betalingsstatus"),
        "password": MessageLookupByLibrary.simpleMessage("Passord"),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Passordfeltet er påkrevd"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Passordene stemmer ikke overens"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Lim inn bildeadressen"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Betal med lommebok"),
        "payNow": MessageLookupByLibrary.simpleMessage("Betal nå"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Betaling"),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Betalingsmetode"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Denne betalingsmetoden støttes ikke"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Betalingsmetoder"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Betalingen var vellykket"),
        "pending": MessageLookupByLibrary.simpleMessage("Avventer"),
        "persian": MessageLookupByLibrary.simpleMessage("Persisk"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefon"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("Telefonnummeret er tomt"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Format: +84123456789"),
        "phoneIsRequired":
            MessageLookupByLibrary.simpleMessage("Telefonnummer er påkrevd"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefonnummer"),
        "phoneNumberVerification":
            MessageLookupByLibrary.simpleMessage("Telefonnummerverifisering"),
        "pickADate": MessageLookupByLibrary.simpleMessage("Velg dato og tid"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Plasser bestillingen min"),
        "playAll": MessageLookupByLibrary.simpleMessage("Spill alle"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Vennligst legg til pris"),
        "pleaseAgreeTerms":
            MessageLookupByLibrary.simpleMessage("Vennligst godta våre vilkår"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Vennligst gi tilgang til kameraet og galleriet"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Vennligst sjekk internettforbindelsen!"),
        "pleaseChooseBranch":
            MessageLookupByLibrary.simpleMessage("Vennligst velg en avdeling"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Vennligst velg kategori"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv inn produktnavnet"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Fyll inn koden din"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Vennligst fyll ut alle feltene riktig"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Vennligst øk eller reduser mengden for å fortsette."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Vennligst fyll inn de påkrevde feltene"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Vennligst fyll ut alle feltene"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Vennligst velg en bookingsdato"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Vennligst velg en plassering"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Vennligst velg et alternativ for hver attributt for produktet"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Vennligst velg minst 1 variasjonsattributt for hvert aktivt attributt"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Vennligst velg bilder"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Vennligst velg påkrevde valg!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Vennligst logg inn på kontoen din før du laster opp filer."),
        "point": MessageLookupByLibrary.simpleMessage("Poeng"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Ingen rabattpoengkonfigurasjon funnet på serveren"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv inn rabattpoeng"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Maksimal rabattpoeng"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Du har ikke nok rabattpoeng. Totalt antall rabattpoeng du har er"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Du har nådd maksimalt antall rabattpoeng"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Den totale rabattverdien er høyere enn totalbeløpet"),
        "pointMsgRemove":
            MessageLookupByLibrary.simpleMessage("Rabattpoeng er fjernet"),
        "pointMsgSuccess":
            MessageLookupByLibrary.simpleMessage("Rabattpoeng er brukt"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Det er en rabattregel for å bruke poengene dine i handlekurven"),
        "polish": MessageLookupByLibrary.simpleMessage("Polsk"),
        "poor": MessageLookupByLibrary.simpleMessage("Dårlig"),
        "popular": MessageLookupByLibrary.simpleMessage("Populær"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularitet"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Denne adressen blir lagret på enheten din. Den er IKKE brukeradressen."),
        "postContent": MessageLookupByLibrary.simpleMessage("Innhold"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Innlegget ditt kunne ikke opprettes."),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Utgvalgt bilde"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Innleggsadministrasjon"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Legg ut produkt"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Innlegget ditt er opprettet."),
        "postTitle": MessageLookupByLibrary.simpleMessage("Tittel"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Forhåndsbetalt"),
        "prev": MessageLookupByLibrary.simpleMessage("Forrige"),
        "preview": MessageLookupByLibrary.simpleMessage("Forhåndsvisning"),
        "price": MessageLookupByLibrary.simpleMessage("Pris"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Pris: Høy til lav"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Pris: Lav til høy"),
        "prices": MessageLookupByLibrary.simpleMessage("Priser"),
        "printReceipt":
            MessageLookupByLibrary.simpleMessage("Skriv ut kvittering"),
        "printer": MessageLookupByLibrary.simpleMessage("Skrivere"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Skriveren ble ikke funnet"),
        "printerSelection": MessageLookupByLibrary.simpleMessage("Skrivervalg"),
        "printing": MessageLookupByLibrary.simpleMessage("Skriver ut..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Personvern og vilkår"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Personvernregler"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Personvern og vilkår"),
        "private": MessageLookupByLibrary.simpleMessage("Privat"),
        "product": MessageLookupByLibrary.simpleMessage("Produkt"),
        "productAddToCart": m36,
        "productAdded":
            MessageLookupByLibrary.simpleMessage("Produktet er lagt til"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Produktet ditt vil vises etter gjennomgang."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Beklager, dette produktet kan ikke fås tilgang til da det har utløpt."),
        "productName": MessageLookupByLibrary.simpleMessage("Produktnavn"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Produktnavnet kan ikke være tomt"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Produkttypen \'variabel\' trenger minst én variant"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Produkttypen \'enkelt\' trenger navn og ordinær pris"),
        "productOutOfStock":
            MessageLookupByLibrary.simpleMessage("Dette produktet er utsolgt"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Produktoversikt"),
        "productRating": MessageLookupByLibrary.simpleMessage("Din vurdering"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Produktanmeldelse"),
        "productType": MessageLookupByLibrary.simpleMessage("Produkttype"),
        "products": MessageLookupByLibrary.simpleMessage("Produkter"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("PromptPay ID:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("PromptPay-navn:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("PromptPay-type:"),
        "publish": MessageLookupByLibrary.simpleMessage("Publiser"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Dra for å laste mer"),
        "qRCodeMsgSuccess":
            MessageLookupByLibrary.simpleMessage("QR-koden er lagret"),
        "qRCodeSaveFailure":
            MessageLookupByLibrary.simpleMessage("Kunne ikke lagre QR-koden"),
        "qty": MessageLookupByLibrary.simpleMessage("antall"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Antall"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Den gjeldende mengden er mer enn mengden på lager"),
        "rate": MessageLookupByLibrary.simpleMessage("Vurder"),
        "rateProduct": MessageLookupByLibrary.simpleMessage("Vurder produkt"),
        "rateTheApp": MessageLookupByLibrary.simpleMessage("Vurder appen"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Gi vurdering til appen"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Hvis du liker denne appen, ta deg litt tid til å gi en vurdering!\nDet hjelper oss virkelig, og det tar ikke mer enn ett minutt."),
        "rating": MessageLookupByLibrary.simpleMessage("vurdering"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Vennligst gi vurdering før du sender kommentaren din"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Bestill på nytt"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Les anmeldelser"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Mottatt beløp"),
        "receiver": MessageLookupByLibrary.simpleMessage("Mottaker"),
        "recent": MessageLookupByLibrary.simpleMessage("Nylige"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Nylige søkeresultater"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("Ditt siste visning"),
        "recentlyViewed": MessageLookupByLibrary.simpleMessage("Nylig sett"),
        "recommended": MessageLookupByLibrary.simpleMessage("Anbefalt"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Gjentakende totaler"),
        "refresh": MessageLookupByLibrary.simpleMessage("Oppdater"),
        "refund": MessageLookupByLibrary.simpleMessage("Refusjon"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Forespørselen om refusjon for bestillingen mislyktes"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Be om refusjon for bestillingen din vellykket!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Refusjonsforespørsel"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Refusjon er forespurt"),
        "refunds": MessageLookupByLibrary.simpleMessage("refusjoner"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Generer nytt svar"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Registrer som"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Registrer som selger"),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Registrering mislyktes"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Registrering vellykket"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Vanlig pris"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Relaterte blogger"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Slipp for å laste mer"),
        "remove": MessageLookupByLibrary.simpleMessage("Fjern"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Fjern fra ønskelisten"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Be om bestilling"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Du har forespurt for mange koder på kort tid. Vennligst prøv igjen senere."),
        "resend": MessageLookupByLibrary.simpleMessage("SEND PÅ NYTT"),
        "reset": MessageLookupByLibrary.simpleMessage("Tilbakestill"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Tilbakestill passord"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Tilbakestill passordet ditt"),
        "results": MessageLookupByLibrary.simpleMessage("Resultater"),
        "retry": MessageLookupByLibrary.simpleMessage("Prøv på nytt"),
        "review": MessageLookupByLibrary.simpleMessage("Anmeldelse"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Godkjenning av omtale"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Omtalen din er sendt og venter på godkjenning!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Omtalen din er sendt!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Omtaler"),
        "romanian": MessageLookupByLibrary.simpleMessage("Rumensk"),
        "russian": MessageLookupByLibrary.simpleMessage("Russisk"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Salgspris"),
        "saturday": MessageLookupByLibrary.simpleMessage("Lørdag"),
        "save": MessageLookupByLibrary.simpleMessage("Lagre"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Lagre adresse"),
        "saveAddressSuccess":
            MessageLookupByLibrary.simpleMessage("Adresse lagret"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Lagre til senere"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Lagre QR-kode"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Lagre på ønskelisten"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Denne varen kan ikke skannes"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Du må logge inn før du kan skanne en bestilling"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Denne bestillingen er ikke tilgjengelig for din konto"),
        "search": MessageLookupByLibrary.simpleMessage("Søk"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Søk etter landnavn eller landkode"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Søk etter navn..."),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Søk etter produkter"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Vennligst skriv inn søketekst"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("Søk med Ordre-ID..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Søk sted"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Søker etter adresse"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Se alle"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Fortsett å se nytt innhold i appen din."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Se bestilling"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Se anmeldelser"),
        "select": MessageLookupByLibrary.simpleMessage("Velg"),
        "selectAddress": MessageLookupByLibrary.simpleMessage("Velg adresse"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Velg alle"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Velg datoer"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Valg av fil avbrutt!"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Velg bilde"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Velg ingen"),
        "selectPrinter": MessageLookupByLibrary.simpleMessage("Velg skriver"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Velg rolle"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Velg butikk"),
        "selectTheColor": MessageLookupByLibrary.simpleMessage("Velg farge"),
        "selectTheFile": MessageLookupByLibrary.simpleMessage("Velg fil"),
        "selectThePoint": MessageLookupByLibrary.simpleMessage("Velg poenget"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Velg antall"),
        "selectTheSize": MessageLookupByLibrary.simpleMessage("Velg størrelse"),
        "selectVoucher": MessageLookupByLibrary.simpleMessage("Velg gavekort"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Send tilbake"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Få kode"),
        "sendSMStoVendor":
            MessageLookupByLibrary.simpleMessage("Send SMS til butikkeier"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Separer flere e-postadresser med komma"),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbisk"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Økten er utløpt"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Vennligst sett en adresse i innstillingene"),
        "settings": MessageLookupByLibrary.simpleMessage("Innstillinger"),
        "setup": MessageLookupByLibrary.simpleMessage("Konfigurer"),
        "share": MessageLookupByLibrary.simpleMessage("Del"),
        "shipped": MessageLookupByLibrary.simpleMessage("Sendt"),
        "shipping": MessageLookupByLibrary.simpleMessage("Frakt"),
        "shippingAddress": MessageLookupByLibrary.simpleMessage("Fraktadresse"),
        "shippingMethod": MessageLookupByLibrary.simpleMessage("Fraktmetode"),
        "shop": MessageLookupByLibrary.simpleMessage("Butikk"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Butikk-e-post"),
        "shopName": MessageLookupByLibrary.simpleMessage("Butikknavn"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Butikkbestillinger"),
        "shopPhone": MessageLookupByLibrary.simpleMessage("Butikktelefon"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Butikknick"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Kort beskrivelse"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Vis alle mine bestillinger"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detaljer"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Vis galleri"),
        "showLess": MessageLookupByLibrary.simpleMessage("Vis mindre"),
        "showMore": MessageLookupByLibrary.simpleMessage("Vis mer"),
        "signIn": MessageLookupByLibrary.simpleMessage("Logg inn"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Logg inn med e-post"),
        "signUp": MessageLookupByLibrary.simpleMessage("Registrer deg"),
        "signup": MessageLookupByLibrary.simpleMessage("Registrer deg"),
        "simple": MessageLookupByLibrary.simpleMessage("Enkel"),
        "size": MessageLookupByLibrary.simpleMessage("Størrelse"),
        "skip": MessageLookupByLibrary.simpleMessage("Hopp over"),
        "sku": MessageLookupByLibrary.simpleMessage("Varenr."),
        "slovak": MessageLookupByLibrary.simpleMessage("Slovakisk"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "SMS-koden har utløpt. Vennligst send verifiseringskoden på nytt for å prøve igjen."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Solgt av"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Noe gikk galt. Vennligst prøv igjen senere."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Sorter etter"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Sorteringskode"),
        "spanish": MessageLookupByLibrary.simpleMessage("Spansk"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Tale ikke tilgjengelig"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Begynn å utforske"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Begynn å handle"),
        "state": MessageLookupByLibrary.simpleMessage("Stat"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("Stat er påkrevd"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("Stat / Provins"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "stock": MessageLookupByLibrary.simpleMessage("Lager"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Lagerbeholdning"),
        "stop": MessageLookupByLibrary.simpleMessage("Stopp"),
        "store": MessageLookupByLibrary.simpleMessage("Butikk"),
        "storeAddress": MessageLookupByLibrary.simpleMessage("Butikkadresse"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Banner"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Butikkmerke"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("Butikken er stengt nå"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Butikkens e-post"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Butikkinformasjon"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Butikkliste-banner"),
        "storeLocation": MessageLookupByLibrary.simpleMessage("butikklokasjon"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Butikklogo"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Butikk mobilbanner"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Butikkinnstillinger"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Butikk skyvebilde-banner"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Butikkstatisk banner"),
        "storeVacation": MessageLookupByLibrary.simpleMessage("Butikkferie"),
        "stores": MessageLookupByLibrary.simpleMessage("Butikker"),
        "street": MessageLookupByLibrary.simpleMessage("Gate"),
        "street2": MessageLookupByLibrary.simpleMessage("Gate 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("Gateadresse er påkrevd"),
        "streetName": MessageLookupByLibrary.simpleMessage("Gateadresse"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Leilighet"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Blokke"),
        "submit": MessageLookupByLibrary.simpleMessage("Send inn"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Send inn innlegget ditt"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "sunday": MessageLookupByLibrary.simpleMessage("Søndag"),
        "support": MessageLookupByLibrary.simpleMessage("Kundestøtte"),
        "swahili": MessageLookupByLibrary.simpleMessage("Swahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("Svensk"),
        "tagNotExist": MessageLookupByLibrary.simpleMessage(
            "Denne taggen eksisterer ikke"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Ta bilde"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tamil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Trykk for å velge denne plasseringen"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Trykk på mikrofonen for å snakke"),
        "tax": MessageLookupByLibrary.simpleMessage("Skatt"),
        "terrible": MessageLookupByLibrary.simpleMessage("Forferdelig"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Denne datoen er ikke tilgjengelig"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Denne funksjonen støtter ikke gjeldende språk"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Dette er kunderollen"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("Dette er selgerrollen"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Denne plattformen støtter ikke webvisning"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Dette produktet støttes ikke"),
        "thursday": MessageLookupByLibrary.simpleMessage("Torsdag"),
        "tickets": MessageLookupByLibrary.simpleMessage("Billetter"),
        "time": MessageLookupByLibrary.simpleMessage("Tid"),
        "title": MessageLookupByLibrary.simpleMessage("Tittel"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Tittel: A til Å"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Tittel: Å til A"),
        "to": MessageLookupByLibrary.simpleMessage("Til"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "For mange mislykkede påloggingsforsøk.Vennligst prøv igjen senere."),
        "topUp": MessageLookupByLibrary.simpleMessage("Fyll på"),
        "topUpProductNotFound":
            MessageLookupByLibrary.simpleMessage("Fyll på-produkt ikke funnet"),
        "total": MessageLookupByLibrary.simpleMessage("Totalt"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Totalverdien på bestillingen må være minst"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Totalpris"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Totalt skatt"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Sporingsnummer er"),
        "trackingPage": MessageLookupByLibrary.simpleMessage("Sporingsside"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transaksjonen er avbrutt"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Transaksjonsdetaljer"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("Transaksjonen mislyktes"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Transaksjonsgebyr"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Transaksjonsresultat"),
        "transfer": MessageLookupByLibrary.simpleMessage("Overfør"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Bekreft overføring"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Du kan ikke overføre til denne brukeren"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Overføring mislyktes"),
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Overføring vellykket"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tirsdag"),
        "turkish": MessageLookupByLibrary.simpleMessage("Tyrkisk"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Slå på Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Skriv en melding..."),
        "typeYourMessage":
            MessageLookupByLibrary.simpleMessage("Skriv meldingen din her..."),
        "typing": MessageLookupByLibrary.simpleMessage("Skriver..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ukrainsk"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Utilgjengelig"),
        "undo": MessageLookupByLibrary.simpleMessage("Angre"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Ubetalte"),
        "update": MessageLookupByLibrary.simpleMessage("Oppdater"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Oppdatering mislyktes!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Oppdater informasjon"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Oppdater passord"),
        "updateStatus": MessageLookupByLibrary.simpleMessage("Oppdater status"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Oppdatering vellykket!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Oppdater profil"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Last opp fil"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Last opp bilde"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Last opp produkt"),
        "uploading": MessageLookupByLibrary.simpleMessage("Laster opp"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Bruk nå"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Bruk dette bildet"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Dette brukernavnet/e-postadressen er ikke tilgjengelig."),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Brukernavnet eller passordet er feil."),
        "username": MessageLookupByLibrary.simpleMessage("Brukernavn"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Brukernavn og passord er påkrevd"),
        "vacationMessage": MessageLookupByLibrary.simpleMessage("Feriemelding"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Ferietype"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variabel"),
        "variation": MessageLookupByLibrary.simpleMessage("Variasjon"),
        "vendor": MessageLookupByLibrary.simpleMessage("Selger"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Leverandøradministrator"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Leverandørinformasjon"),
        "verificationCode":
            MessageLookupByLibrary.simpleMessage("Verifiseringskode (6 sifre)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Verifiser"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Via lommebok"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamesisk"),
        "view": MessageLookupByLibrary.simpleMessage("Vis"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Vis handlekurv"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Vis detaljer"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Vis mer"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Vis på Google Maps"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Vis bestilling"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Vis nylige transaksjoner"),
        "visible": MessageLookupByLibrary.simpleMessage("Synlig"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Besøk butikk"),
        "waitForLoad":
            MessageLookupByLibrary.simpleMessage("Venter på lasting av bilde"),
        "waitForPost": MessageLookupByLibrary.simpleMessage(
            "Venter på publisering av produkt"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Venter på bekreftelse"),
        "walletBalance": MessageLookupByLibrary.simpleMessage("Lommeboksaldo"),
        "walletName": MessageLookupByLibrary.simpleMessage("Lommeboknavn"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Vi fant blogg(er)"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Vi trenger tilgang til kameraet for å skanne QR-kode eller strekkode."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "En bekreftelseskode er sendt til"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Vi vil sende deg varsler når nye produkter er tilgjengelige eller tilbud er tilgjengelig. Du kan alltid slå det av i innstillingene."),
        "webView": MessageLookupByLibrary.simpleMessage("Nettleservisning"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Onsdag"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Velkommen"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Velkommen tilbake"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Start handlereisen med oss nå"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer": MessageLookupByLibrary.simpleMessage(
            "Hvilket språk foretrekker du?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Vennligst ta kontakt med administratoren for å godkjenne registreringen din."),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Kvinnekolleksjoner"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Skriv kommentaren din"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Skriv din merknad"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Ja"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Du kan bare kjøpe fra én butikk."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Du kan bare kjøpe"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Du har lagret adressen din til den lokale filen vellykket!"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Du har \$point poeng"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Du vil kanskje også like"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Du må logge inn for å fullføre kjøpet"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Du blir ikke spurt neste gang etter fullføringen"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Kontoen din blir gjennomgått. Kontakt administratoren hvis du trenger hjelp."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Adressen din finnes i lokal lagring"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Adressen er lagret i lokal lagring"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Søknaden din blir gjennomgått"),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Handlekurven din er tom"),
        "yourBookingDetail": MessageLookupByLibrary.simpleMessage(
            "Detaljer om bestillingen din"),
        "yourEarningsThisMonth": MessageLookupByLibrary.simpleMessage(
            "Din inntjening denne måneden"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Din merknad"),
        "yourOrderHasBeenAdded": MessageLookupByLibrary.simpleMessage(
            "Bestillingen din er lagt til"),
        "yourOrderIsConfirmed": MessageLookupByLibrary.simpleMessage(
            "Bestillingen din er bekreftet!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Bestillingen din er tom"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Det ser ut som du ikke har lagt til noen varer. \nBegynn å handle for å fylle den."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Dine ordre"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Produktet ditt blir gjennomgått"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Brukernavnet eller e-posten din"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Postnummer"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Postnummer er påkrevd")
      };
}
