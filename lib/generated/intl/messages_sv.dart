// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sv locale. All the
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
  String get localeName => 'sv';

  static String m0(x) => "Aktiv ${x}";

  static String m1(attribute) => "Alla ${attribute}";

  static String m2(point) => "Dina tillgängliga poäng: ${point}";

  static String m3(state) => "Bluetooth-adapter är ${state}";

  static String m4(currency) => "Ändrade valuta till ${currency}";

  static String m5(number) => "${number} tecken kvar";

  static String m6(priceRate, pointRate) => "${priceRate} = ${pointRate} poäng";

  static String m7(count) => "${count} objekt";

  static String m8(count) => "${count} objekt";

  static String m9(country) => "${country} land stöds inte";

  static String m10(currency) => "${currency} stöds inte";

  static String m11(day) => "${day} dagar sedan";

  static String m12(total) => "~${total} km";

  static String m13(timeLeft) => "Slutar om ${timeLeft}";

  static String m14(captcha) => "Ange ${captcha} för att bekräfta:";

  static String m15(message) => "Fel: ${message}";

  static String m16(time) => "Går ut om ${time}";

  static String m17(total) => ">${total} km";

  static String m18(hour) => "${hour} timmar sedan";

  static String m19(count) =>
      " ${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m20(message) =>
      "Det finns ett problem med appen under begäran om data. Kontakta admin för att åtgärda problemen: ${message}";

  static String m21(currency, amount) =>
      "Det maximala beloppet för att använda denna betalning är ${currency} ${amount}";

  static String m22(size) => "Maximal filstorlek: ${size} MB";

  static String m23(currency, amount) =>
      "Minsta belopp för att använda denna betalning är ${currency} ${amount}";

  static String m24(minute) => " För${minute} minuter sedan";

  static String m25(month) => "${month} månader sedan";

  static String m26(store) => "Mer från ${store}";

  static String m27(number) => "måste köpas i grupper om ${number}";

  static String m28(itemCount) => "${itemCount} objekt";

  static String m29(price) => "Totalt antal alternativ: ${price}";

  static String m30(amount) => "Betala ${amount}";

  static String m31(name) => "${name} har lagts till i kundvagnen";

  static String m32(total) => "Antal: ${total}";

  static String m33(percent) => "Försäljning ${percent}%";

  static String m34(keyword) => "Sökresultat för: \'${keyword}\'";

  static String m35(keyword, count) => "${keyword} (${count} objekt)";

  static String m36(keyword, count) => "${keyword} (${count} objekt)";

  static String m37(second) => " För${second} sekunder sedan";

  static String m38(totalCartQuantity) =>
      "Kundvagn, ${totalCartQuantity} artiklar";

  static String m39(numberOfUnitsSold) => "Såld: ${numberOfUnitsSold}";

  static String m40(fieldName) => "Fältet ${fieldName} är obligatoriskt";

  static String m41(total) => "${total} produkter";

  static String m42(maxPointDiscount, maxPriceDiscount) =>
      "Använd maximalt ${maxPointDiscount} poäng för en rabatt på ${maxPriceDiscount} på den här beställningen!";

  static String m43(date) => "Gäller till ${date}";

  static String m44(message) => "Varning: ${message}";

  static String m45(defaultCurrency) =>
      "Den valda valutan är inte tillgänglig för Wallet -funktionen. Ändra den till ${defaultCurrency}";

  static String m46(length) => "Vi hittade ${length} produkter";

  static String m47(week) => "Vecka ${week}";

  static String m48(name) => "Välkommen ${name}";

  static String m49(year) => " För${year} år sedan";

  static String m50(total) => "Du har tilldelat order nr${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("om oss"),
        "account": MessageLookupByLibrary.simpleMessage("Konto"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Att ta bort ditt konto tar bort personlig information från vår databas. Din e-post blir permanent reserverad och samma e-post kan inte återanvändas för att registrera ett nytt konto."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Kontot väntar på godkännande."),
        "accountNumber": MessageLookupByLibrary.simpleMessage("Kontonummer"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Kontoinställning"),
        "active": MessageLookupByLibrary.simpleMessage("Aktiva"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Aktiv för länge sedan"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Aktiv nu"),
        "addAName": MessageLookupByLibrary.simpleMessage("Lägg till ett namn"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Lägg till ett nytt inlägg"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Lägg till en snigel"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Lägg till ett attribut"),
        "addListing": MessageLookupByLibrary.simpleMessage("lägg till annons"),
        "addMessage":
            MessageLookupByLibrary.simpleMessage("Lägg till ett meddelande"),
        "addNew": MessageLookupByLibrary.simpleMessage("Lägg till ny"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Lägg till ny adress"),
        "addNewBlog":
            MessageLookupByLibrary.simpleMessage("Lägg till ny blogg"),
        "addNewPost": MessageLookupByLibrary.simpleMessage("Skapa nytt inlägg"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Lägg till produkt"),
        "addToCart":
            MessageLookupByLibrary.simpleMessage("Lägg till i kundvagn"),
        "addToCartMaximum":
            MessageLookupByLibrary.simpleMessage("Maxmängden har överskridits"),
        "addToCartSucessfully":
            MessageLookupByLibrary.simpleMessage("Lades till i kundvagnen"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Lägg till beställning"),
        "addToQuoteRequest":
            MessageLookupByLibrary.simpleMessage("Lägg till offertförfrågan"),
        "addToWishlist":
            MessageLookupByLibrary.simpleMessage("Lägg till i önskelista"),
        "added": MessageLookupByLibrary.simpleMessage("Lagt till"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Tillagt framgångsrikt"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Lägga till din bild"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Ytterligare information"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Ytterligare tjänster"),
        "address": MessageLookupByLibrary.simpleMessage("Adress"),
        "adults": MessageLookupByLibrary.simpleMessage("vuxna"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Eftermiddag"),
        "agree": MessageLookupByLibrary.simpleMessage("Hålla med"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("SEKRETESS OCH VILLKOR"),
        "albanian": MessageLookupByLibrary.simpleMessage("albansk"),
        "all": MessageLookupByLibrary.simpleMessage("Allt"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Alla märken"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Alla beställningar"),
        "allOrders":
            MessageLookupByLibrary.simpleMessage("Senaste försäljning"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Alla produkter"),
        "allow": MessageLookupByLibrary.simpleMessage("Tillåta"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "Vill du tillåta kameraåtkomst?"),
        "almostSoldOut":
            MessageLookupByLibrary.simpleMessage("Nästan slutsåld"),
        "amazing": MessageLookupByLibrary.simpleMessage("Fantastisk"),
        "amount": MessageLookupByLibrary.simpleMessage("Belopp"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Utseende"),
        "apply": MessageLookupByLibrary.simpleMessage("Tillämpa"),
        "approve": MessageLookupByLibrary.simpleMessage("Godkänna"),
        "approved": MessageLookupByLibrary.simpleMessage("Godkänd"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Godkända förfrågningar"),
        "arabic": MessageLookupByLibrary.simpleMessage("arabiska"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Är du säker?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du raderar ditt konto?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill logga ut?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill avsluta?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Delad"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Minst 3 tecken ..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Attribut"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Attribut finns redan"),
        "attributes": MessageLookupByLibrary.simpleMessage("Attribut"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Ljudobjekt upptäcktes. Vill du lägga till i Audio Player?"),
        "availability": MessageLookupByLibrary.simpleMessage("Tillgänglighet"),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Genomsnittligt betyg"),
        "back": MessageLookupByLibrary.simpleMessage("Tillbaka"),
        "backOrder": MessageLookupByLibrary.simpleMessage("På Rest"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Tillbaka till Shop"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Tillbaka till Plånbok"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Gears Collections"),
        "balance": MessageLookupByLibrary.simpleMessage("Balans"),
        "bank": MessageLookupByLibrary.simpleMessage("Bank"),
        "bannerListType": MessageLookupByLibrary.simpleMessage("Bannerlisttyp"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Bannertyp"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banner Youtube URL"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Grundläggande information"),
        "becomeAVendor": MessageLookupByLibrary.simpleMessage("Bli en säljare"),
        "bengali": MessageLookupByLibrary.simpleMessage("bengali"),
        "billingAddress": MessageLookupByLibrary.simpleMessage("Fakturaadress"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Bluetooth har inte aktiverats"),
        "bleState": m3,
        "blog": MessageLookupByLibrary.simpleMessage("blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Redan bokad"),
        "booking": MessageLookupByLibrary.simpleMessage("Bokning"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Avbokning av bokning"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Bekräftad"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Någonting är fel. Vänligen försök igen senare."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Bokningshistorik"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Boka nu"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Framgångsrikt bokat"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Bokningsöversikt"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Bokning är inte tillgänglig"),
        "bosnian": MessageLookupByLibrary.simpleMessage("bosnisk"),
        "branch": MessageLookupByLibrary.simpleMessage("Gren"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Tyvärr kommer varukorgen att tömmas på grund av byte av region. Vi kontaktar dig gärna om du behöver hjälp."),
        "brand": MessageLookupByLibrary.simpleMessage("varumärke"),
        "brands": MessageLookupByLibrary.simpleMessage("Märken"),
        "brazil": MessageLookupByLibrary.simpleMessage("portugisiska"),
        "burmese": MessageLookupByLibrary.simpleMessage("burmesiska"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Köp nu"),
        "by": MessageLookupByLibrary.simpleMessage("av"),
        "byAppointmentOnly": MessageLookupByLibrary.simpleMessage(
            "Endast efter överenskommelse"),
        "byBrand": MessageLookupByLibrary.simpleMessage("Efter varumärke"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Efter kategori"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Efter pris"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Genom att registrera dig godkänner du vår"),
        "byTag": MessageLookupByLibrary.simpleMessage("Av Tag"),
        "call": MessageLookupByLibrary.simpleMessage("Ring upp"),
        "callTo": MessageLookupByLibrary.simpleMessage("Ring ett samtal till"),
        "callToVendor":
            MessageLookupByLibrary.simpleMessage("Ring till butiksägaren"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("Kan inte skapa beställning"),
        "canNotCreateUser":
            MessageLookupByLibrary.simpleMessage("Kan inte skapa användaren."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Kan inte få betalningsmetoder"),
        "canNotGetShipping":
            MessageLookupByLibrary.simpleMessage("Kan inte få leveransmetoder"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Kan inte få information om token."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Det går inte att starta den här appen, se till att dina inställningar på config.dart är korrekta"),
        "canNotLoadThisLink":
            MessageLookupByLibrary.simpleMessage("Kan inte ladda denna länk"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Tyvärr kan denna video inte spelas upp."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Det går inte att spara beställningen på webbplatsen"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Kan inte uppdatera användarinformation."),
        "cancel": MessageLookupByLibrary.simpleMessage("Annullera"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Inställt"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Avbrutna förfrågningar"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Det här beställnings-ID: t hittades inte"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Tidigare datum är inte tillåtet"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Korthållare"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Kortnummer"),
        "cart": MessageLookupByLibrary.simpleMessage("Vagn"),
        "cartDiscount": MessageLookupByLibrary.simpleMessage("Kundvagn rabatt"),
        "cash": MessageLookupByLibrary.simpleMessage("kontanter"),
        "categories": MessageLookupByLibrary.simpleMessage("kategorier"),
        "category": MessageLookupByLibrary.simpleMessage("KAtegori"),
        "change": MessageLookupByLibrary.simpleMessage("Byta"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Ändra språk"),
        "changePrinter": MessageLookupByLibrary.simpleMessage("Byt skrivare"),
        "changedCurrencyTo": m4,
        "characterRemain": m5,
        "chat": MessageLookupByLibrary.simpleMessage("Chatt"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Chatta GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("meddelanden"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Chatta via Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Chatta via WhatsApp"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Chatta med Bot"),
        "chatWithStoreOwner":
            MessageLookupByLibrary.simpleMessage("Chatta med butiksägaren"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Kontrollera din e-post för bekräftelse länk"),
        "checking": MessageLookupByLibrary.simpleMessage("kontroll..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Checka ut"),
        "chinese": MessageLookupByLibrary.simpleMessage("kinesisk"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Förenklad kinesiska)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Traditionell Kinesisk)"),
        "chooseBranch": MessageLookupByLibrary.simpleMessage("Välj gren"),
        "chooseCategory": MessageLookupByLibrary.simpleMessage("Välj kategori"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Välj från galleriet"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Välj Från server"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Välj plan"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Välj Personal"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Välj typ"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Välj din betalningsmetod"),
        "city": MessageLookupByLibrary.simpleMessage("Stad"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("Stadsfältet krävs"),
        "clear": MessageLookupByLibrary.simpleMessage("Klar"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Rensa vagn"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Tydlig konversation"),
        "close": MessageLookupByLibrary.simpleMessage("Stänga"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Stängt nu"),
        "closed": MessageLookupByLibrary.simpleMessage("Stängd"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage("COD extra avgift"),
        "color": MessageLookupByLibrary.simpleMessage("Färg"),
        "comment": MessageLookupByLibrary.simpleMessage("Kommentar"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Vänligen skriv din kommentar"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Kommentera, vänta tills din kommentar har godkänts"),
        "complete": MessageLookupByLibrary.simpleMessage("Komplett"),
        "confirm": MessageLookupByLibrary.simpleMessage("Bekräfta"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Bekräfta borttagning av konto"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Vagnen rensas vid påfyllning."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill rensa vagnen?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill ta bort detta? Denna åtgärd kan inte ångras."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill ta bort det här objektet?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Bekräfta lösenord"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Fältet för bekräftande lösenord krävs"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill ta bort den här produkten?"),
        "connect": MessageLookupByLibrary.simpleMessage("Ansluta"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakta"),
        "content": MessageLookupByLibrary.simpleMessage("Innehåll"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Fortsätt handla"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Fortsätt till betalning"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Fortsätt granska"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Fortsätt till frakt"),
        "continues": MessageLookupByLibrary.simpleMessage("Fortsätta"),
        "conversations": MessageLookupByLibrary.simpleMessage("Konversationer"),
        "convertPoint": m6,
        "copied": MessageLookupByLibrary.simpleMessage("kopierade"),
        "copy": MessageLookupByLibrary.simpleMessage("Kopia"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Alla rättigheter reserverade."),
        "countItem": m7,
        "countItems": m8,
        "country": MessageLookupByLibrary.simpleMessage("Land"),
        "countryIsNotSupported": m9,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Landsfältet krävs"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Kupongskod"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Kupongen har sparats framgångsrikt."),
        "couponInvalid":
            MessageLookupByLibrary.simpleMessage("Din kupongkod är ogiltig"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Grattis! Kupongkoden tillämpades framgångsrikt"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("skapa ett konto"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ditt inlägg har skapats som ett utkast. Ta en titt på din administratörswebbplats."),
        "createPost": MessageLookupByLibrary.simpleMessage("Skapa inlägg"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Skapa produkt"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Tack för din recension"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Vi uppskattar verkligen din input och värdesätter ditt bidrag för att hjälpa oss att förbättras"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Skapa alla varianter"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Skapad på:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Valutor"),
        "currencyIsNotSupported": m10,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Nuvarande lösenord"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("För närvarande har vi bara"),
        "customer": MessageLookupByLibrary.simpleMessage("Kund"),
        "customerDetail": MessageLookupByLibrary.simpleMessage("Kunddetalj"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Kundanteckning"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("tjeck"),
        "danish": MessageLookupByLibrary.simpleMessage("danska"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Mörkt tema"),
        "dashboard": MessageLookupByLibrary.simpleMessage("instrumentbräda"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Data tom"),
        "date": MessageLookupByLibrary.simpleMessage("Datum"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Datum stigande"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Datumbokning"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Datum fallande"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Datum slut"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Datum: Senaste"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Datum: Äldst"),
        "dateStart": MessageLookupByLibrary.simpleMessage("startdatum"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Datum Tid"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Datum klokt nära"),
        "daysAgo": m11,
        "debit": MessageLookupByLibrary.simpleMessage("Debitera"),
        "decline": MessageLookupByLibrary.simpleMessage("Nedgång"),
        "delete": MessageLookupByLibrary.simpleMessage("Radera"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Radera konto"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du vill ta bort ditt konto? Vänligen läs hur borttagning av konto kommer att påverka."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Kontot har raderats. Din session har gått ut."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Radera allt"),
        "delivered": MessageLookupByLibrary.simpleMessage("levereras"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Levererad till"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Springpojke:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Leveransdatum"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("leveransdetaljer"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Leverans"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Inga data.\nDenna order har tagits bort."),
        "description": MessageLookupByLibrary.simpleMessage("Beskrivning"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Vänligen ange eller välj värdekupongen för din beställning."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Har du inte fått koden?"),
        "direction": MessageLookupByLibrary.simpleMessage("riktning"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Inaktivera köp"),
        "discount": MessageLookupByLibrary.simpleMessage("Rabatt"),
        "displayName": MessageLookupByLibrary.simpleMessage("Visningsnamn"),
        "distance": m12,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Du har inga transaktioner än"),
        "doYouWantToExitApp":
            MessageLookupByLibrary.simpleMessage("Vill du avsluta en app"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Vill du lämna utan att skicka in din recension?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Vill du logga ut?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay stöds inte. Kontrollera din plånbok och kort"),
        "done": MessageLookupByLibrary.simpleMessage("Gjort"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Har du inget konto?"),
        "download": MessageLookupByLibrary.simpleMessage("Ladda ner"),
        "downloadApp": MessageLookupByLibrary.simpleMessage("Ladda ner app"),
        "draft": MessageLookupByLibrary.simpleMessage("Förslag"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Förare tilldelad"),
        "duration": MessageLookupByLibrary.simpleMessage("Varaktighet"),
        "dutch": MessageLookupByLibrary.simpleMessage("holländska"),
        "earnings": MessageLookupByLibrary.simpleMessage("Förtjänst"),
        "edit": MessageLookupByLibrary.simpleMessage("Redigera:"),
        "editProductInfo":
            MessageLookupByLibrary.simpleMessage("Redigera produktinformation"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Redigera"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egypten"),
        "email": MessageLookupByLibrary.simpleMessage("E-post"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Om du tar bort ditt konto avregistreras du från alla e-postlistor."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "E-postkontot som du angav finns inte. Var god försök igen."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("E-postfältet krävs"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("E-postprenumeration"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Det verkar som att du inte har gjort några bokningar än.\nBörja utforska och gör din första bokning!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Tom vagn"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Det verkar som att du inte har lagt till några saker i väskan än. Börja handla för att fylla i det."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "hoppsan! Din vagn känns lite lätt.\n\nRedo att handla något fantastiskt?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Din kommentar får inte vara tom"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Du har inte sökt efter objekt än. Låt oss börja nu - vi hjälper dig."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Det finns inga tillgängliga fraktalternativ. Se till att din adress har angetts korrekt, eller kontakta oss om du behöver hjälp."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "Användarnamn / e-post är tomt"),
        "emptyWishlist": MessageLookupByLibrary.simpleMessage("Tom önskelista"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tryck på valfritt hjärta bredvid en produkt som du vill favorit. Vi sparar dem åt dig här!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Din önskelista är för närvarande tom.\nBörja lägga till produkter nu!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Aktivera för utcheckning"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Aktivera för inloggning"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Aktivera för Wallet"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Aktivera semesterläge"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Välj ett datum efter första dejten"),
        "endsIn": m13,
        "english": MessageLookupByLibrary.simpleMessage("engelsk"),
        "enterCaptcha": m14,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Ange en e-postadress för varje mottagare"),
        "enterSendedCode":
            MessageLookupByLibrary.simpleMessage("Ange koden som skickas till"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Skriv in en kupongkod"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Skriv in din e-postadress"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Ange din e-postadress eller ditt användarnamn"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Skriv in ditt förnamn"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Ange ditt efternamn"),
        "enterYourMobile":
            MessageLookupByLibrary.simpleMessage("Ange ditt mobilnummer"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Ange ditt lösenord"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Ange ditt telefonnummer för att komma igång."),
        "enterYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Skriv in ditt telefonnummer"),
        "error": m15,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Det angivna beloppet är större än det aktuella plånboksbeloppet. Var god försök igen!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Ange en giltig e-postadress."),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Ange ett lösenord på minst 8 tecken"),
        "evening": MessageLookupByLibrary.simpleMessage("Kväll"),
        "events": MessageLookupByLibrary.simpleMessage("evenemang"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("förväntat leveransdatum"),
        "expired": MessageLookupByLibrary.simpleMessage("Utgånget"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Utgånget datum"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MMÅÅ"),
        "expiringInTime": m16,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Utforska nu"),
        "external": MessageLookupByLibrary.simpleMessage("Extern"),
        "extraServices": MessageLookupByLibrary.simpleMessage("Extra tjänster"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att tilldela användare"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att skapa länk"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att läsa in applikationskonfigurationen. Försök igen eller starta om din applikation."),
        "failedToLoadImage": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att ladda bilden"),
        "fair": MessageLookupByLibrary.simpleMessage("Rättvis"),
        "favorite": MessageLookupByLibrary.simpleMessage("favorit"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Funktionen är inte tillgänglig"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Feature-produkter"),
        "featured": MessageLookupByLibrary.simpleMessage("Dagens"),
        "features": MessageLookupByLibrary.simpleMessage("funktioner"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Filen är för stor. Välj en mindre fil!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Filöverföringen misslyckades!"),
        "files": MessageLookupByLibrary.simpleMessage("filer"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtrera"),
        "fingerprintsTouchID":
            MessageLookupByLibrary.simpleMessage("Fingeravtryck, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Slutför installationen"),
        "finnish": MessageLookupByLibrary.simpleMessage("finsk"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Var den första som kommenterar detta inlägg!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Förnamn"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Förnamnsfältet krävs"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Första förnyelsen"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Fast kundrabatt"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Fast produktrabatt"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("för denna produkt"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Gratis"),
        "french": MessageLookupByLibrary.simpleMessage("franska"),
        "friday": MessageLookupByLibrary.simpleMessage("Fredag"),
        "from": MessageLookupByLibrary.simpleMessage("Från"),
        "fullName": MessageLookupByLibrary.simpleMessage("Fullständiga namn"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galleri"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Allmän inställning"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Genererar länk..."),
        "german": MessageLookupByLibrary.simpleMessage("tysk"),
        "getNotification": MessageLookupByLibrary.simpleMessage("Få notis"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Bli meddelad!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Hämta lösenordslänk"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Komma igång"),
        "goBack": MessageLookupByLibrary.simpleMessage("Gå tillbaka"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Gå tillbaka till startsidan"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Gå tillbaka till adressen"),
        "goBackToReview": MessageLookupByLibrary.simpleMessage(
            "Gå tillbaka till recensionen"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Gå tillbaka till frakt"),
        "good": MessageLookupByLibrary.simpleMessage("Bra"),
        "greaterDistance": m17,
        "greek": MessageLookupByLibrary.simpleMessage("grekisk"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Bruttoförsäljning"),
        "grouped": MessageLookupByLibrary.simpleMessage("grupperade"),
        "guests": MessageLookupByLibrary.simpleMessage("gäster"),
        "hasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("har blivit raderad"),
        "hebrew": MessageLookupByLibrary.simpleMessage("hebreiska"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Göm om"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Dölj adress"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Dölj e-post"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Dölj karta"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Dölj telefon"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Dölj policy"),
        "hindi": MessageLookupByLibrary.simpleMessage("hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Historia"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Historia"),
        "home": MessageLookupByLibrary.simpleMessage("Hem"),
        "hour": MessageLookupByLibrary.simpleMessage("timme"),
        "hoursAgo": m18,
        "hungarian": MessageLookupByLibrary.simpleMessage("ungerska"),
        "hungary": MessageLookupByLibrary.simpleMessage("ungerska"),
        "iAgree": MessageLookupByLibrary.simpleMessage("jag håller med"),
        "imIn": MessageLookupByLibrary.simpleMessage("Jag är i"),
        "imageFeature": MessageLookupByLibrary.simpleMessage("Bildfunktion"),
        "imageGallery": MessageLookupByLibrary.simpleMessage("Bildgalleri"),
        "imageGenerate": MessageLookupByLibrary.simpleMessage("Bild generera"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Bildnätverk"),
        "inStock": MessageLookupByLibrary.simpleMessage("I Lager"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Fel lösenord"),
        "india": MessageLookupByLibrary.simpleMessage("hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("indonesisk"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Informationstabell"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Omedelbart nära"),
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Ogiltigt telefonnummer"),
        "invalidSMSCode":
            MessageLookupByLibrary.simpleMessage("Ogiltig SMS-verifieringskod"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Ogiltigt födelseår"),
        "invoice": MessageLookupByLibrary.simpleMessage("Faktura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Är allt klart ...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("skriver..."),
        "italian": MessageLookupByLibrary.simpleMessage("italienska"),
        "item": MessageLookupByLibrary.simpleMessage("Artikel"),
        "itemQuantity": m19,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Artikel totalt:"),
        "items": MessageLookupByLibrary.simpleMessage("artiklar"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage("Det är beställt!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Jag vill skapa ett konto"),
        "japanese": MessageLookupByLibrary.simpleMessage("japansk"),
        "kannada": MessageLookupByLibrary.simpleMessage("kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Ha kvar"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("korean"),
        "kurdish": MessageLookupByLibrary.simpleMessage("kurdisk"),
        "language": MessageLookupByLibrary.simpleMessage("Språk"),
        "languageSuccess":
            MessageLookupByLibrary.simpleMessage("Språket har uppdaterats"),
        "lao": MessageLookupByLibrary.simpleMessage("lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Efternamn"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Efternamnfältet krävs"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Sista transaktioner"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Senaste produkterna"),
        "layout": MessageLookupByLibrary.simpleMessage("Layouter"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Lätt tema"),
        "link": MessageLookupByLibrary.simpleMessage("Länk"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Lista bannertyp"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Lista Banner Video"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Meddela meddelanden"),
        "listening": MessageLookupByLibrary.simpleMessage("Lyssnande..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Laddningen misslyckades!"),
        "loading": MessageLookupByLibrary.simpleMessage("Läser in..."),
        "loadingLink": MessageLookupByLibrary.simpleMessage("Laddar länk..."),
        "location": MessageLookupByLibrary.simpleMessage("Plats"),
        "lockScreenAndSecurity":
            MessageLookupByLibrary.simpleMessage("Låsskärm och säkerhet"),
        "login": MessageLookupByLibrary.simpleMessage("Logga in"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Inloggningen avbryts"),
        "loginErrorServiceProvider": m20,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Inloggningen misslyckades!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Du får inte använda den här appen."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Logga in framgångsrikt!"),
        "loginToComment":
            MessageLookupByLibrary.simpleMessage("Logga in för att kommentera"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Var vänlig logga in för att fortsätta"),
        "loginToReview":
            MessageLookupByLibrary.simpleMessage("Logga in för att granska"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Logga in på ditt konto"),
        "logout": MessageLookupByLibrary.simpleMessage("Logga ut"),
        "malay": MessageLookupByLibrary.simpleMessage("Malay"),
        "manCollections": MessageLookupByLibrary.simpleMessage("Mansamlingar"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Hantera API-nyckel"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Hantera lager"),
        "map": MessageLookupByLibrary.simpleMessage("Karta"),
        "marathi": MessageLookupByLibrary.simpleMessage("marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Markera som läst"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Markera som levererad"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("markera som oläst"),
        "maxAmountForPayment": m21,
        "maximumFileSizeMb": m22,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Kanske senare"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Menyordning"),
        "menus": MessageLookupByLibrary.simpleMessage("Menyer"),
        "message": MessageLookupByLibrary.simpleMessage("Meddelande"),
        "messageTo":
            MessageLookupByLibrary.simpleMessage("Skicka meddelande till"),
        "minAmountForPayment": m23,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Minsta kvantitet är"),
        "minutesAgo": m24,
        "mobile": MessageLookupByLibrary.simpleMessage("Mobil"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Mobil verifiering"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("en stund sedan"),
        "monday": MessageLookupByLibrary.simpleMessage("Måndag"),
        "monthsAgo": m25,
        "more": MessageLookupByLibrary.simpleMessage("...Mer"),
        "moreFromStore": m26,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Mer information"),
        "morning": MessageLookupByLibrary.simpleMessage("Morgon"),
        "mustBeBoughtInGroupsOf": m27,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Måste välja ett objekt"),
        "myCart": MessageLookupByLibrary.simpleMessage("Min vagn"),
        "myOrder": MessageLookupByLibrary.simpleMessage("MIN ORDER"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Mina poäng"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Mina produkter"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Du har inga produkter. Försök att skapa en!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Min plånbok"),
        "myWishList": MessageLookupByLibrary.simpleMessage("min önskelista"),
        "nItems": m28,
        "name": MessageLookupByLibrary.simpleMessage("Namn"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Namn på kort"),
        "nearbyPlaces":
            MessageLookupByLibrary.simpleMessage("Närliggande platser"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Du måste logga in igen för att genomföra uppdateringen"),
        "netherlands": MessageLookupByLibrary.simpleMessage("holländska"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Nytt innehåll tillgängligt!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("nytt lösenord"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Ny variant"),
        "next": MessageLookupByLibrary.simpleMessage("Nästa"),
        "niceName": MessageLookupByLibrary.simpleMessage("Fint namn"),
        "no": MessageLookupByLibrary.simpleMessage("Nej"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Inga adresser har sparats ännu."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Inget tillbaka historikobjekt"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Opps, bloggen verkar inte längre existera"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Inget kameratillstånd beviljas. Bevilja det i enhetens inställningar."),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Ingen konversation ännu"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Det kommer att visas när dina kunder börjar chatta med dig"),
        "noData": MessageLookupByLibrary.simpleMessage("Inga fler data"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Inga favoriter än."),
        "noFileToDownload":
            MessageLookupByLibrary.simpleMessage("Ingen fil att ladda ner."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Inget vidarebefordrat objekt"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Ingen internetanslutning"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("Ingen lista i närheten!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Inga beställningar"),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Tyvärr, den här produkten är inte tillgänglig för din nuvarande roll."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Den här produkten är tillgänglig för användare med specifika roller. Logga in med lämpliga uppgifter för att komma åt den här produkten eller kontakta oss för mer information."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Logga in med lämpliga uppgifter för att komma åt den här produkten eller kontakta oss för mer information."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Opps, den här sidan verkar inte längre finnas!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Inga skrivare"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Ingen produkt"),
        "noResultFound": MessageLookupByLibrary.simpleMessage("Inga resultat"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Inga recensioner"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Ingen plats tillgänglig"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("Ingen butik i närheten!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Det finns inga förslag"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Nej tack"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Tyvärr, inga transaktioner hittades!"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Tyvärr, inga videor hittades."),
        "none": MessageLookupByLibrary.simpleMessage("Ingen"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Tyvärr, vi kunde inte hitta några resultat."),
        "notFound": MessageLookupByLibrary.simpleMessage("Hittades inte"),
        "notRated": MessageLookupByLibrary.simpleMessage("inte betygsatt"),
        "note":
            MessageLookupByLibrary.simpleMessage("Beställningsanteckningar"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Notera"),
        "noteTransfer": MessageLookupByLibrary.simpleMessage("Obs (valfritt)"),
        "notice": MessageLookupByLibrary.simpleMessage("Lägga märke till"),
        "notifications": MessageLookupByLibrary.simpleMessage("anmälningar"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Meddela senaste erbjudanden och produkttillgänglighet"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("av denna produkt"),
        "ok": MessageLookupByLibrary.simpleMessage("ok"),
        "on": MessageLookupByLibrary.simpleMessage("På"),
        "onSale": MessageLookupByLibrary.simpleMessage("Till salu"),
        "onVacation": MessageLookupByLibrary.simpleMessage("På semester"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 till varje mottagare"),
        "online": MessageLookupByLibrary.simpleMessage("uppkopplad"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Öppet 24h"),
        "openMap": MessageLookupByLibrary.simpleMessage("Öppna karta"),
        "openNow": MessageLookupByLibrary.simpleMessage("Öppna nu"),
        "openingHours": MessageLookupByLibrary.simpleMessage("öppettider"),
        "optional": MessageLookupByLibrary.simpleMessage("Valfri"),
        "options": MessageLookupByLibrary.simpleMessage("alternativ"),
        "optionsTotal": m29,
        "or": MessageLookupByLibrary.simpleMessage("eller"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("eller logga in med"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Orderbekräftelse"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Är du säker på att du skapar beställningen?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Orderdatum"),
        "orderDetail": MessageLookupByLibrary.simpleMessage("Orderdetaljer"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Beställningshistorik"),
        "orderId": MessageLookupByLibrary.simpleMessage("Beställnings-ID:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("Beställnings-ID"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Beställningsnr."),
        "orderNotes":
            MessageLookupByLibrary.simpleMessage("Beställningsanteckningar"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Ordernummer"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Avbruten återföring"),
        "orderStatusCancelled": MessageLookupByLibrary.simpleMessage("Avbokad"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Ladda tillbaka"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Avslutad"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Nekad"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Utgånget"),
        "orderStatusFailed":
            MessageLookupByLibrary.simpleMessage("misslyckades"),
        "orderStatusOnHold":
            MessageLookupByLibrary.simpleMessage("Placerad i kö"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Avvaktan"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Väntande betalning"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Bearbetade"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("bearbetning"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("återbetalas"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("Omvänd"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("levereras"),
        "orderStatusVoided":
            MessageLookupByLibrary.simpleMessage("ogiltigförklaras"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Du kan kontrollera status för din beställning med hjälp av vår leveransstatusfunktion. Du kommer att få ett orderbekräftelsemeddelande med information om din beställning och en länk för att spåra dess framsteg."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Du kan logga in på ditt konto med e-post och lösenord som definierats tidigare. På ditt konto kan du redigera dina profildata, kontrollera transaktionshistoriken, redigera prenumerationen på nyhetsbrevet."),
        "orderSuccessTitle1":
            MessageLookupByLibrary.simpleMessage("Du har gjort beställningen"),
        "orderSuccessTitle2":
            MessageLookupByLibrary.simpleMessage("Ditt konto"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Ordersammanfattning"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("ordersumma"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Försändelsespårning"),
        "orders": MessageLookupByLibrary.simpleMessage("Order"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("OTP-verifiering"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Våra bankuppgifter"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Tillfälligt slut"),
        "pageView": MessageLookupByLibrary.simpleMessage("Sidvy"),
        "paid": MessageLookupByLibrary.simpleMessage("betald"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Betald status"),
        "password": MessageLookupByLibrary.simpleMessage("Lösenord"),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Fältet Lösenord krävs"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Lösenorden matchar inte"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Klistra in din bild-url"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Betala med plånbok"),
        "payNow": MessageLookupByLibrary.simpleMessage("Betala nu"),
        "payWithAmount": m30,
        "payment": MessageLookupByLibrary.simpleMessage("Betalning"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Betalningsinformationen har ändrats."),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Betalningsmetod"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Denna betalningsmetod stöds inte"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("betalningsmetoder"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Betalningsinställningar"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Betalning genomförd"),
        "pending": MessageLookupByLibrary.simpleMessage("Avvaktan"),
        "persian": MessageLookupByLibrary.simpleMessage("perser"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefon"),
        "phoneEmpty": MessageLookupByLibrary.simpleMessage("Telefonen är tom"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Format: +84123456789"),
        "phoneIsRequired":
            MessageLookupByLibrary.simpleMessage("Telefonnummerfältet krävs"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefonnummer"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Verifiering av telefonnummer"),
        "pickADate": MessageLookupByLibrary.simpleMessage("Välj datum och tid"),
        "placeMyOrder": MessageLookupByLibrary.simpleMessage("Lägg min order"),
        "playAll": MessageLookupByLibrary.simpleMessage("Spela alla"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Lägg till pris"),
        "pleaseAgreeTerms":
            MessageLookupByLibrary.simpleMessage("Godkänn våra villkor"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Tillåt åtkomst till kameran och galleriet"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Kontrollera internetanslutningen!"),
        "pleaseChooseBranch":
            MessageLookupByLibrary.simpleMessage("Välj en filial"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Välj kategori"),
        "pleaseEnterProductName":
            MessageLookupByLibrary.simpleMessage("Ange produktnamnet"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Vänligen fyll din kod"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Vänligen öka eller minska mängden för att fortsätta."),
        "pleaseInput":
            MessageLookupByLibrary.simpleMessage("Ange fyll i alla fält"),
        "pleaseInputFillAllFields":
            MessageLookupByLibrary.simpleMessage("Ange fyll i alla fält"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Vänligen välj ett bokningsdatum"),
        "pleaseSelectALocation":
            MessageLookupByLibrary.simpleMessage("Vänligen välj en plats"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Välj ett alternativ för varje attribut för produkten"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Välj minst ett alternativ för varje aktivt attribut"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Välj bilder"),
        "pleaseSelectRequiredOptions":
            MessageLookupByLibrary.simpleMessage("Välj önskade alternativ!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Logga in på ditt konto innan du laddar upp några filer."),
        "pleasefillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "* Fyll i alla celler ordentligt"),
        "point": MessageLookupByLibrary.simpleMessage("Punkt"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Det finns ingen rabattpunktskonfiguration har hittats på servern"),
        "pointMsgEnter":
            MessageLookupByLibrary.simpleMessage("Ange rabattpunkt"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Maximal rabatt"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Du har inte tillräckligt med rabatt. Din totala rabattpoäng är"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Du har nått maximal rabatt"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Det totala rabattvärdet överstiger räkningen"),
        "pointMsgRemove":
            MessageLookupByLibrary.simpleMessage("Rabattpunkten tas bort"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Rabattpunkten har tillämpats"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Det finns rabatteregeln för att tillämpa dina poäng på kundvagnen"),
        "polish": MessageLookupByLibrary.simpleMessage("putsa"),
        "poor": MessageLookupByLibrary.simpleMessage("Fattig"),
        "popular": MessageLookupByLibrary.simpleMessage("populär"),
        "popularity": MessageLookupByLibrary.simpleMessage("popularitet"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Den här adressen kommer att sparas på din lokala enhet. Det är INTE användaradressen."),
        "postContent": MessageLookupByLibrary.simpleMessage("Innehåll"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att skapa ditt inlägg"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Bildfunktion"),
        "postManagement": MessageLookupByLibrary.simpleMessage("Posthantering"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Lägg upp produkt"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ditt inlägg har skapats framgångsrikt"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Titel"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Förbetalt"),
        "prev": MessageLookupByLibrary.simpleMessage("prev"),
        "preview": MessageLookupByLibrary.simpleMessage("Förhandsvisning"),
        "price": MessageLookupByLibrary.simpleMessage("Pris"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Pris: högt till lågt"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Pris: Lågt till högt"),
        "prices": MessageLookupByLibrary.simpleMessage("Menyer"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Skriv ut kvitto"),
        "printer": MessageLookupByLibrary.simpleMessage("skrivare"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Skrivaren hittades inte"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Val av skrivare"),
        "printing": MessageLookupByLibrary.simpleMessage("Utskrift..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("SEKRETESS OCH VILLKOR"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Integritetspolicy"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("SEKRETESS OCH VILLKOR"),
        "private": MessageLookupByLibrary.simpleMessage("Privat"),
        "product": MessageLookupByLibrary.simpleMessage("Produkt"),
        "productAddToCart": m31,
        "productAdded":
            MessageLookupByLibrary.simpleMessage("Produkten tillsätts"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Din produkt kommer att visas efter granskning."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Tyvärr, denna produkt kan inte nås eftersom den har upphört att gälla."),
        "productName": MessageLookupByLibrary.simpleMessage("Produktnamn"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Produktnamnet får inte vara tomt"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Produkttypvariabel behöver minst en variant"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Produkttyp enkel behöver namn och ordinarie pris"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "Denna produkt har tagit slut"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Produktöversikt"),
        "productRating": MessageLookupByLibrary.simpleMessage("Ditt betyg"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Produktrecension"),
        "productType": MessageLookupByLibrary.simpleMessage("Produkttyp"),
        "products": MessageLookupByLibrary.simpleMessage("Produkter"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("PromptPay ID:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("PromptPay-namn:"),
        "promptPayType": MessageLookupByLibrary.simpleMessage("PromptPay Typ:"),
        "publish": MessageLookupByLibrary.simpleMessage("Publicera"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Dra för att ladda mer"),
        "qRCodeMsgSuccess":
            MessageLookupByLibrary.simpleMessage("QR-koden har sparats."),
        "qRCodeSaveFailure": MessageLookupByLibrary.simpleMessage(
            "Det gick inte att spara QR-koden"),
        "qty": MessageLookupByLibrary.simpleMessage("st"),
        "qtyTotal": m32,
        "quantity": MessageLookupByLibrary.simpleMessage("Kvantitet"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Den aktuella kvantiteten är mer än kvantiteten i lager"),
        "rate": MessageLookupByLibrary.simpleMessage("Betygsätta"),
        "rateProduct":
            MessageLookupByLibrary.simpleMessage("Betygsätt produkt"),
        "rateTheApp": MessageLookupByLibrary.simpleMessage("Betygsätt appen"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Betygsätt denna app"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Om du gillar den här appen, ta dig lite tid att granska den!\nDet hjälper oss verkligen och det borde inte ta dig mer än en minut."),
        "rating": MessageLookupByLibrary.simpleMessage("Betyg"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Vänligen betygsätt innan du skickar din kommentar"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Beställ om"),
        "readReviews": MessageLookupByLibrary.simpleMessage("recensioner"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Fick pengar"),
        "receiver": MessageLookupByLibrary.simpleMessage("Mottagare"),
        "recentSearches": MessageLookupByLibrary.simpleMessage("Historia"),
        "recentView": MessageLookupByLibrary.simpleMessage("Din senaste vy"),
        "recentlyViewed": MessageLookupByLibrary.simpleMessage("Nyss sedda"),
        "recents": MessageLookupByLibrary.simpleMessage("NYLIGEN"),
        "recommended": MessageLookupByLibrary.simpleMessage("Rekommenderad"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Återkommande summor"),
        "refresh": MessageLookupByLibrary.simpleMessage("Uppdatera"),
        "refund": MessageLookupByLibrary.simpleMessage("återbetalning"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Begäran om återbetalning av beställningen misslyckades"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Begär återbetalning för din beställning framgångsrikt!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Begäran om återbetalning"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Återbetalning begärd"),
        "refunds": MessageLookupByLibrary.simpleMessage("Återbetalningar"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Återskapa svar"),
        "registerAs":
            MessageLookupByLibrary.simpleMessage("Registrera dig som"),
        "registerAsVendor": MessageLookupByLibrary.simpleMessage(
            "Registrera dig som leverantörsanvändare"),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Registreringen misslyckades"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Registrera framgångsrikt"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Vanligt pris"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Saker du kanske älskar"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Släpp för att ladda mer"),
        "remove": MessageLookupByLibrary.simpleMessage("Ta bort"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Ta bort från önskelistan"),
        "requestBooking": MessageLookupByLibrary.simpleMessage("Begär bokning"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Du har begärt för många koder på kort tid. Vänligen försök igen senare."),
        "resend": MessageLookupByLibrary.simpleMessage(" SKICKA IGEN"),
        "reset": MessageLookupByLibrary.simpleMessage("Återställa"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Återställ lösenord"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Återställ ditt lösenord"),
        "results": MessageLookupByLibrary.simpleMessage("Resultat"),
        "retry": MessageLookupByLibrary.simpleMessage("Försök igen"),
        "review": MessageLookupByLibrary.simpleMessage("Förhandsvisning"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Granska godkännande"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Din recension har skickats och väntar på godkännande!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Din recension har skickats!"),
        "reviews": MessageLookupByLibrary.simpleMessage("recensioner"),
        "romanian": MessageLookupByLibrary.simpleMessage("rumänska"),
        "russian": MessageLookupByLibrary.simpleMessage("Ryska"),
        "sale": m33,
        "salePrice": MessageLookupByLibrary.simpleMessage("Försäljningspris"),
        "saturday": MessageLookupByLibrary.simpleMessage("Lördag"),
        "save": MessageLookupByLibrary.simpleMessage("Spara"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Spara adress"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Din adress finns i din lokala"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Spara till senare"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Spara QR-koden"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Spara på önskelistan"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Det här objektet kan inte skannas"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "För att skanna en beställning måste du logga in först"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Den här beställningen är inte tillgänglig för ditt konto"),
        "search": MessageLookupByLibrary.simpleMessage("Sök"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Sök efter landsnamn eller kopplingsnummer"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Sök med namn ..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "hoppsan! Det verkar som att inga resultat matchar dina sökkriterier"),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Sök efter objekt"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Vänligen skriv inmatning i sökfältet"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("Sök order-ID ..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Sök plats"),
        "searchResultFor": m34,
        "searchResultItem": m35,
        "searchResultItems": m36,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Söker adress"),
        "secondsAgo": m37,
        "seeAll": MessageLookupByLibrary.simpleMessage("Se allt"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Fortsätt att se nytt innehåll i din app."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Se beställning"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Se recensioner"),
        "select": MessageLookupByLibrary.simpleMessage("välj"),
        "selectAddress": MessageLookupByLibrary.simpleMessage("Välj adress"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Välj alla"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Välj datum"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Välj fil avbruten!"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Välj bild"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Välj ingen"),
        "selectPrinter": MessageLookupByLibrary.simpleMessage("Välj Skrivare"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Välj roll"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Välj Butik"),
        "selectTheColor": MessageLookupByLibrary.simpleMessage("Välj färg"),
        "selectTheFile": MessageLookupByLibrary.simpleMessage("Välj filen"),
        "selectThePoint": MessageLookupByLibrary.simpleMessage("Välj punkt"),
        "selectTheQuantity": MessageLookupByLibrary.simpleMessage("Välj antal"),
        "selectTheSize": MessageLookupByLibrary.simpleMessage("Välj storlek"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Välj värdekupong"),
        "send": MessageLookupByLibrary.simpleMessage("Skicka"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Skicka tillbaka"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Hämta kod"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Skicka SMS till butiksägaren"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Separera flera e-postadresser med ett kommatecken."),
        "serbian": MessageLookupByLibrary.simpleMessage("serb"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sessionen löpte"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Vänligen ange en adress på inställningssidan"),
        "settings": MessageLookupByLibrary.simpleMessage("Inställningar"),
        "setup": MessageLookupByLibrary.simpleMessage("Uppstart"),
        "share": MessageLookupByLibrary.simpleMessage("Dela med sig"),
        "shipped": MessageLookupByLibrary.simpleMessage("levereras"),
        "shipping": MessageLookupByLibrary.simpleMessage("Frakt"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Leveransadress"),
        "shippingMethod": MessageLookupByLibrary.simpleMessage("Frakt metod"),
        "shop": MessageLookupByLibrary.simpleMessage("affär"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Handla e-post"),
        "shopName": MessageLookupByLibrary.simpleMessage("butiksnamn"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Handla beställningar"),
        "shopPhone": MessageLookupByLibrary.simpleMessage("Handla telefon"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Handla snigel"),
        "shoppingCartItems": m38,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Kort beskrivning"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Visa alla min beställda"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Visa detaljer"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Visa galleri"),
        "showLess": MessageLookupByLibrary.simpleMessage("Visa mindre"),
        "showMore": MessageLookupByLibrary.simpleMessage("Visa mer"),
        "signIn": MessageLookupByLibrary.simpleMessage("Logga in"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Logga in med e-post"),
        "signUp": MessageLookupByLibrary.simpleMessage("Bli Medlem"),
        "signup": MessageLookupByLibrary.simpleMessage("Bli Medlem"),
        "simple": MessageLookupByLibrary.simpleMessage("Enkel"),
        "size": MessageLookupByLibrary.simpleMessage("Storlek"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Storleksguide"),
        "skip": MessageLookupByLibrary.simpleMessage("Hoppa"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("slovakiska"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "SMS-koden har gått ut. Skicka verifieringskoden igen för att försöka igen."),
        "sold": m39,
        "soldBy": MessageLookupByLibrary.simpleMessage("Såld av"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Något gick fel. Vänligen försök igen senare."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Sortera efter"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Clearing nummer"),
        "spanish": MessageLookupByLibrary.simpleMessage("spansk"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Tal inte tillgängligt"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Börja utforska"),
        "startShopping": MessageLookupByLibrary.simpleMessage("Börja shoppa"),
        "state": MessageLookupByLibrary.simpleMessage("stat"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("Statligt fält krävs"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("Stat / provins"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "stock": MessageLookupByLibrary.simpleMessage("Stock"),
        "stockQuantity": MessageLookupByLibrary.simpleMessage("Lagerkvantitet"),
        "stop": MessageLookupByLibrary.simpleMessage("Sluta"),
        "store": MessageLookupByLibrary.simpleMessage("Lagra"),
        "storeAddress": MessageLookupByLibrary.simpleMessage("Butiksadress"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Baner"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Butiksmärke"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("Butiken är stängd nu"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Handla e-post"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Butiksinformation"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Banner för butikslista"),
        "storeLocation": MessageLookupByLibrary.simpleMessage("Butiksplats"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Ange adress/stad"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Lagra logotyp"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Förvara mobilbanner"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Lagra inställningar"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Store Slider Banner"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Förvara statisk banner"),
        "storeVacation": MessageLookupByLibrary.simpleMessage("Lagra semester"),
        "stores": MessageLookupByLibrary.simpleMessage("butiker"),
        "street": MessageLookupByLibrary.simpleMessage("Gata"),
        "street2": MessageLookupByLibrary.simpleMessage("Street 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("Gatunamnsfältet krävs"),
        "streetName": MessageLookupByLibrary.simpleMessage("Gatunamn"),
        "streetNameApartment": MessageLookupByLibrary.simpleMessage("Lägenhet"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Blockera"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Tack för din beställning. Vi arbetar snabbt med att behandla din beställning. Håll utkik för ett bekräftelsemail inom kort"),
        "submit": MessageLookupByLibrary.simpleMessage("Lämna"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Skicka ditt inlägg"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Delsumma"),
        "sunday": MessageLookupByLibrary.simpleMessage("Söndag"),
        "support": MessageLookupByLibrary.simpleMessage("Stöd"),
        "swahili": MessageLookupByLibrary.simpleMessage("Swahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("Svenska"),
        "tag": MessageLookupByLibrary.simpleMessage("Märka"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Den här taggen finns inte"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Ta bild"),
        "tamil": MessageLookupByLibrary.simpleMessage("tamil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Tryck för att välja den här platsen"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Tryck på mikrofonen för att prata"),
        "tax": MessageLookupByLibrary.simpleMessage("Beskatta"),
        "terrible": MessageLookupByLibrary.simpleMessage("Fruktansvärd"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m40,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Detta datum är inte tillgängligt"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Den här funktionen stöder inte det aktuella språket"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Detta är kundrollen"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("Detta är säljarens roll"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Denna plattform stöder inte webbvisning"),
        "thisProductNotSupport":
            MessageLookupByLibrary.simpleMessage("Denna produkt stöds inte"),
        "thursday": MessageLookupByLibrary.simpleMessage("Torsdag"),
        "tickets": MessageLookupByLibrary.simpleMessage("biljetter"),
        "time": MessageLookupByLibrary.simpleMessage("Tid"),
        "title": MessageLookupByLibrary.simpleMessage("Titel"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Titel: A till Ö"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Titel: Ö till A"),
        "to": MessageLookupByLibrary.simpleMessage("till"),
        "tooManyFaildedLogin": MessageLookupByLibrary.simpleMessage(
            "För många misslyckade inloggningsförsök. Vänligen försök igen senare."),
        "topUp": MessageLookupByLibrary.simpleMessage("Fyll på"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Påfyllningsprodukt hittades inte"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Den totala orderns värde måste vara minst"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Totalbelopp"),
        "totalProducts": m41,
        "totalTax": MessageLookupByLibrary.simpleMessage("Total skatt"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Spårningsnummer är"),
        "trackingPage": MessageLookupByLibrary.simpleMessage("Spårningssida"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transaktionen avbruten"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Transaktionsdetalj"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("Transaktionen misslyckades"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Transaktionsavgift"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Transaktionsresultat"),
        "transfer": MessageLookupByLibrary.simpleMessage("Överföra"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Överföringsbekräftelse"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Du kan inte överföra till den här användaren"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Överföringen misslyckades"),
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Överföringsframgång"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tisdag"),
        "turkish": MessageLookupByLibrary.simpleMessage("turkiska"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Slå på Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Skriv ett meddelande..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Skriv ditt meddelande här..."),
        "typing": MessageLookupByLibrary.simpleMessage("skriver..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("ukrainare"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Inte tillgänglig"),
        "undo": MessageLookupByLibrary.simpleMessage("Ångra"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Obetald"),
        "update": MessageLookupByLibrary.simpleMessage("Uppdatering"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Uppdateringen misslyckades!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Uppdatera information"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Uppdatera lösenord"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Uppdatera status"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Uppdatera framgångsrikt!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Uppdatera profil"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Ladda upp fil"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Ladda upp bild"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Ladda upp produkt"),
        "uploading": MessageLookupByLibrary.simpleMessage("uppladdning"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m42,
        "useNow": MessageLookupByLibrary.simpleMessage("Använd nu"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Använd denna bild"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Det här användarnamnet/e -postmeddelandet är inte tillgängligt."),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Användarnamnet eller lösenordet är felaktigt."),
        "username": MessageLookupByLibrary.simpleMessage("Användarnamn"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Användarnamn och lösenord krävs"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Semestermeddelande"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Semester typ"),
        "validUntilDate": m43,
        "variable": MessageLookupByLibrary.simpleMessage("variabel"),
        "variation": MessageLookupByLibrary.simpleMessage("Variation"),
        "vendor": MessageLookupByLibrary.simpleMessage("säljare"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Leverantörsadministratör"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Leverantörsinformation"),
        "verificationCode":
            MessageLookupByLibrary.simpleMessage("Verifieringskod (6 siffror)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Kontrollera"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Via plånbok"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("vietnames"),
        "view": MessageLookupByLibrary.simpleMessage("Se"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Visa kundvagn"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Visa detaljer"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Visa mer"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Visa på Google Maps"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Visa beställning"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Visa senaste transaktioner"),
        "visible": MessageLookupByLibrary.simpleMessage("Synlig"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Besök butiken"),
        "waitForLoad":
            MessageLookupByLibrary.simpleMessage("Väntar på att bilden laddas"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Väntar på postprodukten"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Väntar på bekräftelse"),
        "walletBalance": MessageLookupByLibrary.simpleMessage("Plånbokssaldo"),
        "walletName": MessageLookupByLibrary.simpleMessage("Plånbokens namn"),
        "warning": m44,
        "warningCurrencyMessageForWallet": m45,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Vi hittade blogg (ar)"),
        "weFoundProducts": m46,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Vi behöver kameraåtkomst för att skanna efter QR-kod eller streckkod."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "En autentiseringskod har skickats till"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Vi kommer att skicka meddelanden till dig när nya produkter är tillgängliga eller erbjudanden är tillgängliga. Du kan alltid ändra denna inställning i inställningarna."),
        "webView": MessageLookupByLibrary.simpleMessage("Webbvy"),
        "website": MessageLookupByLibrary.simpleMessage("Hemsida"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Onsdag"),
        "week": m47,
        "welcome": MessageLookupByLibrary.simpleMessage("Välkommen"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Välkommen tillbaka"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Börja din shoppingresa med oss nu"),
        "welcomeUser": m48,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Vilket språk föredrar du?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Kontakta administratören för att godkänna din registrering."),
        "withdrawAmount": MessageLookupByLibrary.simpleMessage("Ta ut summan"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Återkalla förfrågan"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Uttag"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Kvinnasamlingar"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Skriv din kommentar"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Skriv din anteckning"),
        "yearsAgo": m49,
        "yes": MessageLookupByLibrary.simpleMessage("Ja"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Du kan bara köpa från en enda butik."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Du kan bara köpa"),
        "youHaveAssignedToOrder": m50,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Du har sparat adressen i din lokala"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Du har poäng på \$ poäng"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Du kanske också gillar"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Du måste logga in till kassan"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Du kommer inte att bli tillfrågad nästa gång efter slutförandet"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Ditt konto är under granskning. Kontakta administratören om du behöver hjälp."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Din adress finns i din lokala"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Adressen har sparats i din lokala lagring"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Din ansökan är under granskning."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Din väska är tom"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Din bokningsinformation"),
        "yourEarningsThisMonth": MessageLookupByLibrary.simpleMessage(
            "Dina intäkter den här månaden"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Din anteckning"),
        "yourOrderHasBeenAdded": MessageLookupByLibrary.simpleMessage(
            "Din beställning har lagts till"),
        "yourOrderIsConfirmed": MessageLookupByLibrary.simpleMessage(
            "Din beställning är bekräftad!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Din beställning är tom"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Det verkar som att du inte har lagt till några objekt.\nBörja handla för att fylla i det."),
        "yourOrders":
            MessageLookupByLibrary.simpleMessage("Dina beställningar"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Din produkt är under granskning"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Ditt användarnamn eller e-postadress"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Postnummer"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Postnummerfältet krävs")
      };
}
