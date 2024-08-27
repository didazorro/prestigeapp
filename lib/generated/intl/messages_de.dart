// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(x) => "Aktiv ${x}";

  static String m1(attribute) => "Alle ${attribute}";

  static String m2(point) => "Ihre verfügbaren Punkte: ${point}";

  static String m3(state) => "Bluetooth-Adapter ist ${state}";

  static String m4(author) => "Autor: ${author}";

  static String m5(currency) => "Währung auf ${currency}geändert";

  static String m6(number) => "${number} verbleibende Zeichen";

  static String m7(priceRate, pointRate) =>
      "${priceRate} = ${pointRate} Punkte";

  static String m8(count) => " ${count} Element";

  static String m9(count) => " ${count} Artikel";

  static String m10(count) => "${count} Element";

  static String m11(count) => "${count} Elemente";

  static String m12(country) => "${country} Land wird nicht unterstützt";

  static String m13(currency) => "${currency} wird nicht unterstützt";

  static String m14(day) => "Vor ${day} Tagen";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Endet in ${timeLeft}";

  static String m17(captcha) => "Geben Sie ${captcha} ein, um zu bestätigen:";

  static String m18(message) => "Fehler: ${message}";

  static String m19(message) => "Fehler: ${message}";

  static String m20(time) => "Ablaufen in ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "Vor ${hour} Stunden";

  static String m23(currentBalance) =>
      "Sie haben nur noch ${currentBalance} in Ihrer Brieftasche";

  static String m24(count) =>
      " ${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m25(message) =>
      "Da ist etwas beim Abrufen der Daten schiefgelaufen, bitte kontaktiere den Admin und übermittle ihm die Nachricht: ${message}";

  static String m26(currency, amount) =>
      "Der Höchstbetrag für die Verwendung dieser Zahlung beträgt ${currency} ${amount}";

  static String m27(size) => "Maximale Dateigröße: ${size} MB";

  static String m28(currency, amount) =>
      "Der Mindestbetrag für die Verwendung dieser Zahlung beträgt ${currency} ${amount}";

  static String m29(minute) => "Vor ${minute} Minuten";

  static String m30(month) => " Vor${month} Monaten";

  static String m31(store) => "Mehr von ${store}";

  static String m32(number) => "müssen in Gruppen von ${number}gekauft werden";

  static String m33(itemCount) => "${itemCount} Artikel";

  static String m34(price) => "Optionen insgesamt: ${price}";

  static String m35(amount) => "Zahlen Sie ${amount}";

  static String m36(name) =>
      "${name} wurden erfolgreich zum Warenkorb hinzugefügt";

  static String m37(total) => "Menge: ${total}";

  static String m38(name) => "Geld erhalten von ${name}";

  static String m39(percent) => "Ausverkauf ${percent} %";

  static String m40(keyword) => "Suchergebnisse für: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} Element)";

  static String m42(keyword, count) => "${keyword} (${count} Artikel)";

  static String m43(second) => "Vor ${second} Sekunden";

  static String m44(totalCartQuantity) =>
      "Warenkorb, ${totalCartQuantity} Artikel";

  static String m45(numberOfUnitsSold) => "Verkauft: ${numberOfUnitsSold}";

  static String m46(fieldName) => "Das Feld ${fieldName} ist erforderlich";

  static String m47(total) => "${total} Produkte";

  static String m48(name) => "Überweisen Sie Geld an ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Nutzen Sie maximal ${maxPointDiscount} Punkte für einen Rabatt von ${maxPriceDiscount} auf diese Bestellung!";

  static String m50(date) => "Gültig bis ${date}";

  static String m51(balance) => "Wallet-Guthaben: ${balance}";

  static String m52(message) => "Warnung: ${message}";

  static String m53(defaultCurrency) =>
      "Die aktuell ausgewählte Währung ist für die Wallet-Funktion nicht verfügbar. Bitte ändern Sie sie in ${defaultCurrency}";

  static String m54(length) => "Wir haben die Produkte gefunden";

  static String m55(week) => "Woche ${week}";

  static String m56(name) => "Willkommen ${name}";

  static String m57(year) => " Vor${year} Jahren";

  static String m58(total) => "Sie haben der Bestellung #${total}zugewiesen";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Über uns"),
        "account": MessageLookupByLibrary.simpleMessage("Konto"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("Unter Genehmigung"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Durch das Löschen Ihres Kontos werden personenbezogene Daten aus unserer Datenbank entfernt. Ihre E-Mail-Adresse wird dauerhaft reserviert und dieselbe E-Mail-Adresse kann nicht wiederverwendet werden, um ein neues Konto zu registrieren."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Die Genehmigung des Kontos steht noch aus."),
        "accountNumber": MessageLookupByLibrary.simpleMessage("Kontonummer"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Kontoeinrichtung"),
        "active": MessageLookupByLibrary.simpleMessage("Aktiv"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Vor langer Zeit aktiv"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Jetzt aktiv"),
        "addAName":
            MessageLookupByLibrary.simpleMessage("Fügen Sie einen Namen hinzu"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Neuen Beitrag hinzufügen"),
        "addASlug": MessageLookupByLibrary.simpleMessage(
            "Fügen Sie eine Schnecke hinzu"),
        "addAnAttr": MessageLookupByLibrary.simpleMessage(
            "Fügen Sie ein Attribut hinzu"),
        "addListing":
            MessageLookupByLibrary.simpleMessage("Angebot hinzufügen"),
        "addMessage":
            MessageLookupByLibrary.simpleMessage("Füge eine Nachricht hinzu"),
        "addNew": MessageLookupByLibrary.simpleMessage("Neue hinzufügen"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Neue Adresse hinzufügen"),
        "addNewBlog":
            MessageLookupByLibrary.simpleMessage("Neuen Blog hinzufügen"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Neuen Beitrag erstellen"),
        "addProduct":
            MessageLookupByLibrary.simpleMessage("Produkt hinzufügen"),
        "addToCart": MessageLookupByLibrary.simpleMessage("In den Warenkorb"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "Die maximale Menge wurde überschritten"),
        "addToCartSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Erfolgreich zum Warenkorb hinzugefügt"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Bestellung hinzufügen"),
        "addToQuoteRequest": MessageLookupByLibrary.simpleMessage(
            "Zur Angebotsanfrage hinzufügen"),
        "addToWishlist":
            MessageLookupByLibrary.simpleMessage("Zur Wunschliste hinzufügen"),
        "added": MessageLookupByLibrary.simpleMessage("hinzugefügt"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Erfolgreich hinzugefügt"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Hinzufügen Ihres Bildes"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("zusätzliche Informationen"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Zusätzliche Dienste"),
        "address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "adults": MessageLookupByLibrary.simpleMessage("Erwachsene"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Nachmittag"),
        "agree": MessageLookupByLibrary.simpleMessage("Zustimmen"),
        "agreeWithPrivacy": MessageLookupByLibrary.simpleMessage("Datenschutz"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albanisch"),
        "all": MessageLookupByLibrary.simpleMessage("Alle"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Alle Marken"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Alle Bestellungen"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Neueste Verkäufe"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Alle Produkte"),
        "allow": MessageLookupByLibrary.simpleMessage("ermöglichen"),
        "allowCameraAccess":
            MessageLookupByLibrary.simpleMessage("Kamerazugriff zulassen?"),
        "almostSoldOut":
            MessageLookupByLibrary.simpleMessage("Fast ausverkauft"),
        "amazing": MessageLookupByLibrary.simpleMessage("Tolle"),
        "amount": MessageLookupByLibrary.simpleMessage("Menge"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Aussehen"),
        "apply": MessageLookupByLibrary.simpleMessage("Anwenden"),
        "approve": MessageLookupByLibrary.simpleMessage("Genehmigen"),
        "approved": MessageLookupByLibrary.simpleMessage("Genehmigt"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Genehmigte Anfragen"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabisch"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Sind Sie sicher?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, Ihr Konto zu löschen?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie sich wirklich abmelden?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Sie sind sicher, dass Sie beenden wollen?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Zugewiesen"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Mindestens 3 Zeichen..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Attribut"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Attribut existiert bereits"),
        "attributes": MessageLookupByLibrary.simpleMessage("Eigenschaften"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Audioelement(e) erkannt. Möchten Sie Audioplayer hinzufügen?"),
        "availability": MessageLookupByLibrary.simpleMessage("Verfügbarkeit"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Verfügbarkeit:"),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Durchschnittliche Bewertung"),
        "back": MessageLookupByLibrary.simpleMessage("Zurück"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Bei Rückstand"),
        "backToShop": MessageLookupByLibrary.simpleMessage("Zurück zum Shop"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Zurück zur Brieftasche"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Taschenkollektion"),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "bank": MessageLookupByLibrary.simpleMessage("Bank"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Bannerlistentyp"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Bannertyp"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banner Youtube URL"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Grundinformation"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Verkäufer werden"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengali"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Rechnungsadresse"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Bluetooth wurde nicht aktiviert"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Block"),
        "blockUser":
            MessageLookupByLibrary.simpleMessage("Benutzer blockieren"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Schon gebucht"),
        "booking": MessageLookupByLibrary.simpleMessage("Buchung"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Buchung storniert"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Bestätigt"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Da stimmt etwas nicht. Bitte versuche es später noch einmal."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Buchungsverlauf"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Buchen Sie jetzt"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Erfolgreich gebucht"),
        "bookingSummary": MessageLookupByLibrary.simpleMessage("Buchungstotal"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Buchung nicht verfügbar"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bosnisch"),
        "branch": MessageLookupByLibrary.simpleMessage("Ast"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Aufgrund der Änderung der Region wird der Warenkorb leider geleert. Wir kontaktieren Sie gerne, wenn Sie Hilfe benötigen."),
        "brand": MessageLookupByLibrary.simpleMessage("Marke"),
        "brands": MessageLookupByLibrary.simpleMessage("Marken"),
        "brazil": MessageLookupByLibrary.simpleMessage("Portugiesisch"),
        "burmese": MessageLookupByLibrary.simpleMessage("birmanisch"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Jetzt kaufen"),
        "by": MessageLookupByLibrary.simpleMessage("Durch"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Nur mit Termin"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Nach Marke"),
        "byCategory": MessageLookupByLibrary.simpleMessage("nach Kategorie"),
        "byPrice": MessageLookupByLibrary.simpleMessage("nach Preis"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Mit Ihrer Anmeldung stimmen Sie unserer Datenschutzerklärung zu"),
        "byTag": MessageLookupByLibrary.simpleMessage("nach Tag"),
        "call": MessageLookupByLibrary.simpleMessage("Anruf"),
        "callTo": MessageLookupByLibrary.simpleMessage("Rufen Sie an"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Rufen Sie den Ladenbesitzer an"),
        "canNotCreateOrder": MessageLookupByLibrary.simpleMessage(
            "Bestellung kann nicht erstellt werden"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "Der Benutzer kann nicht erstellt werden."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Zahlungsmethoden können nicht abgerufen werden"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Versandarten können nicht abgerufen werden"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Token-Info kann nicht abgerufen werden."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Diese App kann nicht gestartet werden. Stellen Sie sicher, dass Ihre Einstellungen korrekt sind"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "Dieser Link kann nicht geladen werden"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Es tut uns Leid! Dieses Video kann nicht abgespielt werden."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Die Bestellung kann nicht auf der Website gespeichert werden"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Benutzerinformationen können nicht aktualisiert werden."),
        "cancel": MessageLookupByLibrary.simpleMessage("Stornieren"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Stornieren"),
        "cancelled": MessageLookupByLibrary.simpleMessage("abgesagt"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Abgebrochene Anfragen"),
        "cannotDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Dieses Konto kann nicht gelöscht werden"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "Sie können diesem Benutzer keine Nachrichten senden"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Diese Bestellnummer kann nicht gefunden werden"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Datum in der Vergangenheit ist nicht zulässig"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Kartenhalter"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Kartennummer"),
        "cart": MessageLookupByLibrary.simpleMessage("Warenkorb"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Warenkorb Rabatt"),
        "cash": MessageLookupByLibrary.simpleMessage("Kasse"),
        "categories": MessageLookupByLibrary.simpleMessage("Kategorien"),
        "category": MessageLookupByLibrary.simpleMessage("Kategorie"),
        "change": MessageLookupByLibrary.simpleMessage("Veränderung"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Sprache ändern"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Drucker wechseln"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Plaudern"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("GPT-Chat"),
        "chatListScreen":
            MessageLookupByLibrary.simpleMessage("Chat-Listenbildschirm"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Chatten Sie über Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Chatten Sie über WhatsApp"),
        "chatWithBot":
            MessageLookupByLibrary.simpleMessage("Chatten Sie mit Bot"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Chatten Sie mit dem Ladenbesitzer"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Überprüfen Sie Ihre E-Mail auf den Bestätigungslink"),
        "checking": MessageLookupByLibrary.simpleMessage("Überprüfung..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Zur Kasse"),
        "chinese": MessageLookupByLibrary.simpleMessage("Chinesisch"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Vereinfachtes Chinesisch)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Chinesische Tradition)"),
        "chooseBranch":
            MessageLookupByLibrary.simpleMessage("Wählen Sie die Filiale"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Kategorie auswählen"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Wählen Sie aus der Galerie"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Wählen Sie Vom Server"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Wählen Sie Plan"),
        "chooseStaff":
            MessageLookupByLibrary.simpleMessage("Wählen Sie Mitarbeiter"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Wählen Sie Typ"),
        "chooseYourPaymentMethod": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie Ihre Zahlungsmethode"),
        "city": MessageLookupByLibrary.simpleMessage("Stadt"),
        "cityIsRequired": MessageLookupByLibrary.simpleMessage(
            "Das Feld Stadt ist erforderlich"),
        "clear": MessageLookupByLibrary.simpleMessage("Löschen"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Warenkorb löschen"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Klare Unterhaltung"),
        "close": MessageLookupByLibrary.simpleMessage("Schliessen"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Jetzt geschlossen"),
        "closed": MessageLookupByLibrary.simpleMessage("Geschlossen"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage("Nachnahmegebühr"),
        "color": MessageLookupByLibrary.simpleMessage("Farbe"),
        "comment": MessageLookupByLibrary.simpleMessage("Kommentar"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Bitte schreiben Sie Ihren Kommentar"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Kommentar erfolgreich, bitte warten Sie, bis Ihr Kommentar genehmigt wird"),
        "complete": MessageLookupByLibrary.simpleMessage("Komplett"),
        "confirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Bestätigen Sie die Löschung des Kontos"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Der Warenkorb wird beim Aufladen gelöscht."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, dass Sie den Einkaufswagen räumen möchten?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie das wirklich löschen? Diese Aktion kann nicht rückgängig gemacht werden."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie diesen Artikel wirklich löschen?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Passwort bestätigen"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Das Feld „Passwort bestätigen“ ist erforderlich"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie dieses Produkt wirklich entfernen?"),
        "connect": MessageLookupByLibrary.simpleMessage("Verbinden"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "content": MessageLookupByLibrary.simpleMessage("Inhalt"),
        "continueShopping": MessageLookupByLibrary.simpleMessage(
            "Mit dem Einkaufen fortfahren"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Weiter zur Zahlung"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Weiter zur Überprüfung"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Weiter zum Versand"),
        "continues": MessageLookupByLibrary.simpleMessage("Fortsetzen"),
        "conversations": MessageLookupByLibrary.simpleMessage("Gespräche"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("Kopiert"),
        "copy": MessageLookupByLibrary.simpleMessage("Kopieren"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Alle Rechte vorbehalten."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("Land"),
        "countryCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Ländercode ist erforderlich"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Das Land ist erforderlich"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Gutscheincode"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Gutschein wurde erfolgreich gespeichert."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Ihr Gutscheincode ist ungültig"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Herzlichen Glückwunsch!Gutscheincode erfolgreich angewendet."),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Ein Konto erstellen"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ihr Beitrag wurde erfolgreich als Entwurf erstellt. Bitte werfen Sie einen Blick auf Ihre Admin-Site."),
        "createPost": MessageLookupByLibrary.simpleMessage("Beitrag erstellen"),
        "createProduct":
            MessageLookupByLibrary.simpleMessage("Produkt erstellen"),
        "createReviewSuccess": MessageLookupByLibrary.simpleMessage(
            "Vielen Dank für Ihre Bewertung"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Wir freuen uns sehr über Ihren Beitrag und schätzen Ihren Beitrag, der uns dabei hilft, uns zu verbessern"),
        "createVariants": MessageLookupByLibrary.simpleMessage(
            "Erstellen Sie alle Varianten"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Erstellt am:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Währungen"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Aktuelles Passwort"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Zur Zeit haben wir nur"),
        "customer": MessageLookupByLibrary.simpleMessage("Kunde"),
        "customerDetail": MessageLookupByLibrary.simpleMessage("Kundendetail"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Kundenhinweis"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Tschechisch"),
        "danish": MessageLookupByLibrary.simpleMessage("dänisch"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dunkles Thema"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Instrumententafel"),
        "dataEmpty":
            MessageLookupByLibrary.simpleMessage("Keine Daten vorhanden"),
        "date": MessageLookupByLibrary.simpleMessage("Datum"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Datum aufsteigend"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Bestelldatum"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Datum absteigend"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Datum Ende"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Datum: Spätestens"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Datum: Älteste"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Start Datum"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Terminzeit"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Datum weise schließen"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Lastschrift"),
        "decline": MessageLookupByLibrary.simpleMessage("Ablehnen"),
        "delete": MessageLookupByLibrary.simpleMessage("Löschen"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Konto löschen"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie Ihr Konto wirklich löschen? Bitte lesen Sie, wie sich die Kontolöschung auswirkt."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Konto erfolgreich gelöscht. Deine Sitzung ist abgelaufen."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Alles löschen"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Konversation löschen"),
        "delivered": MessageLookupByLibrary.simpleMessage("Geliefert"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Geliefert an"),
        "delivering": MessageLookupByLibrary.simpleMessage("Liefern"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Lieferjunge:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Lieferdatum"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Lieferdetails"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Lieferung"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Keine Daten.\nDiese Bestellung wurde entfernt."),
        "description": MessageLookupByLibrary.simpleMessage("Beschreibung"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie den Gutschein für Ihre Bestellung ein oder wählen Sie ihn aus."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Keinen Code erhalten? "),
        "direction": MessageLookupByLibrary.simpleMessage("Richtung"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Kauf deaktivieren"),
        "discount": MessageLookupByLibrary.simpleMessage("Rabatt"),
        "displayName": MessageLookupByLibrary.simpleMessage("Anzeigename"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Sie haben noch keine Transaktionen"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie die App schliessen?"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie gehen, ohne Ihre Bewertung abzugeben?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Möchten Sie sich abmelden?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie die Blockierung dieses Benutzers aufheben?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay wird nicht unterstützt. Bitte überprüfen Sie Ihre Brieftasche und Karte"),
        "done": MessageLookupByLibrary.simpleMessage("erledigt"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Noch kein Benutzerkonto?"),
        "download": MessageLookupByLibrary.simpleMessage("Download"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Lade App herunter"),
        "draft": MessageLookupByLibrary.simpleMessage("Entwurf"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Fahrer zugewiesen"),
        "duration": MessageLookupByLibrary.simpleMessage("Dauer"),
        "dutch": MessageLookupByLibrary.simpleMessage("Niederländisch"),
        "earnings": MessageLookupByLibrary.simpleMessage("Verdienste"),
        "edit": MessageLookupByLibrary.simpleMessage("Bearbeiten:"),
        "editProductInfo":
            MessageLookupByLibrary.simpleMessage("Produktinfo bearbeiten"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Bearbeiten"),
        "egypt": MessageLookupByLibrary.simpleMessage("Ägypten"),
        "email": MessageLookupByLibrary.simpleMessage("E-Mail"),
        "emailAddressInvalid":
            MessageLookupByLibrary.simpleMessage("E-Mail-Adresse ist ungültig"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-Mail bereits verwendet!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Wenn Sie Ihr Konto löschen, werden Sie von allen Mailinglisten abgemeldet."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "Das von Ihnen eingegebene E-Mail-Konto ist nicht vorhanden. Bitte versuche es erneut."),
        "emailIsRequired": MessageLookupByLibrary.simpleMessage(
            "Die E Mail Adresse ist erforderlich"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("E-Mail-Abonnement"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Anscheinend haben Sie noch keine Buchungen vorgenommen.\nBeginnen Sie mit der Erkundung und tätigen Sie Ihre erste Buchung!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Leerer Warenkorb"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sieht so aus, als hätten Sie in den Warenkorb noch nichts hinzugefügt.Beginnen Sie mit dem Einkaufen \"mit dem Einkaufen beginnen"),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Hoppla! Ihr Einkaufswagen fühlt sich etwas leicht an.\n\nSind Sie bereit, etwas Fabelhaftes zu kaufen?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Ihr Kommentar darf nicht leer sein"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Sie haben noch nicht nach Artikeln gesucht. Fangen wir jetzt an - wir helfen Ihnen."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Es sind keine Versandoptionen verfügbar. Bitte stellen Sie sicher, dass Ihre Adresse korrekt eingegeben wurde, oder kontaktieren Sie uns, wenn Sie Hilfe benötigen."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "Benutzername/E-Mail ist leer"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Leere Wunschliste"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            " Tippen Sie ein beliebiges Herz neben einem Produkt an, das Sie favorisieren möchten. Wir heben sie hier für Sie auf"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Ihre Wunschliste ist derzeit leer.\nBeginnen Sie jetzt mit dem Hinzufügen von Produkten!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Zur Kasse aktivieren"),
        "enableForLogin": MessageLookupByLibrary.simpleMessage(
            "Für die Anmeldung aktivieren"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Für Wallet aktivieren"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Urlaubsmodus aktivieren"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie ein Datum nach dem ersten Datum"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Englisch"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Menge eingeben"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Geben Sie für jeden Empfänger eine E-Mail-Adresse ein"),
        "enterSentCode": MessageLookupByLibrary.simpleMessage(
            "Geben Sie den Code ein, der per SMS gesendet wurde"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Gutscheincode eingeben"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Geben Sie Ihre E-Mail ein"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihre E-Mail-Adresse oder Ihren Benutzernamen ein"),
        "enterYourFirstName": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihren Vornamen ein"),
        "enterYourLastName": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihren Nachnamen ein"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Bitte geben sie ihre Mobiltelefonnummer ein"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Geben Sie Ihr Passwort ein"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihre Telefonnummer ein, um loszulegen."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Trage deine Telefonnummer ein"),
        "enterYourUsername": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihren Benutzernamen ein"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Der eingegebene Betrag ist größer als der aktuelle Wallet-Betrag. Bitte versuche es erneut!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie eine gültige E-Mail-Adresse ein."),
        "errorMsg": m19,
        "errorOnGettingPost": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Abrufen des Beitrags!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie ein Passwort mit mindestens 8 Zeichen ein"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Fehler"),
        "evening": MessageLookupByLibrary.simpleMessage("Abend"),
        "events": MessageLookupByLibrary.simpleMessage("Veranstaltungen"),
        "expectedDeliveryDate": MessageLookupByLibrary.simpleMessage(
            "Voraussichtliches Lieferdatum"),
        "expired": MessageLookupByLibrary.simpleMessage("Abgelaufen"),
        "expiredDate":
            MessageLookupByLibrary.simpleMessage("Abgelaufenes Datum"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM / JJ"),
        "expiringInTime": m20,
        "exploreNow":
            MessageLookupByLibrary.simpleMessage("Entdecken Sie jetzt"),
        "external": MessageLookupByLibrary.simpleMessage("Externe"),
        "extraServices": MessageLookupByLibrary.simpleMessage(
            "Zusätzliche Dienstleistungen"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Benutzer konnte nicht zugewiesen werden"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Link konnte nicht generiert werden"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Anwendungskonfiguration konnte nicht geladen werden. Bitte versuchen Sie es erneut oder starten Sie Ihre Anwendung neu."),
        "failedToLoadImage": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden des Bildes"),
        "fair": MessageLookupByLibrary.simpleMessage("Messe"),
        "favorite": MessageLookupByLibrary.simpleMessage("Liebling"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Funktion nicht verfügbar"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Besondere Produkte"),
        "featured": MessageLookupByLibrary.simpleMessage("Vorgestellt"),
        "features": MessageLookupByLibrary.simpleMessage("Eigenschaften"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Die Datei ist zu groß. Bitte wählen Sie eine kleinere Datei!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Datei-Upload fehlgeschlagen!"),
        "files": MessageLookupByLibrary.simpleMessage("Dateien"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "fingerprintsTouchID":
            MessageLookupByLibrary.simpleMessage("Fingerabdrücke, Touch-ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Beenden Sie Setup"),
        "finnish": MessageLookupByLibrary.simpleMessage("finnisch"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Seien Sie der Erste, der diesen Beitrag kommentiert!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Vorname"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Vorname ist erforderlich"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Erste Verlängerung"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Warenkorbrabatt behoben"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Feste Produktrabatte"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("für dieses Produkt"),
        "free": MessageLookupByLibrary.simpleMessage("Frei"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Kostenlos"),
        "french": MessageLookupByLibrary.simpleMessage("Französisch"),
        "friday": MessageLookupByLibrary.simpleMessage("Freitag"),
        "from": MessageLookupByLibrary.simpleMessage("Von"),
        "fullName": MessageLookupByLibrary.simpleMessage("Vollständiger Name"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galerie"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Allgemeine Einstellungen"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Link wird generiert..."),
        "german": MessageLookupByLibrary.simpleMessage("Deutsch"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen erhalten"),
        "getNotified":
            MessageLookupByLibrary.simpleMessage("Benachrichtigt werden!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Passwort-Link abrufen"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Loslegen"),
        "goBack": MessageLookupByLibrary.simpleMessage("Geh zurück"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Zurück zur Startseite"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Zurück zur Adresse"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Zurück zur Überprüfung"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Zurück zum Versand"),
        "good": MessageLookupByLibrary.simpleMessage("gut"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("griechisch"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Bruttoumsatz"),
        "grouped": MessageLookupByLibrary.simpleMessage("Gruppiert"),
        "guests": MessageLookupByLibrary.simpleMessage("Gäste"),
        "hasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("wurde gelöscht"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebräisch"),
        "hideAbout":
            MessageLookupByLibrary.simpleMessage("Verstecke dich über"),
        "hideAddress":
            MessageLookupByLibrary.simpleMessage("Adresse ausblenden"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("E-Mail verstecken"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Karte ausblenden"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Telefon ausblenden"),
        "hidePolicy":
            MessageLookupByLibrary.simpleMessage("Richtlinie ausblenden"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Historie"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Historie"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hour": MessageLookupByLibrary.simpleMessage("Stunde"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("Ungarisch"),
        "hungary": MessageLookupByLibrary.simpleMessage("Ungarn"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Zustimmen"),
        "imIn": MessageLookupByLibrary.simpleMessage("ich bin dabei"),
        "imageFeature": MessageLookupByLibrary.simpleMessage("Bildfunktion"),
        "imageGallery": MessageLookupByLibrary.simpleMessage("Bildergalerie"),
        "imageGenerate": MessageLookupByLibrary.simpleMessage("Bild erzeugen"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Bildnetzwerk"),
        "inStock": MessageLookupByLibrary.simpleMessage("Auf Lager"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Falsches Passwort"),
        "india": MessageLookupByLibrary.simpleMessage("Indien"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indonesisch"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Informationstabelle"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Bitte installieren Sie das Plugin „DIGITS: Wordpress Mobile Number Signup and Login“"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Sofort schließen"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Ungültige Telefonnummer"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Ungültiger SMS-Verifizierungscode"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Ungültiges Geburtsjahr"),
        "invoice": MessageLookupByLibrary.simpleMessage("Rechnung"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Ist alles eingestellt...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("tippt..."),
        "italian": MessageLookupByLibrary.simpleMessage("Italienisch"),
        "item": MessageLookupByLibrary.simpleMessage("Artikel"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Artikel gesamt:"),
        "items": MessageLookupByLibrary.simpleMessage("Artikel"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage(
            "Bestellung wurde aufgegeben!"),
        "iwantToCreateAccount": MessageLookupByLibrary.simpleMessage(
            "Ich möchte ein Konto erstellen"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japanisch"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Behalten"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("Koreanisch"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdish"),
        "language": MessageLookupByLibrary.simpleMessage("Sprachen"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "Die Sprache wurde erfolgreich aktualisiert"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Nachname"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Nachname ist erforderlich"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Letzte Transaktionen"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Neueste Produkte"),
        "layout": MessageLookupByLibrary.simpleMessage("Darstellungen"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Helles Thema"),
        "link": MessageLookupByLibrary.simpleMessage("Verknüpfung"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Bannertyp auflisten"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Banner-Video auflisten"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungsliste"),
        "listening": MessageLookupByLibrary.simpleMessage("Hören..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Ladung fehlgeschlagen!"),
        "loading": MessageLookupByLibrary.simpleMessage("Laden..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Link wird geladen..."),
        "location": MessageLookupByLibrary.simpleMessage("Standort"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Sperrbildschirm und Sicherheit"),
        "login": MessageLookupByLibrary.simpleMessage("Anmelden"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Der Login wurde abgebrochen"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Anmeldung fehlgeschlagen!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Sie dürfen diese App nicht verwenden."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Anmeldung erfolgreich!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Bitte loggen Sie sich ein, um einen Kommentar abzugeben"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Bitte einloggen zum Fortfahren"),
        "loginToReview": MessageLookupByLibrary.simpleMessage(
            "Bitte loggen Sie sich ein um eine Bewertung abzugeben"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Anmeldung zu Ihrem Konto"),
        "logout": MessageLookupByLibrary.simpleMessage("Abmelden"),
        "malay": MessageLookupByLibrary.simpleMessage("malaiisch"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Herrenkollektion"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("API-Schlüssel verwalten"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Lager verwalten"),
        "map": MessageLookupByLibrary.simpleMessage("Karte"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead":
            MessageLookupByLibrary.simpleMessage("Als gelesen markieren"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Als versendet markieren"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Als ungelesen markieren"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Später"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Menübestellung"),
        "menus": MessageLookupByLibrary.simpleMessage("Menüs"),
        "message": MessageLookupByLibrary.simpleMessage("Botschaft"),
        "messageTo":
            MessageLookupByLibrary.simpleMessage("Nachricht senden an"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Minimum Menge beträgt"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Handy, Mobiltelefon"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("Handy ist erforderlich"),
        "mobileNumberInUse": MessageLookupByLibrary.simpleMessage(
            "Mobilnummer bereits verwendet!"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Mobile Verifizierung"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("vor einem Moment"),
        "monday": MessageLookupByLibrary.simpleMessage("Montag"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...Mehr"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Mehr Informationen"),
        "morning": MessageLookupByLibrary.simpleMessage("Morgen"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Muss 1 Element auswählen"),
        "myCart": MessageLookupByLibrary.simpleMessage("Mein Warenkorb"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Meine Bestellung"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Meine Punkte"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Meine Produkte"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Du hast keine Produkte. Versuche eins zu erstellen!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Mein Geldbeutel"),
        "myWishList": MessageLookupByLibrary.simpleMessage("Meine Wunschliste"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nameOnCard":
            MessageLookupByLibrary.simpleMessage("Name auf der Karte"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("In meiner Nähe"),
        "needHelp": MessageLookupByLibrary.simpleMessage("Brauchen Sie Hilfe?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Sie müssen sich erneut anmelden, um die Aktualisierung durchzuführen"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Niederlande"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Neue Inhalte verfügbar!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Neues Passwort"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Neue Variante"),
        "next": MessageLookupByLibrary.simpleMessage("nächste"),
        "niceName": MessageLookupByLibrary.simpleMessage("Schöner Name"),
        "no": MessageLookupByLibrary.simpleMessage("Nein"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Es wurden noch keine Adressen gespeichert."),
        "noBackHistoryItem":
            MessageLookupByLibrary.simpleMessage("Kein Produkt mehr"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Oops, dieser Beitrag scheint es nicht mehr zu geben."),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Es wird keine Kameraerlaubnis erteilt. Bitte gewähren Sie es in den Einstellungen Ihres Geräts."),
        "noComments": MessageLookupByLibrary.simpleMessage("Keine Kommentare"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Noch kein Gespräch"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Es wird angezeigt, wenn jemand mit Ihnen zu chatten beginnt"),
        "noData": MessageLookupByLibrary.simpleMessage("Keine Daten mehr"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Noch keine Favoriten."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Keine Datei zum Herunterladen."),
        "noForwardHistoryItem":
            MessageLookupByLibrary.simpleMessage("Kein Produkt"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Keine Internetverbindung"),
        "noListingNearby": MessageLookupByLibrary.simpleMessage(
            "Keine Auflistung in der Nähe!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Keine Bestellungen"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "Es sind keine Zahlungsmethoden verfügbar."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Leider ist dieses Produkt für Ihre aktuelle Rolle nicht verfügbar."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Dieses Produkt ist für Benutzer mit bestimmten Rollen verfügbar. Bitte melden Sie sich mit den entsprechenden Anmeldeinformationen an, um auf dieses Produkt zuzugreifen, oder kontaktieren Sie uns für weitere Informationen."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Bitte melden Sie sich mit den entsprechenden Anmeldeinformationen an, um auf dieses Produkt zuzugreifen, oder kontaktieren Sie uns für weitere Informationen."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Oops, diese Seite existiert nicht mehr!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Keine Drucker"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Kein Produkt"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Keine Ergebnisse gefunden"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Keine Bewertungen"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Kein Steckplatz verfügbar"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("Kein Laden in der Nähe!"),
        "noSuggestionSearch": MessageLookupByLibrary.simpleMessage(
            "Es liegen keine Vorschläge vor"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Nein danke"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Es wurden leider keine Transaktionen gefunden!"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Leider wurden keine Videos gefunden."),
        "none": MessageLookupByLibrary.simpleMessage("Nichts"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Leider konnten wir keine Ergebnisse finden."),
        "notFound": MessageLookupByLibrary.simpleMessage("Nicht gefunden"),
        "notRated": MessageLookupByLibrary.simpleMessage("Nicht bewertet"),
        "note": MessageLookupByLibrary.simpleMessage("Notizen bestellen"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Hinweis"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Hinweis (optional)"),
        "notice": MessageLookupByLibrary.simpleMessage("Beachten"),
        "notifications":
            MessageLookupByLibrary.simpleMessage("Benachrichtigung"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Informieren Sie sich über aktuelle Angebote und Produktverfügbarkeit"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("von diesem Produkt"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "on": MessageLookupByLibrary.simpleMessage("auf"),
        "onSale": MessageLookupByLibrary.simpleMessage("Im Angebot"),
        "onVacation": MessageLookupByLibrary.simpleMessage("Im Urlaub"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 an jeden Empfänger"),
        "online": MessageLookupByLibrary.simpleMessage("Online"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("24h geöffnet"),
        "openMap": MessageLookupByLibrary.simpleMessage("Karte öffnen"),
        "openNow": MessageLookupByLibrary.simpleMessage("Jetzt geöffnet"),
        "openingHours": MessageLookupByLibrary.simpleMessage("Öffnungszeiten"),
        "optional": MessageLookupByLibrary.simpleMessage("Wahlweise"),
        "options": MessageLookupByLibrary.simpleMessage("Optionen"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("oder"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("Oder melden Sie sich an mit"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Bestellbestätigung"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, dass Sie die Bestellung erstellen?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Bestellungsdatum"),
        "orderDetail": MessageLookupByLibrary.simpleMessage("Bestelldetails"),
        "orderHistory": MessageLookupByLibrary.simpleMessage("Bestellhistorie"),
        "orderId": MessageLookupByLibrary.simpleMessage("Auftragsnummer:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("Auftragsnummer"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Bestellnummer."),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Bestellhinweise"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Bestellnummer"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Stornierte Stornierung"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Abgebrochen"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Aufladen"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Fertiggestellt"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Verweigert"),
        "orderStatusExpired":
            MessageLookupByLibrary.simpleMessage("Abgelaufen"),
        "orderStatusFailed":
            MessageLookupByLibrary.simpleMessage("Fehlgeschlagen"),
        "orderStatusOnHold":
            MessageLookupByLibrary.simpleMessage("Wartestellung"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("steht aus"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Ausstehende Zahlung"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Verarbeitet"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("In Bearbeitung"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Zurückerstattet"),
        "orderStatusReversed":
            MessageLookupByLibrary.simpleMessage("Rückgängig gemacht"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Versandt"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Nichtig"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            " Sie können den Status Ihrer Bestellung mit Hilfe unserer Lieferstatusfunktion überprüfen. Sie erhalten eine Auftragsbestätigung per E-Mail mit Einzelheiten zu Ihrer Bestellung und einem Link, mit dem Sie den Fortschritt Ihrer Bestellung verfolgen können"),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            " Sie können sich mit der zuvor definierten E-Mail und dem Passwort bei Ihrem Konto anmelden. Auf Ihrem Konto können Sie Ihre Profildaten bearbeiten, den Verlauf der Transaktionen überprüfen, das Abonnement des Newsletters bearbeiten"),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Sie haben die Bestellungen erfolgreich aufgegeben"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Ihr Konto"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Bestellübersicht"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("BESTELLGESAMT"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Sendungsverfolgung"),
        "orders": MessageLookupByLibrary.simpleMessage("Aufträge"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("OTP-Überprüfung"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Unsere Bankverbindung"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("nicht lieferbar"),
        "pageView": MessageLookupByLibrary.simpleMessage("Seitenansicht"),
        "paid": MessageLookupByLibrary.simpleMessage("Bezahlt"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Bezahlter Status"),
        "password": MessageLookupByLibrary.simpleMessage("Passwort"),
        "passwordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Das Feld „Passwort“ ist erforderlich"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Passwörter stimmen nicht überein"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Fügen Sie Ihre Bild-URL ein"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Mit Geldbeutel bezahlen"),
        "payNow": MessageLookupByLibrary.simpleMessage("Zahle jetzt"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Zahlung"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Zahlungsdetails erfolgreich geändert."),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Zahlungsmethode"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Diese Zahlungsmethode wird nicht unterstützt"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Zahlungsmethode"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Zahlungseinstellungen"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Bezahlung erfolgreich"),
        "pending": MessageLookupByLibrary.simpleMessage("steht aus"),
        "persian": MessageLookupByLibrary.simpleMessage("Persian"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefon"),
        "phoneEmpty": MessageLookupByLibrary.simpleMessage("Telefon ist leer"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Format: +84123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "Die Telefonnummer ist erforderlich"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefonnummer"),
        "phoneNumberVerification":
            MessageLookupByLibrary.simpleMessage("Telefonnummer bestätigen"),
        "pickADate": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie Datum und Uhrzeit"),
        "picking":
            MessageLookupByLibrary.simpleMessage("Warten auf die Lieferung"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Meine Bestellung aufgeben"),
        "playAll": MessageLookupByLibrary.simpleMessage("Alle wiedergeben"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Bitte Preis hinzufügen"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Bitte stimmen Sie unseren Nutzungsbedingungen zu"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Bitte erlauben Sie den Zugriff auf die Kamera und die Galerie"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Bitte überprüfen Sie die Internetverbindung!"),
        "pleaseChooseBranch": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie eine Filiale aus"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Bitte Kategorie auswählen"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie den Produktnamen ein"),
        "pleaseFillCode": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie Ihren Code ein"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Bitte füllen Sie alle Felder ordnungsgemäss aus"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Bitte erhöhen oder verringern Sie die Menge, um fortzufahren."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Bitte füllen Sie alle Felder aus"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Bitte füllen Sie alle Felder aus"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie ein Buchungsdatum"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie einen Ort aus"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Bitte wähle eine Option für jede Eigenschaft des Produktes"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie mindestens 1 Option für jedes aktive Attribut aus"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Bitte Bilder auswählen"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie die gewünschten Optionen!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Bitte melden Sie sich in Ihrem Konto an, bevor Sie Dateien hochladen."),
        "point": MessageLookupByLibrary.simpleMessage("Punkte"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Es wurde keine Rabattpunktkonfiguration auf dem Server gefunden"),
        "pointMsgEnter":
            MessageLookupByLibrary.simpleMessage("Bitte Rabattpunkt eingeben"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Maximaler Rabattpunkt"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Sie haben nicht genug Rabattpunkte. Ihr Gesamtrabattpunkt beträgt"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Sie haben den maximalen Rabattpunkt erreicht"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Der Gesamtrabattwert liegt über dem Rechnungsbetrag"),
        "pointMsgRemove":
            MessageLookupByLibrary.simpleMessage("Rabattpunkt wird entfernt"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Rabattpunkt wurde erfolgreich angewendet"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Sie können Ihre Punkte zum Warenkorb hinzufügen"),
        "polish": MessageLookupByLibrary.simpleMessage("Polieren"),
        "poor": MessageLookupByLibrary.simpleMessage("ARM"),
        "popular": MessageLookupByLibrary.simpleMessage("Beliebt"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularität"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Diese Adresse wird auf Ihrem lokalen Gerät gespeichert. Es ist NICHT die Benutzeradresse."),
        "postContent": MessageLookupByLibrary.simpleMessage("Inhalt"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Dein Beitrag konnte nicht erstellt werden"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Bildfunktion"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Post Management"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Post-Produkt"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Dein Beitrag wurde erfolgreich erstellt"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Titel"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Prepaid"),
        "prev": MessageLookupByLibrary.simpleMessage("Zurück"),
        "preview": MessageLookupByLibrary.simpleMessage("Vorschau"),
        "price": MessageLookupByLibrary.simpleMessage("Preis"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Preis: absteigend"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Preis niedrig bis hoch"),
        "prices": MessageLookupByLibrary.simpleMessage("Menüs"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Druckeingang"),
        "printer": MessageLookupByLibrary.simpleMessage("Drucker"),
        "printerNotFound": MessageLookupByLibrary.simpleMessage(
            "Der Drucker wurde nicht gefunden"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Druckerauswahl"),
        "printing": MessageLookupByLibrary.simpleMessage("Drucken..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage(" Datenschutz und Laufzeit "),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Datenschutz-Bestimmungen"),
        "privacyTerms": MessageLookupByLibrary.simpleMessage("Datenschutz"),
        "private": MessageLookupByLibrary.simpleMessage("Privatgelände"),
        "processing":
            MessageLookupByLibrary.simpleMessage("Wird bearbeitet..."),
        "product": MessageLookupByLibrary.simpleMessage("Produkt"),
        "productAddToCart": m36,
        "productAdded": MessageLookupByLibrary.simpleMessage(
            "Das Produkt wurde hinzugefügt"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Ihr Produkt wird nach der Überprüfung angezeigt."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Auf dieses Produkt kann leider nicht zugegriffen werden, da es abgelaufen ist."),
        "productName": MessageLookupByLibrary.simpleMessage("Produktname"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Der Produktname darf nicht leer sein"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Produkttypvariable benötigt mindestens eine Variante"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Der Produkttyp einfach benötigt den Namen und den regulären Preis"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "dieses Produkt ist nicht auf Lager"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Produktübersicht"),
        "productRating": MessageLookupByLibrary.simpleMessage("Ihre Bewertung"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Produktbewertung"),
        "productType": MessageLookupByLibrary.simpleMessage("Produktart"),
        "products": MessageLookupByLibrary.simpleMessage("Produkte"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("PromptPay-ID:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("PromptPay-Name:"),
        "promptPayType": MessageLookupByLibrary.simpleMessage("PromptPay-Typ:"),
        "publish": MessageLookupByLibrary.simpleMessage("Veröffentlichen"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Nach oben ziehen Mehr laden"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Der QR-Code wurde erfolgreich gespeichert."),
        "qRCodeSaveFailure": MessageLookupByLibrary.simpleMessage(
            "QR-Code konnte nicht gespeichert werden"),
        "qty": MessageLookupByLibrary.simpleMessage("Menge"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Menge"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Die aktuelle Menge ist größer als die vorrätige Menge"),
        "random": MessageLookupByLibrary.simpleMessage("Zufällig"),
        "rate": MessageLookupByLibrary.simpleMessage("Bewerten"),
        "rateProduct": MessageLookupByLibrary.simpleMessage("Produkt bewerten"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Bewerten Sie die App"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Bewerten Sie diese App"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Wenn Ihnen diese App gefällt, geben Sie uns gerne Feedback, damit wir die App weiterentwickeln können."),
        "rating": MessageLookupByLibrary.simpleMessage("Bewertung"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Bitte bewerten Sie bevor Sie Ihren Kommentar senden"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Nachbestellen"),
        "readReviews":
            MessageLookupByLibrary.simpleMessage("Bewertungen lesen"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("Warten auf die Lieferung"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Geld erhalten"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("Empfänger"),
        "recent": MessageLookupByLibrary.simpleMessage("kürzlich"),
        "recentSearches": MessageLookupByLibrary.simpleMessage(
            "Kürzlich durchgeführte Suchen"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("kürzlich angesehen"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("zuletzt angesehen"),
        "recommended": MessageLookupByLibrary.simpleMessage("Empfohlen"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Wiederkehrende Summen"),
        "refresh": MessageLookupByLibrary.simpleMessage("Erneuern"),
        "refund": MessageLookupByLibrary.simpleMessage("Rückerstattung"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Der Antrag auf Rückerstattung der Bestellung war erfolglos"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Fordern Sie erfolgreich eine Rückerstattung für Ihre Bestellung an!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Rückerstattungsanfrage"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Rückerstattung beantragt"),
        "refunds": MessageLookupByLibrary.simpleMessage("Rückerstattungen"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Antwort neu generieren"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Registrieren als"),
        "registerAsVendor": MessageLookupByLibrary.simpleMessage(
            "Registriere dich als Verkäufer"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Konto kann nicht synchronisiert werden. Bitte melden Sie sich an, um fortzufahren."),
        "registerFailed": MessageLookupByLibrary.simpleMessage(
            "Registrierung fehlgeschlagen"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "Die Anfrage ist ungültig oder abgelaufen. Bitte versuchen Sie es erneut"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Erfolgreich registriert"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Regulärer Preis"),
        "relatedLayoutTitle": MessageLookupByLibrary.simpleMessage(
            "Dinge, die Sie lieben könnten"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Zum Laden loslassen"),
        "remove": MessageLookupByLibrary.simpleMessage("Entfernen"),
        "removeFromWishList": MessageLookupByLibrary.simpleMessage(
            "Von der Wunschliste entfernen"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Buchung anfordern"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Sie haben in kurzer Zeit zu viele Codes angefordert. Bitte versuchen Sie es später erneut."),
        "resend": MessageLookupByLibrary.simpleMessage(" ERNEUT SENDEN"),
        "reset": MessageLookupByLibrary.simpleMessage("Zurücksetzen"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Passwort zurücksetzen"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Setze dein Passwort zurück"),
        "results": MessageLookupByLibrary.simpleMessage("Ergebnisse"),
        "retry": MessageLookupByLibrary.simpleMessage("Wiederholen"),
        "review": MessageLookupByLibrary.simpleMessage("Überprüfen"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Überprüfung der Genehmigung"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Ihre Bewertung wurde gesendet und wartet auf Genehmigung!"),
        "reviewSent": MessageLookupByLibrary.simpleMessage(
            "Ihre Bewertung wurde gesendet!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Bewertungen"),
        "romanian": MessageLookupByLibrary.simpleMessage("Rumänisch"),
        "russian": MessageLookupByLibrary.simpleMessage("Russisch"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Verkaufspreis"),
        "saturday": MessageLookupByLibrary.simpleMessage("Samstag"),
        "save": MessageLookupByLibrary.simpleMessage("sparen"),
        "saveAddress":
            MessageLookupByLibrary.simpleMessage("Adresse speichern"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Ihre Adresse ist in ihrem Wohnort vorhanden"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Für später speichern"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("QR-Code speichern"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Auf Wunschliste speichern"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Dieser Artikel kann nicht gescannt werden"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Um eine Bestellung zu scannen, müssen Sie sich zuerst einloggen"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Diese Bestellung ist für Ihr Konto nicht verfügbar"),
        "search": MessageLookupByLibrary.simpleMessage("Suchen"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Suchen Sie nach Ländernamen oder Vorwahl"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Suche mit Namen..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Hoppla! Es sieht so aus, als ob keine Ergebnisse Ihren Suchkriterien entsprechen."),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Suche nach Artikeln"),
        "searchInput": MessageLookupByLibrary.simpleMessage("Sucheingabe"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("Suchauftrags-ID ..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Nach Ort suchen"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress": MessageLookupByLibrary.simpleMessage("Suchadresse"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Alles anzeigen"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Sehen Sie weiterhin neue Inhalte in Ihrer App."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Siehe Bestellung"),
        "seeReviews":
            MessageLookupByLibrary.simpleMessage("Bewertungen ansehen"),
        "select": MessageLookupByLibrary.simpleMessage("wählen"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("Adresse auswählen"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Wählen Sie Alle"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Daten auswählen"),
        "selectFileCancelled": MessageLookupByLibrary.simpleMessage(
            "Datei abgebrochen auswählen!"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Bild auswählen"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Nichts ausgewählt"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Drucker auswählen"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Wählen Sie Rolle"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Shop auswählen"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Wählen Sie die Farbe"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Wählen Sie die Datei aus"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Punkte auswählen"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Wählen Sie die Menge"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Wählen Sie die Grössse"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Gutschein auswählen"),
        "send": MessageLookupByLibrary.simpleMessage("Senden"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Zurücksenden"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Code abrufen"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Senden Sie eine SMS an den Ladenbesitzer"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "Das Konto, auf das Sie überweisen möchten (E-Mail)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Trennen Sie mehrere E-Mail-Adressen durch ein Komma."),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbisch"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sitzung abgelaufen"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Bitte legen Sie eine Adresse auf der Einstellungsseite fest"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "setup": MessageLookupByLibrary.simpleMessage("Installieren"),
        "share": MessageLookupByLibrary.simpleMessage("Teilen"),
        "shipped": MessageLookupByLibrary.simpleMessage("Versandt"),
        "shipping": MessageLookupByLibrary.simpleMessage("Versand"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Versandadresse"),
        "shippingFee": MessageLookupByLibrary.simpleMessage("Versandkosten"),
        "shippingMethod": MessageLookupByLibrary.simpleMessage("Versandart"),
        "shop": MessageLookupByLibrary.simpleMessage("Einkaufen"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Shop E-Mail"),
        "shopName": MessageLookupByLibrary.simpleMessage("Laden Name"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Bestellungen aufgeben"),
        "shopPhone": MessageLookupByLibrary.simpleMessage("Geschäftstelefon"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Shop Schnecke"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Kurze Beschreibung"),
        "showAllMyOrdered": MessageLookupByLibrary.simpleMessage(
            "Alle meine Bestellungen anzeigen"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Zeige Details"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Galerie anzeigen"),
        "showLess": MessageLookupByLibrary.simpleMessage("Zeige weniger"),
        "showMore": MessageLookupByLibrary.simpleMessage("Zeig mehr"),
        "signIn": MessageLookupByLibrary.simpleMessage("Anmelden"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Mit E Mail anmelden"),
        "signUp": MessageLookupByLibrary.simpleMessage("Registrieren"),
        "signup": MessageLookupByLibrary.simpleMessage("Registrieren"),
        "simple": MessageLookupByLibrary.simpleMessage("einfach"),
        "size": MessageLookupByLibrary.simpleMessage("Grösse"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Größentabelle"),
        "skip": MessageLookupByLibrary.simpleMessage("Überspringen"),
        "sku": MessageLookupByLibrary.simpleMessage("Artikelnummer"),
        "slovak": MessageLookupByLibrary.simpleMessage("slowakisch"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "Der SMS-Code ist abgelaufen. Bitte senden Sie den Bestätigungscode erneut, um es erneut zu versuchen."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Verkauft von"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Etwas ist schief gelaufen. Bitte versuchen Sie es später erneut."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Sortiere nach"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Bankleitzahl"),
        "spanish": MessageLookupByLibrary.simpleMessage("Spanish"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Sprache nicht verfügbar"),
        "startExploring": MessageLookupByLibrary.simpleMessage(
            "Beginnen Sie mit der Erkundung"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Jetzt Einkaufen"),
        "state": MessageLookupByLibrary.simpleMessage("Zustand"),
        "stateIsRequired": MessageLookupByLibrary.simpleMessage(
            "Das Feld Bundesland ist erforderlich"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("Bundesland"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "stock": MessageLookupByLibrary.simpleMessage("Lagerbestand"),
        "stockQuantity": MessageLookupByLibrary.simpleMessage("Bestandsmenge"),
        "stop": MessageLookupByLibrary.simpleMessage("Halt"),
        "store": MessageLookupByLibrary.simpleMessage("Geschäft"),
        "storeAddress": MessageLookupByLibrary.simpleMessage("Shop-Adresse"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Banner"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Eigenmarke"),
        "storeClosed": MessageLookupByLibrary.simpleMessage(
            "Der Laden ist jetzt geschlossen"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Shop E-Mail"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Information speichern"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Store List Banner"),
        "storeLocation": MessageLookupByLibrary.simpleMessage("Geschäftsort"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Adresse / Ort eingeben"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Logo speichern"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Mobiles Banner speichern"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Speichereinstellungen"),
        "storeSliderBanner": MessageLookupByLibrary.simpleMessage(
            "Schieberegler-Banner speichern"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Statisches Banner speichern"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Urlaub speichern"),
        "stores": MessageLookupByLibrary.simpleMessage("Shops"),
        "street": MessageLookupByLibrary.simpleMessage("Straße"),
        "street2": MessageLookupByLibrary.simpleMessage("Straße Nummer 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("Strasse ist erforderlich"),
        "streetName": MessageLookupByLibrary.simpleMessage("Strasse"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Apartment"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Block"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Vielen Dank für Ihre Bestellung. Wir arbeiten zügig an der Bearbeitung Ihrer Bestellung. In Kürze erhalten Sie eine Bestätigungs-E-Mail."),
        "submit": MessageLookupByLibrary.simpleMessage("einreichen"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Senden Sie Ihren Beitrag"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Zwischensumme"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sonntag"),
        "support": MessageLookupByLibrary.simpleMessage("Unterstützung"),
        "swahili": MessageLookupByLibrary.simpleMessage("Suaheli"),
        "swedish": MessageLookupByLibrary.simpleMessage("Schwedisch"),
        "tag": MessageLookupByLibrary.simpleMessage("Etikett"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Dieses Tag existiert nicht"),
        "tags": MessageLookupByLibrary.simpleMessage("Markierungen"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Ein Bild machen"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tamil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Drücken, um diesen Ort auszuwählen"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Tippen Sie auf das Mikrofon, um zu sprechen"),
        "tax": MessageLookupByLibrary.simpleMessage("Steuer"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("TeraWallet"),
        "terrible": MessageLookupByLibrary.simpleMessage("Schrecklich"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Dieses Datum ist nicht verfügbar"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Diese Funktion unterstützt die aktuelle Sprache nicht"),
        "thisIsCustomerRole": MessageLookupByLibrary.simpleMessage(
            "Das ist die Rolle des Kunden"),
        "thisIsVendorRole": MessageLookupByLibrary.simpleMessage(
            "Dies ist die Rolle des Anbieters"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Diese Plattform wird nicht für den Webview unterstützt"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Dieses Produkt wird nicht unterstützt"),
        "thursday": MessageLookupByLibrary.simpleMessage("Donnerstag"),
        "tickets": MessageLookupByLibrary.simpleMessage("Tickets"),
        "time": MessageLookupByLibrary.simpleMessage("Zeit"),
        "title": MessageLookupByLibrary.simpleMessage("Titel"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Titel: A bis Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Titel: Z bis A"),
        "to": MessageLookupByLibrary.simpleMessage("zu"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Zu viele fehlgeschlagene Anmeldeversuche. Bitte versuchen Sie es später erneut."),
        "topUp": MessageLookupByLibrary.simpleMessage("Nachfüllen"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Produkt aufladen nicht gefunden"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Das Total der Bestellung muss mehr betragen als"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Gesamtpreis"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Gesamtsteuersatz"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Auftragsnummer"),
        "trackingPage": MessageLookupByLibrary.simpleMessage("Auftragsseite"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transaktion abgebrochen"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Transaktionsdetails"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("Transaktion fehlgeschlagen"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("Transaktion fehlgeschlagen"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Transaktionsgebühr"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Transaktionsergebnis"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transfer"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Überweisungsbestätigung"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Sie können nicht an diesen Benutzer übertragen"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Übertragung fehlgeschlagen"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Transfererfolg"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Dienstag"),
        "turkish": MessageLookupByLibrary.simpleMessage("Türkisch"),
        "turnOnBle":
            MessageLookupByLibrary.simpleMessage("Bluetooth einschalten"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Nachricht eingeben ..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Schreiben Sie ihre Nachricht hier..."),
        "typing": MessageLookupByLibrary.simpleMessage("Eingabe..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ukrainisch"),
        "unavailable": MessageLookupByLibrary.simpleMessage("nicht verfügbar"),
        "unblock": MessageLookupByLibrary.simpleMessage("Entsperren"),
        "unblockUser":
            MessageLookupByLibrary.simpleMessage("Benutzer entsperren"),
        "undo": MessageLookupByLibrary.simpleMessage("Widerrufen"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Unbezahlt"),
        "update": MessageLookupByLibrary.simpleMessage("Aktualisierung"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Update fehlgeschlagen!"),
        "updateInfo": MessageLookupByLibrary.simpleMessage("Updateinformation"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Passwort erneuern"),
        "updateStatus": MessageLookupByLibrary.simpleMessage("Update Status"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Update erfolgreich!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Profil aktualisieren"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Datei hochladen"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Bild hochladen"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Produkt hochladen"),
        "uploading": MessageLookupByLibrary.simpleMessage("Hochladen"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Jetzt benutzen"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Verwenden Sie dieses Bild"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Dieser Benutzername/diese E-Mail-Adresse ist nicht verfügbar."),
        "userHasBeenBlocked": MessageLookupByLibrary.simpleMessage(
            "Der Benutzer wurde gesperrt."),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Der Benutzername oder das Passwort ist falsch."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "Der Benutzer wurde nicht gefunden"),
        "username": MessageLookupByLibrary.simpleMessage("Benutzername"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Der Benutzername existiert bereits!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Benutzername und Passwort sind erforderlich"),
        "usernameInvalid": MessageLookupByLibrary.simpleMessage(
            "Der Benutzername ist ungültig"),
        "usernameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Benutzername ist erforderlich"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Urlaubsnachricht"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Urlaubsart"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variable"),
        "variation": MessageLookupByLibrary.simpleMessage("Variation"),
        "vendor": MessageLookupByLibrary.simpleMessage("Verkäufer"),
        "vendorAdmin": MessageLookupByLibrary.simpleMessage("Verkäufer Admin"),
        "vendorInfo": MessageLookupByLibrary.simpleMessage("Herstellerinfo"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Bestätigungscode (6-stellig)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Überprüfen"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Über Brieftasche"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamesisch"),
        "view": MessageLookupByLibrary.simpleMessage("Aussicht"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Warenkorb ansehen"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Im Detail sehen"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Mehr sehen"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Auf Google Maps ansehen"),
        "viewOrder":
            MessageLookupByLibrary.simpleMessage("Bestellung anzeigen"),
        "viewRecentTransactions": MessageLookupByLibrary.simpleMessage(
            "Letzte Transaktionen anzeigen"),
        "visible": MessageLookupByLibrary.simpleMessage("Sichtbar"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Laden besuchen"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Warten auf das Laden des Bildes"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Warten auf Postprodukt"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Auf Bestätigung warten"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Brieftaschenguthaben"),
        "walletBalanceWithValue": m51,
        "walletName": MessageLookupByLibrary.simpleMessage("Brieftaschenname"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Wir haben Blog (s) gefunden"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Wir benötigen Kamerazugriff, um nach QR-Code oder Barcode zu scannen."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Ein Authentifizierungscode wurde gesendet an"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Wir senden Ihnen Benachrichtigungen, wenn neue Produkte verfügbar sind oder Angebote verfügbar sind. Sie können diese Einstellung jederzeit in den Einstellungen ändern."),
        "webView": MessageLookupByLibrary.simpleMessage("Webansicht"),
        "website": MessageLookupByLibrary.simpleMessage("Webseite"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Mittwoch"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Willkommen"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Willkommen zurück"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Beginnen Sie jetzt Ihre Einkaufsreise mit uns"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer": MessageLookupByLibrary.simpleMessage(
            "Welche Sprache bevorzugen Sie?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Bitte wenden Sie sich an den Administrator, um Ihre Registrierung zu genehmigen."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "Sie können von diesem Benutzer weder Nachrichten senden noch empfangen."),
        "withdrawAmount":
            MessageLookupByLibrary.simpleMessage("Betrag beheben"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Antrag zurückziehen"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Rückzug"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Damenkollektion"),
        "writeComment": MessageLookupByLibrary.simpleMessage(
            "Schreiben Sie Ihren Kommentar"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Schreiben Sie Ihre Notiz"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Ja"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Sie können nur in einem einzigen Geschäft einkaufen."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Du kannst nur kaufen"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Sie haben keine Berechtigung, Beiträge zu erstellen"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Du hast deine Adresse lokal gespeichert"),
        "youHaveNoPost":
            MessageLookupByLibrary.simpleMessage("Sie haben keine Beiträge"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Sie haben Punkte"),
        "youMightAlsoLike": MessageLookupByLibrary.simpleMessage(
            "Dies könnte Ihnen auch gefallen"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Sie müssen sich anmelden, um zur Kasse zu gehen"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Du wirst nach der Fertigstellung beim nächsten Mal nicht gefragt"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Ihr Konto wird überprüft. Bitte wenden Sie sich an den Administrator, wenn Sie Hilfe benötigen."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Deine Adresse existiert lokal"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Die Adresse wurde in Ihrem lokalen Speicher gespeichert"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Ihre Bewerbung wird geprüft."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Ihr Warenkorb ist leer"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Ihr Buchungsdetail"),
        "yourEarningsThisMonth": MessageLookupByLibrary.simpleMessage(
            "Ihr Einkommen in diesem Monat"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Ihre Notiz"),
        "yourOrderHasBeenAdded": MessageLookupByLibrary.simpleMessage(
            "Ihre Bestellung wurde hinzugefügt"),
        "yourOrderIsConfirmed": MessageLookupByLibrary.simpleMessage(
            "Ihre Bestellung ist bestätigt!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Ihre Bestellung ist leer"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Anscheinend haben Sie keine Elemente hinzugefügt.\nBeginnen Sie mit dem Einkaufen, um es auszufüllen."),
        "yourOrders":
            MessageLookupByLibrary.simpleMessage("Deine Bestellungen"),
        "yourProductIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Ihr Produkt wird überprüft"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Ihr Benutzername oder Ihre E-Mail-Adresse"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Postleitzahl"),
        "zipCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "Die Postleitzahl ist erforderlich")
      };
}
