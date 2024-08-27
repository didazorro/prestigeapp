// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(x) => " ${x}attivo";

  static String m1(attribute) => "Qualsiasi ${attribute}";

  static String m2(point) => "I tuoi punti disponibili: ${point}";

  static String m3(state) => "L\'adattatore Bluetooth è ${state}";

  static String m4(author) => "Autore: ${author}";

  static String m5(currency) => "Valuta modificata in ${currency}";

  static String m6(number) => "${number} caratteri rimanenti";

  static String m7(priceRate, pointRate) => "${priceRate} = ${pointRate} punti";

  static String m8(count) => "${count} elemento";

  static String m9(count) => " ${count} elementi";

  static String m10(count) => "${count} elemento";

  static String m11(count) => "${count} elementi";

  static String m12(country) => "${country} paese non è supportato";

  static String m13(currency) => " ${currency} non è supportato";

  static String m14(day) => "${day} giorni fa";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Ends in ${timeLeft}";

  static String m17(captcha) => "Inserisci ${captcha} per confermare:";

  static String m18(message) => "Errore: ${message}";

  static String m19(message) => "Errore: ${message}";

  static String m20(time) => "In scadenza tra ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "${hour} ore fa";

  static String m23(currentBalance) =>
      "Ti sono rimasti solo ${currentBalance} nel tuo portafoglio";

  static String m24(count) =>
      " ${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m25(message) =>
      "There is an issue with the app during request the data, please contact admin for fixing the issues: ${message}";

  static String m26(currency, amount) =>
      "L\'importo massimo per l\'utilizzo di questo pagamento è ${currency} ${amount}";

  static String m27(size) => "Dimensione massima del file: ${size} MB";

  static String m28(currency, amount) =>
      "L\'importo minimo per l\'utilizzo di questo pagamento è ${currency} ${amount}";

  static String m29(minute) => "${minute} minuti fa";

  static String m30(month) => "${month} mesi fa";

  static String m31(store) => "Altro da ${store}";

  static String m32(number) => "deve essere acquistato in gruppi di ${number}";

  static String m33(itemCount) => "${itemCount} prodotti";

  static String m34(price) => "Opzioni totali: ${price}";

  static String m35(amount) => "Paga ${amount}";

  static String m36(name) =>
      "${name} sono stati aggiunti al carrello con successo";

  static String m37(total) => "Qtà: ${total}";

  static String m38(name) => "Ho ricevuto denaro da ${name}";

  static String m39(percent) => "${percent}% di sconto";

  static String m40(keyword) => "Risultati della ricerca per: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} elemento)";

  static String m42(keyword, count) => "${keyword} (${count} elementi)";

  static String m43(second) => "${second} secondi fa";

  static String m44(totalCartQuantity) =>
      "Carrello, ${totalCartQuantity} prodotti";

  static String m45(numberOfUnitsSold) => "Sold: ${numberOfUnitsSold}";

  static String m46(fieldName) => "Il campo ${fieldName} è obbligatorio";

  static String m47(total) => "${total} Prodotti";

  static String m48(name) => "Trasferisci denaro a ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Usa un massimo di ${maxPointDiscount} punti per uno sconto di ${maxPriceDiscount} su questo ordine!";

  static String m50(date) => "Valido fino alle ${date}";

  static String m51(balance) => "Saldo del portafoglio: ${balance}";

  static String m52(message) => "Attenzione: ${message}";

  static String m53(defaultCurrency) =>
      "La valuta attualmente selezionata non è disponibile per la funzione Portafoglio, cambiala in ${defaultCurrency}";

  static String m54(length) => "Abbiamo trovato \$length prodotti";

  static String m55(week) => "Settimana ${week}";

  static String m56(name) => "Benvenuto ${name}";

  static String m57(year) => "${year} anni fa";

  static String m58(total) => "Hai assegnato all\'ordine #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Chi siamo"),
        "account": MessageLookupByLibrary.simpleMessage("account"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("In fase di approvazione"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "L\'eliminazione del tuo account rimuove le informazioni personali dal nostro database. La tua email diventa permanentemente riservata e la stessa email non può essere riutilizzata per registrare un nuovo account."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Il conto è in attesa di approvazione."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Numero di conto"),
        "accountSetup": MessageLookupByLibrary.simpleMessage(
            "Configurazione dell\'account"),
        "active": MessageLookupByLibrary.simpleMessage("Attivo"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Attivo molto tempo fa"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Attivo ora"),
        "addAName": MessageLookupByLibrary.simpleMessage("Aggiungi un nome"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Aggiungi un nuovo post"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Aggiungi una lumaca"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Aggiungi un attributo"),
        "addListing": MessageLookupByLibrary.simpleMessage("Aggiungi elenco"),
        "addMessage":
            MessageLookupByLibrary.simpleMessage("Aggiungi un messaggio"),
        "addNew": MessageLookupByLibrary.simpleMessage("Aggiungere nuova"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Aggiungi un nuovo indirizzo"),
        "addNewBlog":
            MessageLookupByLibrary.simpleMessage("Aggiungi nuovo blog"),
        "addNewPost": MessageLookupByLibrary.simpleMessage("Crea nuovo post"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Aggiungi prodotto"),
        "addToCart":
            MessageLookupByLibrary.simpleMessage("Aggiungi al carrello"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "La quantità massima è stata superata"),
        "addToCartSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Aggiunto al carrello con successo"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Aggiungi all\'ordine"),
        "addToQuoteRequest": MessageLookupByLibrary.simpleMessage(
            "Aggiungi alla richiesta di preventivo"),
        "addToWishlist": MessageLookupByLibrary.simpleMessage(
            "Aggiungi alla lista dei desideri"),
        "added": MessageLookupByLibrary.simpleMessage("aggiunto"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Aggiunto con successo"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Aggiungere la tua immagine"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Informazioni Aggiuntive"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Servizi aggiuntivi"),
        "address": MessageLookupByLibrary.simpleMessage("Indirizzo"),
        "adults": MessageLookupByLibrary.simpleMessage("adulti"),
        "afternoon": MessageLookupByLibrary.simpleMessage("pomeriggio"),
        "agree": MessageLookupByLibrary.simpleMessage("Essere d\'accordo"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Privacy e termini"),
        "albanian": MessageLookupByLibrary.simpleMessage("albanese"),
        "all": MessageLookupByLibrary.simpleMessage("tutto"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Tutti i marchi"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Tutti gli ordini"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Ultime vendite"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Tutti i prodotti"),
        "allow": MessageLookupByLibrary.simpleMessage("permettere"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "Consenti l\'accesso alla fotocamera?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Quasi esaurito"),
        "amazing": MessageLookupByLibrary.simpleMessage("Stupefacente"),
        "amount": MessageLookupByLibrary.simpleMessage("Quantità"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("aspetto"),
        "apply": MessageLookupByLibrary.simpleMessage("Applica"),
        "approve": MessageLookupByLibrary.simpleMessage("Approvare"),
        "approved": MessageLookupByLibrary.simpleMessage("approvato"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Richieste approvate"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabo"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Sei sicuro?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di eliminare il tuo account?"),
        "areYouSureLogOut":
            MessageLookupByLibrary.simpleMessage("Sei sicuro di voler uscire?"),
        "areYouWantToExit":
            MessageLookupByLibrary.simpleMessage("Sei sicuro di voler uscire?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Assegnato"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Almeno 3 caratteri..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Attributo"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("L\'attributo esiste già"),
        "attributes": MessageLookupByLibrary.simpleMessage("Attributi"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Elementi audio rilevati. Vuoi aggiungere a Audio Player?"),
        "availability": MessageLookupByLibrary.simpleMessage("Disponibilità"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Disponibilità: "),
        "availablePoints": m2,
        "averageRating": MessageLookupByLibrary.simpleMessage("Voto medio"),
        "back": MessageLookupByLibrary.simpleMessage("indietro"),
        "backOrder": MessageLookupByLibrary.simpleMessage("In arretrato"),
        "backToShop": MessageLookupByLibrary.simpleMessage("Torna al negozio"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Torna al Portafoglio"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Collezione Borse"),
        "balance": MessageLookupByLibrary.simpleMessage("Equilibrio"),
        "bank": MessageLookupByLibrary.simpleMessage("banca"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Tipo di elenco banner"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Tipo di banner"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("URL Youtube del banner"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Informazioni di base"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Diventa un venditore"),
        "bengali": MessageLookupByLibrary.simpleMessage("bengalese"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Indirizzo Di Fatturazione"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Il Bluetooth non è stato abilitato"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Bloccare"),
        "blockUser": MessageLookupByLibrary.simpleMessage("Blocca utente"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Già prenotato"),
        "booking": MessageLookupByLibrary.simpleMessage("prenotazione"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Prenotazione annullata"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Confermato"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "C\'è qualcosa di sbagliato. Per favore riprova più tardi."),
        "bookingHistory": MessageLookupByLibrary.simpleMessage(
            "Cronologia delle prenotazioni"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Prenota ora"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Prenotato con successo"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Riepilogo prenotazione"),
        "bookingUnavailable": MessageLookupByLibrary.simpleMessage(
            "La prenotazione non è disponibile"),
        "bosnian": MessageLookupByLibrary.simpleMessage("bosniaco"),
        "branch": MessageLookupByLibrary.simpleMessage("Ramo"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Siamo spiacenti, il carrello verrà svuotato a causa del cambio di regione. Siamo felici di contattarti se hai bisogno di assistenza."),
        "brand": MessageLookupByLibrary.simpleMessage("Marca"),
        "brands": MessageLookupByLibrary.simpleMessage("Marche"),
        "brazil": MessageLookupByLibrary.simpleMessage("portoghese"),
        "burmese": MessageLookupByLibrary.simpleMessage("birmano"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Acquista subito"),
        "by": MessageLookupByLibrary.simpleMessage("Di"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Solo su appuntamento"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Per marca"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Per Categoria"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Per Prezzo"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Iscrivendoti accetti il nostro"),
        "byTag": MessageLookupByLibrary.simpleMessage("Per tag"),
        "call": MessageLookupByLibrary.simpleMessage("chiamata"),
        "callTo":
            MessageLookupByLibrary.simpleMessage("Effettua una chiamata a"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Chiama il proprietario del negozio"),
        "canNotCreateOrder": MessageLookupByLibrary.simpleMessage(
            "Impossibile creare l\'ordine"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "Impossibile creare l\'utente."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Impossibile ottenere metodi di pagamento"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Impossibile ottenere i metodi di spedizione"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Impossibile ottenere informazioni sul token."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Impossibile avviare questa app, assicurati che le tue impostazioni su config.dart siano corrette"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "Impossibile caricare questo collegamento"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Spiacente questo video non può essere riprodotto."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Impossibile salvare l\'ordine sul sito web"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Impossibile aggiornare le informazioni sull\'utente."),
        "cancel": MessageLookupByLibrary.simpleMessage("Annulla"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Annulla"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Annullato"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Richieste annullate"),
        "cannotDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Questo account non può essere eliminato"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "Non puoi inviare messaggi a questo utente"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Impossibile trovare questo ID ordine"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "La data nel passato non è consentita"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("PORTA CARTE"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Numero di carta"),
        "cart": MessageLookupByLibrary.simpleMessage("Carrello"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Sconto sul carrello"),
        "cash": MessageLookupByLibrary.simpleMessage("contanti"),
        "categories": MessageLookupByLibrary.simpleMessage("Categorie"),
        "category": MessageLookupByLibrary.simpleMessage("Categorie"),
        "change": MessageLookupByLibrary.simpleMessage("Modificare"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Cambia lingua"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Cambia stampante"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Chiacchierare"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatListScreen":
            MessageLookupByLibrary.simpleMessage("Schermata elenco chat"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Chatta tramite Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Chatta tramite WhatsApp"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Chatta con Bot"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Chatta con il proprietario del negozio"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Controlla la tua email per il link di conferma"),
        "checking": MessageLookupByLibrary.simpleMessage("controllo ..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Acquista"),
        "chinese": MessageLookupByLibrary.simpleMessage("Cinese"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Cinese semplificato)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Cinese tradizionale)"),
        "chooseBranch":
            MessageLookupByLibrary.simpleMessage("Scegli la filiale"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Scegli la categoria"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Scegli dalla galleria"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Scegli Dal server"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Scegli il piano"),
        "chooseStaff":
            MessageLookupByLibrary.simpleMessage("Scegli il personale"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Scegli il tipo"),
        "chooseYourPaymentMethod": MessageLookupByLibrary.simpleMessage(
            "Scegli il metodo di pagamento preferito."),
        "city": MessageLookupByLibrary.simpleMessage("Città"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesta la <Città>"),
        "clear": MessageLookupByLibrary.simpleMessage("Libera"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Svuota"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Cancella conversazione"),
        "close": MessageLookupByLibrary.simpleMessage("Chiudi"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Chiuso ora"),
        "closed": MessageLookupByLibrary.simpleMessage("Chiuso"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage(
            "Costo aggiuntivo contrassegno"),
        "color": MessageLookupByLibrary.simpleMessage("Colore"),
        "comment": MessageLookupByLibrary.simpleMessage("Commento"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Puoi scrivere qui un tuo commento"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Commenta con successo, attendi fino all\'approvazione del tuo commento"),
        "complete": MessageLookupByLibrary.simpleMessage("Completare"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confermare"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Conferma l\'eliminazione dell\'account"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Il carrello verrà svuotato al momento della ricarica."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler svuotare il carrello?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "sei sicuro di voler cancellare questo? Questa azione non può essere annullata."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler eliminare?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Conferma password"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Il campo di conferma della password è obbligatorio"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler rimuovere questo prodotto?"),
        "connect": MessageLookupByLibrary.simpleMessage("Collegare"),
        "contact": MessageLookupByLibrary.simpleMessage("Contatto"),
        "content": MessageLookupByLibrary.simpleMessage("Soddisfare"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Continua a fare acquisti"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Vai al pagamento"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Vai al riepilogo"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Vai alla Spedizione"),
        "continues": MessageLookupByLibrary.simpleMessage("CONTINUA"),
        "conversations": MessageLookupByLibrary.simpleMessage("conversazioni"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("copiato"),
        "copy": MessageLookupByLibrary.simpleMessage("copia"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Tutti i diritti riservati."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("Nazione"),
        "countryCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "Il codice paese è obbligatorio"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesta la "),
        "couponCode": MessageLookupByLibrary.simpleMessage("Codice coupon"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Il buono è stato salvato con successo."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Il tuo codice coupon non è valido"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Congratulazioni! Codice coupon applicato con successo"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Crea il tuo account"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Il tuo post è stato creato correttamente come bozza. Dai un\'occhiata al tuo sito di amministrazione."),
        "createPost": MessageLookupByLibrary.simpleMessage("Crea Post"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Crea prodotto"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Grazie per la tua opinione"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Apprezziamo davvero il tuo contributo e apprezziamo il tuo contributo nell\'aiutarci a migliorare"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Crea tutte le varianti"),
        "createdOn": MessageLookupByLibrary.simpleMessage("creato:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Valute"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Password attuale"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Currently we only have"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("dettagli del cliente"),
        "customerNote":
            MessageLookupByLibrary.simpleMessage("Nota del cliente"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("ceco"),
        "danish": MessageLookupByLibrary.simpleMessage("danese"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Tema scuro"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Cruscotto"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Data vuota"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Data crescente"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("dateBooking"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Data decrescente"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Data fine"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Data: più recente"),
        "dateOldest":
            MessageLookupByLibrary.simpleMessage("Data: il più vecchio"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Data di inizio"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Appuntamento"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Data saggia vicino"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Addebito"),
        "decline": MessageLookupByLibrary.simpleMessage("Declino"),
        "delete": MessageLookupByLibrary.simpleMessage("Elimina"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Eliminare l\'account"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler eliminare il tuo account? Si prega di leggere come influirà l\'eliminazione dell\'account."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Account eliminato correttamente. La tua sessione è scaduta."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Cancella tutto"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Elimina conversazione"),
        "delivered": MessageLookupByLibrary.simpleMessage("consegnato"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Spedito a"),
        "delivering": MessageLookupByLibrary.simpleMessage("Consegna"),
        "deliveryBoy":
            MessageLookupByLibrary.simpleMessage("Ragazzo delle consegne:"),
        "deliveryDate":
            MessageLookupByLibrary.simpleMessage("Data di consegna"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Dettagli di spedizione"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("consegna"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Nessun dato.\nQuesto ordine è stato rimosso."),
        "description": MessageLookupByLibrary.simpleMessage("Descrizione"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Inserisci o seleziona il voucher per il tuo ordine."),
        "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
            "Non hai ricevuto il codice? "),
        "direction": MessageLookupByLibrary.simpleMessage("direzione"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Disattiva acquisto"),
        "discount": MessageLookupByLibrary.simpleMessage("Sconto"),
        "displayName":
            MessageLookupByLibrary.simpleMessage("Nome visualizzato"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Non hai ancora nessuna transazione"),
        "doYouWantToExitApp":
            MessageLookupByLibrary.simpleMessage("Sei sicuro di voler uscire?"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Vuoi partire senza inviare la tua recensione?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Vuoi uscire?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Vuoi sbloccare questo utente?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay non è supportato. Si prega di controllare il portafoglio e la carta"),
        "done": MessageLookupByLibrary.simpleMessage("Fatto"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Non hai un account?"),
        "download": MessageLookupByLibrary.simpleMessage("Download"),
        "downloadApp": MessageLookupByLibrary.simpleMessage("scarica l\'app"),
        "draft": MessageLookupByLibrary.simpleMessage("bozza"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Conducente assegnato"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "dutch": MessageLookupByLibrary.simpleMessage("olandese"),
        "earnings": MessageLookupByLibrary.simpleMessage("guadagni"),
        "edit": MessageLookupByLibrary.simpleMessage("Modificare:"),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Modifica informazioni sul prodotto"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Modificare"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egitto"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAddressInvalid": MessageLookupByLibrary.simpleMessage(
            "L\'indirizzo e-mail non è valido"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Email già in uso!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "L\'eliminazione del tuo account annullerà l\'iscrizione a tutte le mailing list."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "L\'account e-mail che hai inserito non esiste. Per favore riprova."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesta la "),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("Abbonamento e-mail"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Sembra che tu non abbia ancora effettuato alcuna prenotazione.\nInizia a esplorare ed effettua la tua prima prenotazione!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Carrello vuoto"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sembra che tu non abbia ancora aggiunto alcun articolo al carrello. Inizia lo shopping per aggiungere articoli al carrello."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Ops! Il tuo carrello sembra un po\' leggero.\n\nPronto per acquistare qualcosa di favoloso?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Il tuo commento non può essere vuoto"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Non hai ancora effettuato nessuna ricerca. Scrivi nella casella in alto il prodotto che desideri trovare."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Non sono disponibili opzioni di spedizione. Assicurati che il tuo indirizzo sia stato inserito correttamente o contattaci se hai bisogno di aiuto."),
        "emptyUsername":
            MessageLookupByLibrary.simpleMessage("Nome utente / Email è vuoto"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Lista dei desideri vuota"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Clicca sul cuore accanto al prodotto che preferisci per salvarlo sulla tua lista."),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "La tua lista dei desideri è attualmente vuota.\nInizia ad aggiungere prodotti ora!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Abilita per il pagamento"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Abilita per l\'accesso"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Abilita per Wallet"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Abilita la modalità vacanza"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Seleziona una data di fine successiva alla data di inizio"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Inglese"),
        "enterAmount":
            MessageLookupByLibrary.simpleMessage("Inserire l\'importo"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Inserisci un indirizzo email per ciascun destinatario"),
        "enterSentCode": MessageLookupByLibrary.simpleMessage(
            "Inserisci il codice ricevuto"),
        "enterVoucherCode": MessageLookupByLibrary.simpleMessage(
            "Inserisci il codice promozionale"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Inserisci la tua email"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Inserisci la tua email o nome utente"),
        "enterYourFirstName": MessageLookupByLibrary.simpleMessage(
            "Inserisci il tuo nome di battesimo"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Inserisci il tuo cognome"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Per favore inserisci il tuo numero di cellulare"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Inserisci la tua password"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Inserisci il tuo numero di telefono per iniziare."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Inserisci il tuo numero di telefono"),
        "enterYourUsername": MessageLookupByLibrary.simpleMessage(
            "Inserisci il tuo nome utente"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "L\'importo inserito è maggiore dell\'importo corrente del portafoglio. Per favore riprova!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Si prega di inserire un indirizzo email valido."),
        "errorMsg": m19,
        "errorOnGettingPost": MessageLookupByLibrary.simpleMessage(
            "Errore durante il recupero del post!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Inserisci una password di almeno 8 caratteri"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Errore"),
        "evening": MessageLookupByLibrary.simpleMessage("sera"),
        "events": MessageLookupByLibrary.simpleMessage("Eventi"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Data di consegna prevista"),
        "expired": MessageLookupByLibrary.simpleMessage("scaduto"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Data di scadenza"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM / YY"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Esplora ora"),
        "external": MessageLookupByLibrary.simpleMessage("esterno"),
        "extraServices": MessageLookupByLibrary.simpleMessage("Servizi Extra"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Impossibile assegnare l\'utente"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Impossibile generare il collegamento"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Impossibile caricare la configurazione dell\'applicazione. Riprova o riavvia l\'applicazione."),
        "failedToLoadImage": MessageLookupByLibrary.simpleMessage(
            "Impossibile caricare l\'immagine"),
        "fair": MessageLookupByLibrary.simpleMessage("GIUSTO"),
        "favorite": MessageLookupByLibrary.simpleMessage("Preferito"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Funzionalità non disponibile"),
        "featureProducts": MessageLookupByLibrary.simpleMessage("Prodotti"),
        "featured": MessageLookupByLibrary.simpleMessage("In primo piano"),
        "features": MessageLookupByLibrary.simpleMessage("Caratteristiche"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Il file è troppo grande. Scegli un file più piccolo!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Caricamento del file non riuscito!"),
        "files": MessageLookupByLibrary.simpleMessage("file"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
        "fingerprintsTouchID":
            MessageLookupByLibrary.simpleMessage("Impronte digitali, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Completa l\'installazione"),
        "finnish": MessageLookupByLibrary.simpleMessage("finlandese"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Sii il primo a commentare questo post!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Nome"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesto il "),
        "firstRenewal": MessageLookupByLibrary.simpleMessage("Primo Rinnovo"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Sconto fisso sul carrello"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Sconto fisso sui prodotti"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("for this product"),
        "free": MessageLookupByLibrary.simpleMessage("Gratuito"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("gratuito"),
        "french": MessageLookupByLibrary.simpleMessage("French"),
        "friday": MessageLookupByLibrary.simpleMessage("Venerdì"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nome e cognome"),
        "gallery": MessageLookupByLibrary.simpleMessage("galleria"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Impostazioni generali"),
        "generatingLink": MessageLookupByLibrary.simpleMessage(
            "Generazione collegamento in corso..."),
        "german": MessageLookupByLibrary.simpleMessage("Tedesco"),
        "getNotification": MessageLookupByLibrary.simpleMessage("Notifiche"),
        "getNotified":
            MessageLookupByLibrary.simpleMessage("Ricevi una notifica!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Ottieni link password"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Iniziare"),
        "goBack": MessageLookupByLibrary.simpleMessage("Torna Indietro"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Ritorna alla homepage"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Torna all\'Indirizzo"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Torna al riepilogo"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Torna alla Spedizione"),
        "good": MessageLookupByLibrary.simpleMessage("buono"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("greco"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Vendite lorde"),
        "grouped": MessageLookupByLibrary.simpleMessage("Raggruppati"),
        "guests": MessageLookupByLibrary.simpleMessage("Ospiti"),
        "hasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("è stato cancellato"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebrew"),
        "hideAbout":
            MessageLookupByLibrary.simpleMessage("Nascondi informazioni"),
        "hideAddress":
            MessageLookupByLibrary.simpleMessage("Nascondi indirizzo"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Nascondi email"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Nascondi mappa"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Nascondi telefono"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Nascondi politica"),
        "hindi": MessageLookupByLibrary.simpleMessage("hindi"),
        "history": MessageLookupByLibrary.simpleMessage("storia"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("storia"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hour": MessageLookupByLibrary.simpleMessage("ora"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("ungherese"),
        "hungary": MessageLookupByLibrary.simpleMessage("Hungary"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Sono d\'accordo con"),
        "imIn": MessageLookupByLibrary.simpleMessage("Ok, accetto."),
        "imageFeature": MessageLookupByLibrary.simpleMessage(
            "Caratteristica dell\'immagine"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("galleria di immagini"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("Immagine generata"),
        "imageNetwork":
            MessageLookupByLibrary.simpleMessage("Rete di immagini"),
        "inStock": MessageLookupByLibrary.simpleMessage("Disponibile"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Password errata"),
        "india": MessageLookupByLibrary.simpleMessage("hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Italiana"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Tabella delle informazioni"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Si prega di installare il plugin DIGITS: Wordpress Mobile Number Signup and Login"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Chiudi istantaneamente"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numero di telefono invalido"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Codice di verifica SMS non valido"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Anno di nascita non valido"),
        "invoice": MessageLookupByLibrary.simpleMessage("Fattura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("È tutto pronto...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("sta scrivendo..."),
        "italian": MessageLookupByLibrary.simpleMessage("Italiano"),
        "item": MessageLookupByLibrary.simpleMessage("articolo"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Totale articolo:"),
        "items": MessageLookupByLibrary.simpleMessage("articoli"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage("Ordinato!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Voglio creare un account"),
        "japanese": MessageLookupByLibrary.simpleMessage("Giapponese"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Mantieni"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("coreano"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdish"),
        "language": MessageLookupByLibrary.simpleMessage("Lingua"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "La lingua è stata aggiornata correttamente"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Cognome"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesto il "),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Ultime transazioni"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Gli ultimi prodotti"),
        "layout": MessageLookupByLibrary.simpleMessage("Layouts"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Tema leggero"),
        "link": MessageLookupByLibrary.simpleMessage("collegamento"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Tipo di banner elenco"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Elenco video banner"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Messaggi di notifica"),
        "listening": MessageLookupByLibrary.simpleMessage("Ascoltando..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Caricamento non riuscito!"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Caricamento link..."),
        "location": MessageLookupByLibrary.simpleMessage("Posizione"),
        "lockScreenAndSecurity":
            MessageLookupByLibrary.simpleMessage("Blocco schermo e sicurezza"),
        "login": MessageLookupByLibrary.simpleMessage("LogIn"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("The login was canceled"),
        "loginErrorServiceProvider": m25,
        "loginFailed": MessageLookupByLibrary.simpleMessage("Accesso fallito!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Non sei autorizzato a utilizzare questa app."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Accedi con successo!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Effettua il login per commentare"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Per favore accedi per continuare"),
        "loginToReview": MessageLookupByLibrary.simpleMessage(
            "Effettua il login per rivedere"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Accedi al tuo account"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "malay": MessageLookupByLibrary.simpleMessage("malese"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Collezione Uomo"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Gestisci chiave API"),
        "manageStock":
            MessageLookupByLibrary.simpleMessage("Gestisci le scorte"),
        "map": MessageLookupByLibrary.simpleMessage("Carta geografica"),
        "marathi": MessageLookupByLibrary.simpleMessage("marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Segna come letto"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Contrassegna come spedito"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Segna come non letto"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Magari dopo"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Ordine del menù"),
        "menus": MessageLookupByLibrary.simpleMessage("Menu"),
        "message": MessageLookupByLibrary.simpleMessage("Messaggio"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Invia messaggio a"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Minimum quantity is"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Mobile"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("È richiesto il cellulare"),
        "mobileNumberInUse": MessageLookupByLibrary.simpleMessage(
            "Numero di cellulare già in uso!"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Verifica mobile"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("un attimo fa"),
        "monday": MessageLookupByLibrary.simpleMessage("Lunedì"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...Di Più"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Maggiori informazioni"),
        "morning": MessageLookupByLibrary.simpleMessage("Mattina"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Seleziona almeno 1 elemento"),
        "myCart": MessageLookupByLibrary.simpleMessage("Carrello"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Il mio ordine"),
        "myPoints": MessageLookupByLibrary.simpleMessage("I miei punti"),
        "myProducts": MessageLookupByLibrary.simpleMessage("I miei prodotti"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Non hai prodotti. Prova a crearne uno!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "myWishList":
            MessageLookupByLibrary.simpleMessage("La mia Lista dei Desideri"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Nome"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Nome sulla carta"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("Nearby Places"),
        "needHelp":
            MessageLookupByLibrary.simpleMessage("Ho bisogno di aiuto?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "È necessario effettuare nuovamente il login per effettuare l\'aggiornamento"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Olanda"),
        "newAppConfig": MessageLookupByLibrary.simpleMessage(
            "Nuovi contenuti disponibili!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nuova password"),
        "newVariation":
            MessageLookupByLibrary.simpleMessage("Nuova variazione"),
        "next": MessageLookupByLibrary.simpleMessage("Successivo"),
        "niceName": MessageLookupByLibrary.simpleMessage("Bel nome"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Nessun indirizzo è stato ancora salvato."),
        "noBackHistoryItem":
            MessageLookupByLibrary.simpleMessage("Nessun prodotto"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Opps, the blog seems no longer exist"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Non viene concessa alcuna autorizzazione alla fotocamera. Concedilo nelle Impostazioni del tuo dispositivo."),
        "noComments":
            MessageLookupByLibrary.simpleMessage("Non ci sono commenti"),
        "noConversation": MessageLookupByLibrary.simpleMessage(
            "Nessuna conversazione ancora"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Apparirà quando qualcuno inizierà a chattare con te"),
        "noData":
            MessageLookupByLibrary.simpleMessage("Nessun dato da mostrare"),
        "noFavoritesYet": MessageLookupByLibrary.simpleMessage(
            "Ancora nessun prodotto nella Lista dei Desideri"),
        "noFileToDownload":
            MessageLookupByLibrary.simpleMessage("Nessun file da scaricare."),
        "noForwardHistoryItem":
            MessageLookupByLibrary.simpleMessage("Nessun Prodotto"),
        "noInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Nessuna connessione ad Internet"),
        "noListingNearby": MessageLookupByLibrary.simpleMessage(
            "Nessun annuncio nelle vicinanze!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Nessun ordine"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "Non sono disponibili metodi di pagamento."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Siamo spiacenti, questo prodotto non è accessibile per il tuo ruolo attuale."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Questo prodotto è disponibile per utenti con ruoli specifici. Effettua il login con le credenziali appropriate per accedere a questo prodotto o contattaci per ulteriori informazioni."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Effettua il login con le credenziali appropriate per accedere a questo prodotto o contattaci per ulteriori informazioni."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Opps, this page seems no longer exist!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Nessuna stampante"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Nessun prodotto"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("No Result Found"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Nessuna Recensione"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Nessuno slot disponibile"),
        "noStoreNearby": MessageLookupByLibrary.simpleMessage(
            "Nessun negozio nelle vicinanze!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Non ci sono suggerimenti"),
        "noThanks": MessageLookupByLibrary.simpleMessage("No grazie"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Spiacenti, nessuna transazione trovata!"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Siamo spiacenti, nessun video trovato."),
        "none": MessageLookupByLibrary.simpleMessage("Nessuna"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Spiacenti, non siamo riusciti a trovare alcun risultato."),
        "notFound": MessageLookupByLibrary.simpleMessage("Not Found"),
        "notRated": MessageLookupByLibrary.simpleMessage("Non valutato"),
        "note": MessageLookupByLibrary.simpleMessage("Note sugli ordini"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Nota"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Nota (opzionale)"),
        "notice": MessageLookupByLibrary.simpleMessage("Avviso"),
        "notifications": MessageLookupByLibrary.simpleMessage("notifiche"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Notifica le ultime offerte, la disponibilità dei prodotti e lo stato degli ordini."),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("of this product"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "on": MessageLookupByLibrary.simpleMessage("sopra"),
        "onSale": MessageLookupByLibrary.simpleMessage("In vendita"),
        "onVacation": MessageLookupByLibrary.simpleMessage("In vacanza"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 per ciascun destinatario"),
        "online": MessageLookupByLibrary.simpleMessage("in linea"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Aperto 24 ore"),
        "openMap": MessageLookupByLibrary.simpleMessage("Apri Mappa"),
        "openNow": MessageLookupByLibrary.simpleMessage("Aperto adesso"),
        "openingHours":
            MessageLookupByLibrary.simpleMessage("Orari di apertura"),
        "optional": MessageLookupByLibrary.simpleMessage("opzionale"),
        "options": MessageLookupByLibrary.simpleMessage("Opzioni"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("O"),
        "orLoginWith": MessageLookupByLibrary.simpleMessage("O accedi con"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Conferma dell\'ordine"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di creare l\'ordine?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Data ordine"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Dettagli dell\'Ordine"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Cronologia ordini"),
        "orderId": MessageLookupByLibrary.simpleMessage("ID ordine:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("ID ordine"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Ordine n."),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Note dell\'ordine"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Numero d\'ordine"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Annullato storno"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Cancellato"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("ricarica"),
        "orderStatusCompleted": MessageLookupByLibrary.simpleMessage("Spedito"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("negato"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("scaduto"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Fallito"),
        "orderStatusOnHold":
            MessageLookupByLibrary.simpleMessage("In attesa di lavorazione"),
        "orderStatusPending":
            MessageLookupByLibrary.simpleMessage("in attesa di"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("In attesa di pagamento"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("trasformati"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("in lavorazione"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Rimborsato"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("Reversed"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Spedito"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Voided"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Puoi controllare lo stato del tuo ordine utilizzando la nostra funzione di stato della consegna. Riceverai un\'e-mail di conferma dell\'ordine con i dettagli del tuo ordine e un link per seguirne l\'avanzamento."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "È possibile accedere al proprio account tramite e-mail e password definite in precedenza. Sul tuo account puoi modificare i dati del tuo profilo, controllare la cronologia delle transazioni, modificare la sottoscrizione alla newsletter."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Hai effettuato correttamente l\'ordine"),
        "orderSuccessTitle2":
            MessageLookupByLibrary.simpleMessage("Il tuo account"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("RIEPILOGO DELL\'ORDINE"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("Ordine totale"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Tracciamento dell\'ordine"),
        "orders": MessageLookupByLibrary.simpleMessage("ordini"),
        "otpVerification": MessageLookupByLibrary.simpleMessage("Verifica OTP"),
        "ourBankDetails": MessageLookupByLibrary.simpleMessage(
            "Le nostre coordinate bancarie"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Esaurito"),
        "pageView": MessageLookupByLibrary.simpleMessage(
            "Visualizzazione della pagina"),
        "paid": MessageLookupByLibrary.simpleMessage("pagato"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Stato pagato"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Il campo password è obbligatorio"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Le passwords non corrispondono"),
        "pasteYourImageUrl": MessageLookupByLibrary.simpleMessage(
            "Incolla l\'URL dell\'immagine"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Pagare con il portafoglio"),
        "payNow": MessageLookupByLibrary.simpleMessage("Paga ora"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Pagamento"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "I dettagli del pagamento sono stati modificati correttamente."),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Metodo di pagamento"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Questo metodo di pagamento non è supportato"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Metodo di Pagamento"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Impostazioni di pagamento"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Pagamento riuscito"),
        "pending": MessageLookupByLibrary.simpleMessage("in attesa di"),
        "persian": MessageLookupByLibrary.simpleMessage("Persian"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefono"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("Il telefono è vuoto"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Formato: +84123456789"),
        "phoneIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesto il "),
        "phoneNumber":
            MessageLookupByLibrary.simpleMessage("Numero telefonico"),
        "phoneNumberVerification":
            MessageLookupByLibrary.simpleMessage("Verifica telefono"),
        "pickADate": MessageLookupByLibrary.simpleMessage("Scegli data e ora"),
        "picking":
            MessageLookupByLibrary.simpleMessage("In attesa di consegna"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Conferma il tuo ordine"),
        "playAll": MessageLookupByLibrary.simpleMessage("Giocare tutto"),
        "pleaseAddPrice": MessageLookupByLibrary.simpleMessage(
            "Si prega di aggiungere il prezzo"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Accetta i termini prima di continuare"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Si prega di consentire l\'accesso alla fotocamera e alla galleria"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Si prega di controllare la connessione a Internet!"),
        "pleaseChooseBranch":
            MessageLookupByLibrary.simpleMessage("Scegli una filiale"),
        "pleaseChooseCategory": MessageLookupByLibrary.simpleMessage(
            "Si prega di scegliere la categoria"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Si prega di inserire il nome del prodotto"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Inserisci il tuo codice"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Compila tutti i campi necessari"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Aumenta o diminuisci la quantità per continuare."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Per favore compilare tutti i campi"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Compila tutti i campi necessari"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Seleziona una data di prenotazione"),
        "pleaseSelectALocation":
            MessageLookupByLibrary.simpleMessage("Seleziona una posizione"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Please choose an option for each attribute of the product"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Seleziona almeno 1 opzione per ogni attributo attivo"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Seleziona le immagini"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Seleziona le opzioni richieste!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Accedi al tuo account prima di caricare qualsiasi file."),
        "point": MessageLookupByLibrary.simpleMessage("Punti"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Non è stata trovata alcuna configurazione di punti di sconto nel server"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Si prega di inserire il punto sconto"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Punto di sconto massimo"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Non hai abbastanza punti sconto. Il tuo punto di sconto totale è"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Hai raggiunto il punto massimo di sconto"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Il valore dello sconto totale è superiore al totale della fattura"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "Il punto sconto viene rimosso"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Il punto sconto è stato applicato con successo"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "There is the Discount Rule for applying your points to Cart"),
        "polish": MessageLookupByLibrary.simpleMessage("Polish"),
        "poor": MessageLookupByLibrary.simpleMessage("Povero"),
        "popular": MessageLookupByLibrary.simpleMessage("Popolare"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popolarità"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Questo indirizzo verrà salvato sul tuo dispositivo locale. NON è l\'indirizzo dell\'utente."),
        "postContent": MessageLookupByLibrary.simpleMessage("Soddisfare"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Impossibile creare il tuo post"),
        "postImageFeature": MessageLookupByLibrary.simpleMessage(
            "Caratteristica dell\'immagine"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Post Management"),
        "postProduct":
            MessageLookupByLibrary.simpleMessage("Pubblica prodotto"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Il tuo post è stato creato con successo"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Titolo"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Prepagato"),
        "prev": MessageLookupByLibrary.simpleMessage("Precedente"),
        "preview": MessageLookupByLibrary.simpleMessage("Anteprima"),
        "price": MessageLookupByLibrary.simpleMessage("prezzo"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Prezzo: da alto a basso"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Prezzo: da basso ad alto"),
        "prices": MessageLookupByLibrary.simpleMessage("Menu"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("STAMPA RICEVUTA"),
        "printer": MessageLookupByLibrary.simpleMessage("stampante"),
        "printerNotFound": MessageLookupByLibrary.simpleMessage(
            "La stampante non è stata trovata"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Selezione della stampante"),
        "printing": MessageLookupByLibrary.simpleMessage("Stampa..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Privacy e termini"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("POLITICA SULLA RISERVATEZZA"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Termini e Condizioni"),
        "private": MessageLookupByLibrary.simpleMessage("privato"),
        "processing": MessageLookupByLibrary.simpleMessage("In lavorazione..."),
        "product": MessageLookupByLibrary.simpleMessage("Prodotto"),
        "productAddToCart": m36,
        "productAdded": MessageLookupByLibrary.simpleMessage(
            "Il prodotto è stato aggiunto"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Il tuo prodotto verrà visualizzato dopo la revisione."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Siamo spiacenti, non è possibile accedere a questo prodotto perché è scaduto."),
        "productName":
            MessageLookupByLibrary.simpleMessage("Nome del prodotto"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Il nome del prodotto non può essere vuoto"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "La variabile del tipo di prodotto richiede almeno una variante"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Il tipo di prodotto semplice richiede il nome e il prezzo normale"),
        "productOutOfStock":
            MessageLookupByLibrary.simpleMessage("Questo prodotto è esaurito"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Panoramica del prodotto"),
        "productRating":
            MessageLookupByLibrary.simpleMessage("La tua valutazione"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Recensione del prodotto"),
        "productType":
            MessageLookupByLibrary.simpleMessage("Tipologia di prodotto"),
        "products": MessageLookupByLibrary.simpleMessage("Prodotti"),
        "promptPayID":
            MessageLookupByLibrary.simpleMessage("ID pagamento rapido:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("Nome pagamento rapido:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Tipo di pagamento rapido:"),
        "publish": MessageLookupByLibrary.simpleMessage("pubblicare"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Tirare per caricare di più"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Il codice QR è stato salvato con successo."),
        "qRCodeSaveFailure": MessageLookupByLibrary.simpleMessage(
            "Impossibile salvare il codice QR"),
        "qty": MessageLookupByLibrary.simpleMessage("Quantità"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Quantità"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "La quantità corrente è superiore alla quantità in magazzino"),
        "random": MessageLookupByLibrary.simpleMessage("Casuale"),
        "rate": MessageLookupByLibrary.simpleMessage("Valuta"),
        "rateProduct":
            MessageLookupByLibrary.simpleMessage("Valuta il prodotto"),
        "rateTheApp": MessageLookupByLibrary.simpleMessage("Valuta l\'app"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Valuta la nostra app"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Se ti piace la nostra app, saremmo felici di ricevere una tua valutazione."),
        "rating": MessageLookupByLibrary.simpleMessage("Valutazione"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Per favore lascia una recensione prima di inviare un commento"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Riordina"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Recensioni"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("In attesa di consegna"),
        "receivedMoney":
            MessageLookupByLibrary.simpleMessage("Ricevuto denaro"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("ricevitore"),
        "recent": MessageLookupByLibrary.simpleMessage("Recenti"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Ricerche recenti"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("La tua vista recente"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("visualizzato recentemente"),
        "recommended": MessageLookupByLibrary.simpleMessage("Consigliato"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Totali ricorrenti"),
        "refresh": MessageLookupByLibrary.simpleMessage("Aggiorna"),
        "refund": MessageLookupByLibrary.simpleMessage("Rimborso"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "La richiesta di rimborso per l\'ordine non è andata a buon fine"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Richiedi un rimborso per il tuo ordine con successo!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Richiesta rimborso"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Rimborso richiesto"),
        "refunds": MessageLookupByLibrary.simpleMessage("Rimborsi"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Rigenera la risposta"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Registrati come"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Register as Vendor user"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Impossibile sincronizzare l\'account. Accedi per continuare."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Registrazione fallita"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "La richiesta non è valida o è scaduta. Riprova."),
        "registerSuccess": MessageLookupByLibrary.simpleMessage(
            "Registrazione effettuata con successo"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("PREZZO REGOLARE"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Cose che potresti amare"),
        "releaseToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Rilasciare per caricare di più"),
        "remove": MessageLookupByLibrary.simpleMessage("Rimuovi"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Rimuovi da WishList"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Richiedi prenotazione"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Hai richiesto troppi codici in poco tempo. Per favore riprova più tardi."),
        "resend": MessageLookupByLibrary.simpleMessage(" RIPROVA"),
        "reset": MessageLookupByLibrary.simpleMessage("Azzera"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Reimposta password"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Reimposta la tua password"),
        "results": MessageLookupByLibrary.simpleMessage("risultati"),
        "retry": MessageLookupByLibrary.simpleMessage("Riprova"),
        "review": MessageLookupByLibrary.simpleMessage("Riepilogo"),
        "reviewApproval": MessageLookupByLibrary.simpleMessage(
            "Approvazione della recensione"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "La tua recensione è stata inviata ed è in attesa di approvazione!"),
        "reviewSent": MessageLookupByLibrary.simpleMessage(
            "La tua recensione è stata inviata!"),
        "reviews": MessageLookupByLibrary.simpleMessage("recensioni"),
        "romanian": MessageLookupByLibrary.simpleMessage("Rumeno"),
        "russian": MessageLookupByLibrary.simpleMessage("Russian"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Prezzo di vendita"),
        "saturday": MessageLookupByLibrary.simpleMessage("Sabato"),
        "save": MessageLookupByLibrary.simpleMessage("Salva"),
        "saveAddress":
            MessageLookupByLibrary.simpleMessage("Salva l\'indirizzo"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Il tuo indirizzo esiste nel tuo locale"),
        "saveForLater": MessageLookupByLibrary.simpleMessage("Salva per dopo"),
        "saveQRCode":
            MessageLookupByLibrary.simpleMessage("Salva il codice QR"),
        "saveToWishList": MessageLookupByLibrary.simpleMessage(
            "Salva nella Lista dei Desideri"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Questo elemento non può essere scansionato"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Per scansionare un ordine, devi prima effettuare il login"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Questo ordine non è disponibile per il tuo account"),
        "search": MessageLookupByLibrary.simpleMessage("Cerca"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Cerca per nome del paese o prefisso"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Cerca con nome..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Ops! Sembra che nessun risultato corrisponda ai tuoi criteri di ricerca"),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Cerca Articoli"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Si prega di scrivere nel campo di ricerca"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("ID ordine di ricerca ..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Search Place"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Ricerca indirizzo"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Vedi Tutti"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Continua a vedere nuovi contenuti sulla tua app."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Vedi ordine"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Vedi recensioni"),
        "select": MessageLookupByLibrary.simpleMessage("Seleziona"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("Seleziona dai salvati"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Seleziona tutto"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Seleziona date"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Seleziona file annullato!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Seleziona immagine"),
        "selectNone":
            MessageLookupByLibrary.simpleMessage("Non hai selezionato niente"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Seleziona stampante"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Seleziona ruolo"),
        "selectStore":
            MessageLookupByLibrary.simpleMessage("seleziona negozio"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Seleziona il colore"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Seleziona il file"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Select the point"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Seleziona la quantità"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Seleziona la misura"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Seleziona il buono"),
        "send": MessageLookupByLibrary.simpleMessage("inviare"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Torna indietro"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Ottieni codice"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Invia SMS al proprietario del negozio"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "L\'account su cui vuoi effettuare il trasferimento (e-mail)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Separa più indirizzi email con una virgola."),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbo"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sessione scaduta"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Si prega di impostare un indirizzo nella pagina delle impostazioni"),
        "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "setup": MessageLookupByLibrary.simpleMessage("Impostare"),
        "share": MessageLookupByLibrary.simpleMessage("Condividi"),
        "shipped": MessageLookupByLibrary.simpleMessage("Spedito"),
        "shipping": MessageLookupByLibrary.simpleMessage("Spedizione"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Indirizzo di Spedizione"),
        "shippingFee":
            MessageLookupByLibrary.simpleMessage("Spese di spedizione"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Metodo di Spedizione"),
        "shop": MessageLookupByLibrary.simpleMessage("Negozio"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Email del negozio"),
        "shopName": MessageLookupByLibrary.simpleMessage("nome del negozio"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Ordini di acquisto"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Telefono del negozio"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Acquista lumaca"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Breve descrizione"),
        "showAllMyOrdered": MessageLookupByLibrary.simpleMessage(
            "Mostrami tutto quanto ordinato"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Mostra dettagli"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Mostra galleria"),
        "showLess": MessageLookupByLibrary.simpleMessage("Mostra meno"),
        "showMore": MessageLookupByLibrary.simpleMessage("Mostra di più"),
        "signIn": MessageLookupByLibrary.simpleMessage("Accedi"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Accedi con email"),
        "signUp": MessageLookupByLibrary.simpleMessage("Iscriviti"),
        "signup": MessageLookupByLibrary.simpleMessage("Registrati"),
        "simple": MessageLookupByLibrary.simpleMessage("Semplice"),
        "size": MessageLookupByLibrary.simpleMessage("Misura"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Guida alle taglie"),
        "skip": MessageLookupByLibrary.simpleMessage("Ignora"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("Slovacco"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "Il codice SMS è scaduto. Si prega di inviare nuovamente il codice di verifica per riprovare."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Venduto da"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Qualcosa è andato storto. Per favore riprova più tardi."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Ordina per"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Ordina codice"),
        "spanish": MessageLookupByLibrary.simpleMessage("Spagnolo"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Discorso non disponibile"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Inizia a esplorare"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Inizia lo Shopping"),
        "state": MessageLookupByLibrary.simpleMessage("stato"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesta la "),
        "stateProvince": MessageLookupByLibrary.simpleMessage("Provincia"),
        "status": MessageLookupByLibrary.simpleMessage("Stato"),
        "stock": MessageLookupByLibrary.simpleMessage("Azione"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Quantità di riserva"),
        "stop": MessageLookupByLibrary.simpleMessage("Stop"),
        "store": MessageLookupByLibrary.simpleMessage("Memorizzare"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Indirizzo del negozio"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("bandiera"),
        "storeBrand":
            MessageLookupByLibrary.simpleMessage("Marchio del negozio"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("Il negozio ora è chiuso"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Email del negozio"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Informazione di negozio"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Banner elenco negozi"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Posizione del negozio"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Inserisci indirizzo/città"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Logo del negozio"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Store Mobile Banner"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Impostazioni del negozio"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Store Slider Banner"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Store Static Banner"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Vacanze in negozio"),
        "stores": MessageLookupByLibrary.simpleMessage("I negozi"),
        "street": MessageLookupByLibrary.simpleMessage("strada"),
        "street2": MessageLookupByLibrary.simpleMessage("Strada numero 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesta la "),
        "streetName": MessageLookupByLibrary.simpleMessage("Via"),
        "streetNameApartment": MessageLookupByLibrary.simpleMessage("Varie"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Presso"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Grazie per il tuo ordine. Stiamo lavorando rapidamente per elaborare il tuo ordine. Resta sintonizzato per ricevere a breve un\'e-mail di conferma"),
        "submit": MessageLookupByLibrary.simpleMessage("Sottoscrivi"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Invia il tuo post"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotale"),
        "sunday": MessageLookupByLibrary.simpleMessage("Domenica"),
        "support": MessageLookupByLibrary.simpleMessage("Supporto"),
        "swahili": MessageLookupByLibrary.simpleMessage("Swahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("svedese"),
        "tag": MessageLookupByLibrary.simpleMessage("Etichetta"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Questo tag non esiste"),
        "tags": MessageLookupByLibrary.simpleMessage("Tag"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Fare una foto"),
        "tamil": MessageLookupByLibrary.simpleMessage("tamil"),
        "tapSelectLocation":
            MessageLookupByLibrary.simpleMessage("Tap to select this location"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Tocca il microfono per parlare"),
        "tax": MessageLookupByLibrary.simpleMessage("IVA"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("Portafoglio Tera"),
        "terrible": MessageLookupByLibrary.simpleMessage("Terribile"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Questa data non è disponibile"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Questa funzione non supporta la lingua corrente"),
        "thisIsCustomerRole": MessageLookupByLibrary.simpleMessage(
            "Questo è il ruolo del cliente"),
        "thisIsVendorRole": MessageLookupByLibrary.simpleMessage(
            "Questo è il ruolo del venditore"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "This platform is not support for webview"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Questo prodotto non è supporto"),
        "thursday": MessageLookupByLibrary.simpleMessage("Giovedì"),
        "tickets": MessageLookupByLibrary.simpleMessage("biglietti"),
        "time": MessageLookupByLibrary.simpleMessage("tempo"),
        "title": MessageLookupByLibrary.simpleMessage("Titolo"),
        "titleAToZ":
            MessageLookupByLibrary.simpleMessage("Titolo: dalla A alla Z"),
        "titleZToA":
            MessageLookupByLibrary.simpleMessage("Titolo: dalla Z alla A"),
        "to": MessageLookupByLibrary.simpleMessage("a"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Troppi tentativi di accesso non riusciti. Per favore riprova più tardi."),
        "topUp": MessageLookupByLibrary.simpleMessage("Riempire"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Ricarica prodotto non trovato"),
        "total": MessageLookupByLibrary.simpleMessage("Totale"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Total order\'s value must be at least"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Prezzo totale"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("IVA"),
        "trackingNumberIs": MessageLookupByLibrary.simpleMessage(
            "Il numero di tracking della spedizione è"),
        "trackingPage": MessageLookupByLibrary.simpleMessage(
            "Pagina di tracking della spedizione"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transazione annullata"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("dettagli della transazione"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("Transazione fallita"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("transazione fallita"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Costo della transazione"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Risultato della transazione"),
        "transfer": MessageLookupByLibrary.simpleMessage("Trasferimento"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Conferma del trasferimento"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Non puoi trasferire a questo utente"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Trasferimento non riuscito"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Trasferimento riuscito"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Martedì"),
        "turkish": MessageLookupByLibrary.simpleMessage("Turca"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Attiva Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Scrivi un messaggio..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Scrivi qui il tuo messaggio..."),
        "typing": MessageLookupByLibrary.simpleMessage("Digitando..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("ucraino"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Non disponibile"),
        "unblock": MessageLookupByLibrary.simpleMessage("Sbloccare"),
        "unblockUser": MessageLookupByLibrary.simpleMessage("Sblocca utente"),
        "undo": MessageLookupByLibrary.simpleMessage("Annulla"),
        "unpaid": MessageLookupByLibrary.simpleMessage("non pagato"),
        "update": MessageLookupByLibrary.simpleMessage("Aggiorna"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Aggiornamento non riuscito!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Aggiornare le informazioni"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Aggiorna Password"),
        "updateStatus": MessageLookupByLibrary.simpleMessage("Aggiorna stato"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Aggiorna con successo!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Aggiorna profilo"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Caricare un file"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Carica immagine"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Carica prodotto"),
        "uploading": MessageLookupByLibrary.simpleMessage("Caricamento"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Usalo ora"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Usa questa immagine"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Questo nome utente/e-mail non è disponibile."),
        "userHasBeenBlocked":
            MessageLookupByLibrary.simpleMessage("L\'utente è stato bloccato"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "L\'username o la password non sono corretti."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "L\'utente non è stato trovato"),
        "username": MessageLookupByLibrary.simpleMessage("Nome utente"),
        "usernameAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Nome utente già in uso!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Sono richiesti nome utente e password"),
        "usernameInvalid":
            MessageLookupByLibrary.simpleMessage("Il nome utente non è valido"),
        "usernameIsRequired":
            MessageLookupByLibrary.simpleMessage("è richiesto il nome utente"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Messaggio di vacanza"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Tipo di vacanza"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variabile"),
        "variation": MessageLookupByLibrary.simpleMessage("Variazione"),
        "vendor": MessageLookupByLibrary.simpleMessage("venditore"),
        "vendorAdmin": MessageLookupByLibrary.simpleMessage("Vendor Admin"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Informazioni sul venditore"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Codice di verifica (6 cifre)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Verifica"),
        "viaWallet":
            MessageLookupByLibrary.simpleMessage("Tramite portafoglio"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("vietnamita"),
        "view": MessageLookupByLibrary.simpleMessage("vista"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Vedi il carrello"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Vedi dettagli"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Vedi di più"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Visualizza su Google Maps"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Visualizza ordine"),
        "viewRecentTransactions": MessageLookupByLibrary.simpleMessage(
            "Visualizza le transazioni recenti"),
        "visible": MessageLookupByLibrary.simpleMessage("Visibile"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Visita il negozio"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "In attesa del caricamento dell\'immagine"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("In attesa di post prodotto"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("In attesa di conferma"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Saldo del portafoglio"),
        "walletBalanceWithValue": m51,
        "walletName": MessageLookupByLibrary.simpleMessage("Nome portafoglio"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Abbiamo trovato blog"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Abbiamo bisogno dell\'accesso alla fotocamera per scansionare il codice QR o il codice a barre."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "È stato inviato un codice di autenticazione a"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Ci piacerebbe inviarti notifiche per aggiornarti sulle ultime offerte e sulle novità più importanti. Puoi disattivare le notifiche in qualsiasi momento dalle impostazioni del tuo profilo."),
        "webView": MessageLookupByLibrary.simpleMessage("Visualizzazione Web"),
        "website": MessageLookupByLibrary.simpleMessage("Sito web"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Mercoledì"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Benvenuto"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Ben tornato"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Inizia subito il tuo viaggio di shopping con noi"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Quale lingua preferisci?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Contatta l\'amministratore per approvare la tua registrazione."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "Non potrai inviare o ricevere messaggi da questo utente."),
        "withdrawAmount":
            MessageLookupByLibrary.simpleMessage("Prelevare l\'importo"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Richiesta di ritiro"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Ritiro"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Collezione Donna"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Lascia un commento"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Scrivi una nota"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Si"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Puoi acquistare solo da un singolo negozio."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Puoi solo acquistare"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Non hai l\'autorizzazione per creare un post"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Hai salvato l\'indirizzo nel tuo locale"),
        "youHaveNoPost": MessageLookupByLibrary.simpleMessage("Non hai post"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Hai \$point punti"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Potrebbe anche piacerti"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Devi effettuare il login per effettuare il checkout"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Non ti verrà chiesto la prossima volta dopo il completamento"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Il tuo account è in fase di revisione. Contatta l\'amministratore se hai bisogno di aiuto."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Il tuo indirizzo esiste nel tuo locale"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "L\'indirizzo è stato salvato nella memoria locale"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "La tua domanda è in fase di revisione."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Il tuo carrello è vuoto"),
        "yourBookingDetail": MessageLookupByLibrary.simpleMessage(
            "I dettagli della tua prenotazione"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("I tuoi guadagni questo mese"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Le tue note"),
        "yourOrderHasBeenAdded": MessageLookupByLibrary.simpleMessage(
            "Il tuo ordine è stato aggiunto"),
        "yourOrderIsConfirmed":
            MessageLookupByLibrary.simpleMessage("Il tuo ordine è confermato!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Il tuo ordine è vuoto"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Sembra che tu non abbia aggiunto alcun elemento.\nInizia a fare acquisti per compilarlo."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("I tuoi ordini"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Il tuo prodotto è in fase di revisione"),
        "yourUsernameEmail":
            MessageLookupByLibrary.simpleMessage("Il tuo nome utente o email"),
        "zipCode": MessageLookupByLibrary.simpleMessage(" Codice Postale"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("E\' richiesto il ")
      };
}
