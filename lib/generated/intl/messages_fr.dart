// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(x) => "Actif ${x}";

  static String m1(attribute) => "Tout ${attribute}";

  static String m2(point) => "Vos points disponibles: ${point}";

  static String m3(state) => "L\'adaptateur Bluetooth est ${state}";

  static String m4(author) => "Auteur : ${author}";

  static String m5(currency) => "Devise changée en ${currency}";

  static String m6(number) => " ${number} caractères restants";

  static String m7(priceRate, pointRate) =>
      "${priceRate}  =  ${pointRate} points";

  static String m8(count) => " ${count} item";

  static String m9(count) => " ${count} éléments";

  static String m10(count) => "${count} article";

  static String m11(count) => "${count}  Articles";

  static String m12(country) => "${country}  pays n\'est pas pris en charge";

  static String m13(currency) => " ${currency} n\'est pas pris en charge";

  static String m14(day) => "Il y a ${day} jours";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Termine en ${timeLeft}";

  static String m17(captcha) => "Saisissez ${captcha} pour confirmer :";

  static String m18(message) => "Erreur: ${message}";

  static String m19(message) => "Erreur :  ${message}";

  static String m20(time) => "Expire dans ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "Il y a ${hour} heures";

  static String m23(currentBalance) =>
      "Il ne vous reste que ${currentBalance} dans votre portefeuille";

  static String m24(count) =>
      " ${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m25(message) =>
      "Il y a un problème avec l\'application lors de la demande de données, veuillez contacter l\'administrateur pour résoudre les problèmes: ${message}";

  static String m26(currency, amount) =>
      "Le montant maximum pour utiliser ce paiement est de ${currency} ${amount}";

  static String m27(size) => "Taille maximale du fichier: ${size} Mo";

  static String m28(currency, amount) =>
      "Le montant minimum pour utiliser ce paiement est de ${currency} ${amount}";

  static String m29(minute) => "Il y a ${minute} minutes";

  static String m30(month) => "Il y a ${month} mois";

  static String m31(store) => "Plus de ${store}";

  static String m32(number) => "doit être acheté par groupes de ${number}";

  static String m33(itemCount) => "${itemCount} produits";

  static String m34(price) => "Total des options: ${price}";

  static String m35(amount) => "Payer ${amount}";

  static String m36(name) => "${name} ont été ajoutés au panier avec succès";

  static String m37(total) => "Qté: ${total}";

  static String m38(name) => "J\'ai reçu de l\'argent de ${name}";

  static String m39(percent) => "Remise ${percent} %";

  static String m40(keyword) => "Résultats de recherche pour : \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count}  élément)";

  static String m42(keyword, count) => "${keyword} (${count}  éléments)";

  static String m43(second) => "Il y a ${second} secondes";

  static String m44(totalCartQuantity) =>
      "Panier, ${totalCartQuantity} produits";

  static String m45(numberOfUnitsSold) => "Vendus: ${numberOfUnitsSold}";

  static String m46(fieldName) => "Le champ ${fieldName} est obligatoire";

  static String m47(total) => "${total} Produits";

  static String m48(name) => "Transférer de l\'argent à ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Utilisez un maximum de ${maxPointDiscount}  points pour bénéficier d\'une réduction de ${maxPriceDiscount}  sur cette commande !";

  static String m50(date) => "Valable jusqu\'au ${date}";

  static String m51(balance) => "Solde du portefeuille : ${balance}";

  static String m52(message) => "Notice: ${message}";

  static String m53(defaultCurrency) =>
      "La devise actuellement sélectionnée n\'est pas disponible pour la fonctionnalité Portefeuille, veuillez la remplacer par ${defaultCurrency}";

  static String m54(length) => "Nous avons trouvé ${length} produits";

  static String m55(week) => "Semaine ${week}";

  static String m56(name) => "Bienvenue ${name}";

  static String m57(year) => "Il y a ${year} ans";

  static String m58(total) => "Vous etes affecté à la commande n°${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("À propos de nous"),
        "account": MessageLookupByLibrary.simpleMessage("Compte"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("En cours d\'approbation"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "La suppression de votre compte supprime les informations personnelles de notre base de données. Votre e-mail devient définitivement réservé et le même e-mail ne peut pas être réutilisé pour enregistrer un nouveau compte."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Le compte est en attente d\'approbation."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Numéro de compte"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Configuration du compte"),
        "active": MessageLookupByLibrary.simpleMessage("actif"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Actif depuis longtemps"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Actif maintenant"),
        "addAName": MessageLookupByLibrary.simpleMessage("Ajouter un nom"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Ajouter un nouveau message"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Ajouter Slug"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Ajouter un attribut"),
        "addListing": MessageLookupByLibrary.simpleMessage("Ajouter une liste"),
        "addMessage":
            MessageLookupByLibrary.simpleMessage("Ajouter un message"),
        "addNew": MessageLookupByLibrary.simpleMessage("Ajouter nouveau"),
        "addNewAddress": MessageLookupByLibrary.simpleMessage(
            "Ajouter une nouvelle adresse"),
        "addNewBlog":
            MessageLookupByLibrary.simpleMessage("Ajouter un nouveau blog"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Créer un nouveau message"),
        "addProduct":
            MessageLookupByLibrary.simpleMessage("Ajouter un produit"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Ajouter au panier"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "La quantité maximale a été dépassée"),
        "addToCartSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ajouté au panier avec succès"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Ajouter à la commande"),
        "addToQuoteRequest": MessageLookupByLibrary.simpleMessage(
            "Ajouter à la demande de devis"),
        "addToWishlist": MessageLookupByLibrary.simpleMessage(
            "Ajouter à la liste de souhaits"),
        "added": MessageLookupByLibrary.simpleMessage("Ajoutée"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Ajouté avec succès"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Ajouter une image"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Plus d\'infos"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Services supplémentaires"),
        "address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "adults": MessageLookupByLibrary.simpleMessage("Adultes"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Après midi"),
        "agree": MessageLookupByLibrary.simpleMessage("d\'accord"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Accepter les termes"),
        "albanian": MessageLookupByLibrary.simpleMessage("albanais"),
        "all": MessageLookupByLibrary.simpleMessage("Tout"),
        "allBrands": MessageLookupByLibrary.simpleMessage("toutes les marques"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Toutes les commandes"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Dernières ventes"),
        "allProducts":
            MessageLookupByLibrary.simpleMessage("Tous les produits"),
        "allow": MessageLookupByLibrary.simpleMessage("C\'est Parfait"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "Autoriser l\'accès à la caméra ?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Presque épuisé"),
        "amazing": MessageLookupByLibrary.simpleMessage("Incroyable"),
        "amount": MessageLookupByLibrary.simpleMessage("Montant"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Apparence"),
        "apply": MessageLookupByLibrary.simpleMessage("Valider"),
        "approve": MessageLookupByLibrary.simpleMessage("Approuver"),
        "approved": MessageLookupByLibrary.simpleMessage("Approuvé"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Demandes approuvées"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabe"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Êtes-vous sûr?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir supprimer votre compte ?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir vous déconnecter?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir quitter?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Attribué"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Au moins 3 caractères..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Attribut"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("L\'attribut existe déjà"),
        "attributes": MessageLookupByLibrary.simpleMessage("Attributs"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Élément(s) audio détecté(s). Voulez-vous ajouter au lecteur audio ?"),
        "availability": MessageLookupByLibrary.simpleMessage("Disponibilité"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Disponibilité: "),
        "availablePoints": m2,
        "averageRating": MessageLookupByLibrary.simpleMessage("Note moyenne"),
        "back": MessageLookupByLibrary.simpleMessage("Retour"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Sur commande"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Revenir à la boutique"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Retour au Portefeuille"),
        "bagsCollections": MessageLookupByLibrary.simpleMessage("Collections"),
        "balance": MessageLookupByLibrary.simpleMessage("Équilibre"),
        "bank": MessageLookupByLibrary.simpleMessage("Banque"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Type de liste de bannières"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Type de bannière"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("URL Youtube de la bannière"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Informations de base"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Devenez un vendeur"),
        "bengali": MessageLookupByLibrary.simpleMessage("bengali"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Adresse de facturation"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Bluetooth n\'a pas été activé"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Bloc"),
        "blockUser":
            MessageLookupByLibrary.simpleMessage("Bloquer l\'utilisateur"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Déjà réservé"),
        "booking": MessageLookupByLibrary.simpleMessage("Réservation"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Réservation annulée"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("confirmé"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Il y a quelque chose qui ne va pas. Veuillez réessayer plus tard."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Historique de réservation"),
        "bookingNow":
            MessageLookupByLibrary.simpleMessage("Reserver maintenant"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Réservation réussie"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Résumé de la réservation"),
        "bookingUnavailable": MessageLookupByLibrary.simpleMessage(
            "La réservation n\'est pas disponible"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bosniaque"),
        "branch": MessageLookupByLibrary.simpleMessage("Branché"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Désolé, le panier sera vidé en raison du changement de région. Nous serons heureux de vous contacter si vous avez besoin d\'aide."),
        "brand": MessageLookupByLibrary.simpleMessage("Marqué"),
        "brands": MessageLookupByLibrary.simpleMessage("Marques"),
        "brazil": MessageLookupByLibrary.simpleMessage("Brésil"),
        "burmese": MessageLookupByLibrary.simpleMessage("birman"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Acheter !"),
        "by": MessageLookupByLibrary.simpleMessage("Par"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Sur rendez-vous uniquement"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Par marque"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Catégorie"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Prix"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "En vous inscrivant, vous acceptez nos"),
        "byTag": MessageLookupByLibrary.simpleMessage("Tag"),
        "call": MessageLookupByLibrary.simpleMessage("appel"),
        "callTo": MessageLookupByLibrary.simpleMessage("Passer un appel à"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Appel au propriétaire du magasin"),
        "canNotCreateOrder": MessageLookupByLibrary.simpleMessage(
            "Impossible de créer la commande"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "Impossible de créer l\'utilisateur."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'obtenir des méthodes de paiement"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'obtenir les méthodes d\'expédition"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'obtenir les informations sur le jeton."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Impossible de lancer cette application, assurez-vous que vos paramètres sur config.dart sont corrects"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "Impossible de charger ce lien"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Désolé, cette vidéo ne peut être lue."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'enregistrer la commande sur le site Web"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Impossible de mettre à jour les informations utilisateur."),
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Annulé"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Demandes annulées"),
        "cannotDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Ce compte ne peut pas être supprimé"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "Vous ne pouvez pas envoyer de messages à cet utilisateur"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Impossible de trouver cet ID de commande"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "La date dans le passé n\'est pas autorisée"),
        "cardHolder":
            MessageLookupByLibrary.simpleMessage("Titulaire de la carte"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Numéro de carte"),
        "cart": MessageLookupByLibrary.simpleMessage("Panier"),
        "cartDiscount": MessageLookupByLibrary.simpleMessage("Remise panier"),
        "cash": MessageLookupByLibrary.simpleMessage("cash"),
        "categories": MessageLookupByLibrary.simpleMessage("Catégories"),
        "category": MessageLookupByLibrary.simpleMessage("Catégorie"),
        "change": MessageLookupByLibrary.simpleMessage("Changement"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Changer de langue"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Changer d\'imprimante"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("chat"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatListScreen":
            MessageLookupByLibrary.simpleMessage("Liste des discussions"),
        "chatViaFacebook":
            MessageLookupByLibrary.simpleMessage("Via Messenger"),
        "chatViaWhatApp": MessageLookupByLibrary.simpleMessage("Via WhatsApp"),
        "chatWithBot":
            MessageLookupByLibrary.simpleMessage("Chatter avec le robot"),
        "chatWithStoreOwner":
            MessageLookupByLibrary.simpleMessage("Chatter avec le vendeur"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Vérifiez votre e-mail pour le lien de confirmation"),
        "checking": MessageLookupByLibrary.simpleMessage("Vérification..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Caisse"),
        "chinese": MessageLookupByLibrary.simpleMessage("Chinois"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Chinois simplifié)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Chinois traditionnel"),
        "chooseBranch":
            MessageLookupByLibrary.simpleMessage("Choisissez la succursale"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("choisir une catégorie"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Choisir dans la galerie"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Choisir dans le serveur"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Choisir un plan"),
        "chooseStaff":
            MessageLookupByLibrary.simpleMessage("Choisissez le personnel"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Choisir le type"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Votre mode de payement"),
        "city": MessageLookupByLibrary.simpleMessage("Ville"),
        "cityIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ ville est obligatoire"),
        "clear": MessageLookupByLibrary.simpleMessage("Effacer"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Vider le panier"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Conversation claire"),
        "close": MessageLookupByLibrary.simpleMessage("Fermer"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Fermé"),
        "closed": MessageLookupByLibrary.simpleMessage("Fermé"),
        "codExtraFee":
            MessageLookupByLibrary.simpleMessage("Frais supplémentaires COD"),
        "color": MessageLookupByLibrary.simpleMessage("Couleur"),
        "comment": MessageLookupByLibrary.simpleMessage("Commentaire"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Veuillez écrire votre commentaire"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Commentaire réussi, veuillez attendre que votre commentaire soit approuvé"),
        "complete": MessageLookupByLibrary.simpleMessage("Achevée"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Confirmer la suppression du compte"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Le panier sera vidé lors de la recharge."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir vider le panier?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir supprimer ceci? Cette action ne peut pas être annulée."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous vraiment supprimer cet élément?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmez le mot de passe"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "le champ Confirmer le mot de passe est obligatoire"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous vraiment supprimer ce produit ?"),
        "connect": MessageLookupByLibrary.simpleMessage("Connecter"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "content": MessageLookupByLibrary.simpleMessage("Contenu"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Continuer vos achats"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Vers payement"),
        "continueToReview": MessageLookupByLibrary.simpleMessage("Vers Avis"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Vers livraison"),
        "continues": MessageLookupByLibrary.simpleMessage("Continuer"),
        "conversations": MessageLookupByLibrary.simpleMessage("Conversations"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("copie"),
        "copy": MessageLookupByLibrary.simpleMessage("copie"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Tous droits réservés."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("Pays"),
        "countryCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Le code du pays est requis"),
        "countryIsNotSupported": m12,
        "countryIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ pays est obligatoire"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Code promo"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Le coupon a été enregistré avec succès."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Votre code coupon n\'est pas valide"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Félicitations! Code promo appliqué avec succès"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Créer un compte"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Votre message a bien été créé en tant que brouillon. Veuillez voir avec l\'administration."),
        "createPost":
            MessageLookupByLibrary.simpleMessage("Créer une publication"),
        "createProduct":
            MessageLookupByLibrary.simpleMessage("Créer un produit"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Merci pour votre avis"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Nous apprécions vraiment votre contribution et apprécions votre contribution pour nous aider à améliorer"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Créer toutes les variantes"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Créé en:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Devises"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe actuel"),
        "currentlyWeOnlyHave": MessageLookupByLibrary.simpleMessage(
            "En ce moment, nous n\'avons que"),
        "customer": MessageLookupByLibrary.simpleMessage("Client"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Détail du client"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Note client"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("tchèque"),
        "danish": MessageLookupByLibrary.simpleMessage("danois"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Thème sombre"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Donnée vide"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Date ascendante"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Date Reservation"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Date décroissante"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Date de fin"),
        "dateLatest":
            MessageLookupByLibrary.simpleMessage("Date : le plus récent"),
        "dateOldest":
            MessageLookupByLibrary.simpleMessage("Date : le plus ancien"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Date de départ"),
        "dateTime": MessageLookupByLibrary.simpleMessage("DATE HEURE"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Date de cloture"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Débit"),
        "decline": MessageLookupByLibrary.simpleMessage("Non, Merci"),
        "delete": MessageLookupByLibrary.simpleMessage("Effacer"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Supprimer le compte"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir supprimer votre compte ? Veuillez lire comment la suppression du compte affectera."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Compte supprimé avec succès. Votre session a expiré."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Supprimer tout"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Supprimer la conversation"),
        "delivered": MessageLookupByLibrary.simpleMessage("Livré"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Livré à"),
        "delivering": MessageLookupByLibrary.simpleMessage("Livraison"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Livreur:"),
        "deliveryDate":
            MessageLookupByLibrary.simpleMessage("Date de livraison"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("détails de livraison"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Livraison"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Pas de données.\nCette commande a été supprimée."),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir ou sélectionner le bon pour votre commande."),
        "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas reçu le code?"),
        "direction": MessageLookupByLibrary.simpleMessage("Direction"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Désactiver l\'achat"),
        "discount": MessageLookupByLibrary.simpleMessage("Remise"),
        "displayName": MessageLookupByLibrary.simpleMessage("Pseudo"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas encore de transactions"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous quitter une application"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Vous souhaitez partir sans donner votre avis ?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Se déconnecter?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous débloquer cet utilisateur ?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay n\'est pas pris en charge. Veuillez vérifier votre portefeuille et votre carte"),
        "done": MessageLookupByLibrary.simpleMessage("Fait"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Vous n\'avez pas de compte?"),
        "download": MessageLookupByLibrary.simpleMessage("Télécharger"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Télécharger l\'application"),
        "draft": MessageLookupByLibrary.simpleMessage("Brouillon"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Chauffeur assigné"),
        "duration": MessageLookupByLibrary.simpleMessage("Durée"),
        "dutch": MessageLookupByLibrary.simpleMessage("Néerlandais"),
        "earnings": MessageLookupByLibrary.simpleMessage("Gains"),
        "edit": MessageLookupByLibrary.simpleMessage("Modifier:"),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Modifier les informations produit"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("modifier"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egypte"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAddressInvalid": MessageLookupByLibrary.simpleMessage(
            "L\'adresse e-mail n\'est pas valide"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Email déjà utilisé !"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "La suppression de votre compte vous désabonnera du flux diffusion."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "Le compte de messagerie que vous avez entré n\'existe pas. Veuillez réessayer."),
        "emailIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ email est obligatoire"),
        "emailSubscription": MessageLookupByLibrary.simpleMessage(
            "s\'inscrir par courrier électronique"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Il semble que vous n\'ayez pas encore effectué de réservation.\nCommencez à explorer et effectuez votre première réservation !"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Panier vide"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "On dirait que vous n\'avez encore ajouté aucun article au panier. Commencer vos achats pour le remplir."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Oops! Votre panier semble un peu léger.\n\nPrêt à acheter quelque chose de fabuleux ?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Votre commentaire ne peut pas être vide"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas encore cherché d\'articles. Commençons maintenant - nous vous aiderons."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Il n\'y a pas d\'options d\'expédition disponibles. Veuillez vous assurer que votre adresse a été saisie correctement ou contactez-nous si vous avez besoin d\'aide."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "Le nom d\'utilisateur / e-mail est vide"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Liste de souhaits vide"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Appuyez sur n\'importe quel cœur à côté d\'un produit pour le mettre aux favoris. Nous les enregistrerons pour vous ici!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Votre liste de souhaits est actuellement vide.\nCommencez à ajouter des produits maintenant !"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Activer pour le paiement"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Activer pour la connexion"),
        "enableForWallet": MessageLookupByLibrary.simpleMessage(
            "Activer pour le portefeuille"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Activer le mode vacances"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner une date après la première date"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Anglais"),
        "enterAmount":
            MessageLookupByLibrary.simpleMessage("Entrer le montant"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Saisissez une adresse e-mail pour chaque destinataire"),
        "enterSentCode":
            MessageLookupByLibrary.simpleMessage("Entrez le code envoyé à"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Entrer le code du bon"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Entrez votre email"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Entrez votre email ou nom d\'utilisateur"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Entrez votre prénom"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Entrez votre nom"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Entrez s\'il vous plaît votre num Téléphone"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Entrez votre mot de passe"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Entrez votre numéro de téléphone pour commencer."),
        "enterYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Entrez votre num Téléphone"),
        "enterYourUsername": MessageLookupByLibrary.simpleMessage(
            "Entrez votre nom d\'utilisateur"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Le montant saisi est supérieur au montant actuel du portefeuille. Veuillez réessayer!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "S\'il vous plaît, mettez une adresse email valide."),
        "errorMsg": m19,
        "errorOnGettingPost": MessageLookupByLibrary.simpleMessage(
            "Erreur lors de la réception du message !"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir un mot de passe d\'au moins 8 caractères"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Erreur"),
        "evening": MessageLookupByLibrary.simpleMessage("soir"),
        "events": MessageLookupByLibrary.simpleMessage("Evénements"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Date de livraison prévue"),
        "expired": MessageLookupByLibrary.simpleMessage("EXPIRÉ"),
        "expiredDate":
            MessageLookupByLibrary.simpleMessage("Date d\'expiration"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM / AA"),
        "expiringInTime": m20,
        "exploreNow":
            MessageLookupByLibrary.simpleMessage("Explorez maintenant"),
        "external": MessageLookupByLibrary.simpleMessage("Externe"),
        "extraServices": MessageLookupByLibrary.simpleMessage("Services Extra"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "Échec de l\'attribution de l\'utilisateur"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "Impossible de générer le lien"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Échec du chargement de la configuration de l\'application. Veuillez réessayer ou redémarrer votre application."),
        "failedToLoadImage": MessageLookupByLibrary.simpleMessage(
            "Échec du chargement de l\'image"),
        "fair": MessageLookupByLibrary.simpleMessage("Juste"),
        "favorite": MessageLookupByLibrary.simpleMessage("Préféré"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Fonctionnalité non disponible"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Produits vedettes"),
        "featured": MessageLookupByLibrary.simpleMessage("Vedette"),
        "features": MessageLookupByLibrary.simpleMessage("Caractéristiques"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Le fichier est trop volumineux. Veuillez choisir un fichier plus petit!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Le téléchargement du fichier a échoué!"),
        "files": MessageLookupByLibrary.simpleMessage("Dossiers"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtre"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Empreintes digitales, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Terminer la configuration"),
        "finnish": MessageLookupByLibrary.simpleMessage("finlandais"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Soyez le premier à commenter cet article !"),
        "firstName": MessageLookupByLibrary.simpleMessage("Prénom"),
        "firstNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ prénom est obligatoire"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Premier renouvellement"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Remise sur panier fixe"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Remise sur produit fixe"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("Pour ce produit"),
        "free": MessageLookupByLibrary.simpleMessage("Gratuit"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Gratuit"),
        "french": MessageLookupByLibrary.simpleMessage("French"),
        "friday": MessageLookupByLibrary.simpleMessage("Vendredi"),
        "from": MessageLookupByLibrary.simpleMessage("De:"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nom complet"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galerie"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Réglage général"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Génération du lien..."),
        "german": MessageLookupByLibrary.simpleMessage("allemand"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Obtenir des notifications"),
        "getNotified":
            MessageLookupByLibrary.simpleMessage("Recevez une notification!"),
        "getPasswordLink": MessageLookupByLibrary.simpleMessage(
            "Obtenir le lien du mot de passe"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Commencer"),
        "goBack": MessageLookupByLibrary.simpleMessage("Retourner"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Retour à la page d\'accueil"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Revenir à l\'adresse"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Revenir vers Avis"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Revenir vers Livraison"),
        "good": MessageLookupByLibrary.simpleMessage("bien"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("grec"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Ventes brutes"),
        "grouped": MessageLookupByLibrary.simpleMessage("Groupe"),
        "guests": MessageLookupByLibrary.simpleMessage("Invités"),
        "hasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("a été supprimé"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebrew"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Cacher à propos de"),
        "hideAddress":
            MessageLookupByLibrary.simpleMessage("Masquer l\'adresse"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Cacher l\'email"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Masquer la carte"),
        "hidePhone":
            MessageLookupByLibrary.simpleMessage("Masquer le téléphone"),
        "hidePolicy":
            MessageLookupByLibrary.simpleMessage("Masquer la politique"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Historique"),
        "historyTransaction":
            MessageLookupByLibrary.simpleMessage("Historique transactions"),
        "home": MessageLookupByLibrary.simpleMessage("Accueil"),
        "hour": MessageLookupByLibrary.simpleMessage("Heure"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("hongrois"),
        "hungary": MessageLookupByLibrary.simpleMessage("Hungary"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Je suis d\'accord"),
        "imIn": MessageLookupByLibrary.simpleMessage("j\'en suis"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Fonction d\'image"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("Galerie d\'images"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("Génération d\'images"),
        "imageNetwork":
            MessageLookupByLibrary.simpleMessage("Réseau d\'images"),
        "inStock": MessageLookupByLibrary.simpleMessage("En stock"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe incorrect"),
        "india": MessageLookupByLibrary.simpleMessage("Hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indonesiana"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Tableau d\'informations"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Veuillez installer le plugin DIGITS : inscription et connexion au numéro de téléphone mobile Wordpress"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Fermé instantanément"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Num téléphone invalide"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Code de vérification SMS non valide"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Année de naissance invalide"),
        "invoice": MessageLookupByLibrary.simpleMessage("Facture d\'achat"),
        "isEverythingSet": MessageLookupByLibrary.simpleMessage(
            "Est-ce que tout est réglé...?"),
        "isTyping":
            MessageLookupByLibrary.simpleMessage("est en train d\'écrire..."),
        "italian": MessageLookupByLibrary.simpleMessage("italien"),
        "item": MessageLookupByLibrary.simpleMessage("article"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Total article:"),
        "items": MessageLookupByLibrary.simpleMessage("Articles"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage("C\'est commandé!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Je veux créer un compte"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonais"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Garder"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("coréen"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdish"),
        "language": MessageLookupByLibrary.simpleMessage("Langue"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "La langue a bien été mise à jour"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Nom"),
        "lastNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ nom est obligatoire"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Dernières transactions"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Derniers produits"),
        "layout": MessageLookupByLibrary.simpleMessage("Disposition"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Thème clair"),
        "link": MessageLookupByLibrary.simpleMessage("Lien"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Type de bannière liste"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Vidéo de la bannière liste"),
        "listMessages": MessageLookupByLibrary.simpleMessage("Notifications"),
        "listening": MessageLookupByLibrary.simpleMessage("Écoute..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Échec du chargement!"),
        "loading": MessageLookupByLibrary.simpleMessage("Chargem..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Chargement du lien..."),
        "location": MessageLookupByLibrary.simpleMessage("Emplacement"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Verrouiller l\'écran et la sécurité"),
        "login": MessageLookupByLibrary.simpleMessage("Connexion"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("La connexion est annulée"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Échec de la connexion!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Vous n\'êtes pas autorisé à utiliser cette application."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Connectez-vous avec succès!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Veuillez vous connecter pour commenter"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Merci de vous connecter pour continuer"),
        "loginToReview": MessageLookupByLibrary.simpleMessage(
            "Veuillez vous connecter pour examiner"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Connecter à votre compte"),
        "logout": MessageLookupByLibrary.simpleMessage("Déconnexion"),
        "malay": MessageLookupByLibrary.simpleMessage("malais"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Collection Homme"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Gérer la clé API"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Gérer le stock"),
        "map": MessageLookupByLibrary.simpleMessage("Carte"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Marquer comme lu"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Marquer comme expédié"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Marquer comme non lu"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater":
            MessageLookupByLibrary.simpleMessage("Peut-être plus tard"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Ordre des menus"),
        "menus": MessageLookupByLibrary.simpleMessage("Les menus"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "messageTo":
            MessageLookupByLibrary.simpleMessage("Envoyer un message à"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("La quantité minimale est"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Mobile"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("Le mobile est requis"),
        "mobileNumberInUse": MessageLookupByLibrary.simpleMessage(
            "Numéro de portable déjà utilisé !"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Vérification mobile"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("il y a un moment"),
        "monday": MessageLookupByLibrary.simpleMessage("Lundi"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...plus"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Plus d\'information"),
        "morning": MessageLookupByLibrary.simpleMessage("Matin"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem": MessageLookupByLibrary.simpleMessage(
            "Doit sélectionner un élément"),
        "myCart": MessageLookupByLibrary.simpleMessage("Mon panier"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Ma commande"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Mes points"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Mes Produits"),
        "myProductsEmpty":
            MessageLookupByLibrary.simpleMessage("Aucun produit"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Mon portefeuille"),
        "myWishList": MessageLookupByLibrary.simpleMessage("Mes favoris"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Prénom"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Nom sur carte"),
        "nearbyPlaces":
            MessageLookupByLibrary.simpleMessage("Lieux à proximité"),
        "needHelp": MessageLookupByLibrary.simpleMessage("Besoin d\'aide?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Vous devez vous reconnecter pour effectuer la mise à jour"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Pays-Bas"),
        "newAppConfig": MessageLookupByLibrary.simpleMessage(
            "Nouveau contenu disponible !"),
        "newPassword":
            MessageLookupByLibrary.simpleMessage("Nouveau mot de passe"),
        "newVariation":
            MessageLookupByLibrary.simpleMessage("Nouvelle variante"),
        "next": MessageLookupByLibrary.simpleMessage("Suivant"),
        "niceName": MessageLookupByLibrary.simpleMessage("Nice name"),
        "no": MessageLookupByLibrary.simpleMessage("non"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Aucune adresse n\'a encore été enregistrée."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Aucun élément de l\'historique de retour"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Opps, le blog ne semble plus exister"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Aucune autorisation de caméra n\'est accordée. Veuillez l\'accorder dans les paramètres de votre appareil."),
        "noComments": MessageLookupByLibrary.simpleMessage("Sans commentaires"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Pas encore de conversation"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Il apparaîtra lorsque quelqu\'un commencera à discuter avec vous"),
        "noData": MessageLookupByLibrary.simpleMessage("Pas de données"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Pas encore de favoris."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Aucun fichier à télécharger."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Aucun élément d\'historique de transfert"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Pas de connexion Internet"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("Aucune annonce à proximité!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Aucune commande"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "Aucun moyen de paiement n\'est disponible."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Désolé, ce produit n\'est pas accessible pour votre rôle actuel."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Ce produit est disponible pour les utilisateurs avec des rôles spécifiques. Veuillez vous connecter avec les informations d\'identification appropriées pour accéder à ce produit ou contactez-nous pour plus d\'informations."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Veuillez vous connecter avec les informations d\'identification appropriées pour accéder à ce produit ou contactez-nous pour plus d\'informations."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Opps, cette page ne semble plus exister!"),
        "noPrinters":
            MessageLookupByLibrary.simpleMessage("Pas d\'imprimantes"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Aucun produit"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Aucun résultat trouvé"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Aucun avis"),
        "noSlotAvailable": MessageLookupByLibrary.simpleMessage(
            "Aucun emplacement disponible"),
        "noStoreNearby": MessageLookupByLibrary.simpleMessage(
            "Pas de magasin à proximité !"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Il n\'y a aucune suggestion"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Non merci"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Désolé, aucune transaction n\'a été trouvée !"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Désolé, aucune vidéo trouvée."),
        "none": MessageLookupByLibrary.simpleMessage("Aucun"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Désolé, nous n\'avons trouvé aucun résultat."),
        "notFound": MessageLookupByLibrary.simpleMessage("Introuvable"),
        "notRated": MessageLookupByLibrary.simpleMessage("Non classé"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Remarque"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Remarque (facultatif)"),
        "notice": MessageLookupByLibrary.simpleMessage("Note"),
        "notifications":
            MessageLookupByLibrary.simpleMessage("Les notifications"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Recevez les dernières offres et les ventes flash!"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("Pour ce produit"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "on": MessageLookupByLibrary.simpleMessage("sur"),
        "onSale": MessageLookupByLibrary.simpleMessage("Promo!"),
        "onVacation": MessageLookupByLibrary.simpleMessage("En vacances"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 à chaque destinataire"),
        "online": MessageLookupByLibrary.simpleMessage("En ligne"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Ouvert 24h"),
        "openMap": MessageLookupByLibrary.simpleMessage("CARTE OUVERTE"),
        "openNow": MessageLookupByLibrary.simpleMessage("Ouvrert"),
        "openingHours":
            MessageLookupByLibrary.simpleMessage("Heures d\'ouverture"),
        "optional": MessageLookupByLibrary.simpleMessage("Optionnel"),
        "options": MessageLookupByLibrary.simpleMessage("Les options"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("OU"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("ou connectez-vous avec"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("confirmation de commande"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de créer la commande ?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Date de commande"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Détails de la commande"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Historique des commandes"),
        "orderId": MessageLookupByLibrary.simpleMessage("Numéro Commande:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("numéro de commande"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Commande No."),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Notes"),
        "orderNumber":
            MessageLookupByLibrary.simpleMessage("numéro de commande"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Reprise annulé"),
        "orderStatusCancelled": MessageLookupByLibrary.simpleMessage("Annulé"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Refacturation"),
        "orderStatusCompleted": MessageLookupByLibrary.simpleMessage("Terminé"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Refusé"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("EXPIRÉ"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Échec"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("En attente"),
        "orderStatusPending":
            MessageLookupByLibrary.simpleMessage("En attente"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Paiement en attente"),
        "orderStatusProcessed": MessageLookupByLibrary.simpleMessage("Traité"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Traitement"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Remboursée"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("Renversé"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("expédié"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Annulé"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez vérifier le statut de votre commande en utilisant notre fonction de statut de livraison. Vous recevrez un e-mail de confirmation de commande avec les détails de votre commande et un lien pour suivre sa progression."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez vous connecter à votre compte à l\'aide de l\'e-mail et du mot de passe définis précédemment. Sur votre compte, vous pouvez modifier vos données de profil, consulter l\'historique des transactions, modifier l\'abonnement à la newsletter."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Vous avez passé la commande avec succès"),
        "orderSuccessTitle2":
            MessageLookupByLibrary.simpleMessage("Votre compte"),
        "orderSummary": MessageLookupByLibrary.simpleMessage(
            "Récapitulatif de la commande"),
        "orderTotal":
            MessageLookupByLibrary.simpleMessage("TOTAL DE LA COMMANDE"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Suivi de commande"),
        "orders": MessageLookupByLibrary.simpleMessage("Commandes"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("Vérification OTP"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Nos coordonnées bancaires"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("indisponible"),
        "pageView":
            MessageLookupByLibrary.simpleMessage("Affichage de la page"),
        "paid": MessageLookupByLibrary.simpleMessage("Payé"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Statut payé"),
        "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "passwordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ du mot de passe est obligatoire"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Les mots de passe ne correspondent pas"),
        "pasteYourImageUrl": MessageLookupByLibrary.simpleMessage(
            "Collez l\'URL de votre image"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Payer par portefeuille"),
        "payNow": MessageLookupByLibrary.simpleMessage("Payez maintenant"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Payement"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Les détails du paiement ont été modifiés avec succès."),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Méthode de payement"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Ce mode de paiement n\'est pas pris en charge"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Modes de payement"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Paramètres de paiement"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("payement réussi"),
        "pending": MessageLookupByLibrary.simpleMessage("En attente"),
        "persian": MessageLookupByLibrary.simpleMessage("Persian"),
        "phone": MessageLookupByLibrary.simpleMessage("Téléphone"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("Le téléphone est vide"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Format : +213-000-00-00-00"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ téléphone est obligatoire"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Téléphone"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Vérification du num Téléphone"),
        "pickADate": MessageLookupByLibrary.simpleMessage(
            "Choisissez la date et l\'heure"),
        "picking":
            MessageLookupByLibrary.simpleMessage("En attente de livraison"),
        "placeMyOrder": MessageLookupByLibrary.simpleMessage("Commander"),
        "playAll": MessageLookupByLibrary.simpleMessage("Voir tous"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Veuillez ajouter le prix"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Veuillez accepter nos conditions"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Veuillez autoriser l\'accès à la caméra et à la galerie"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Veuillez vérifier la connexion Internet!"),
        "pleaseChooseBranch": MessageLookupByLibrary.simpleMessage(
            "Veuillez choisir une succursale"),
        "pleaseChooseCategory": MessageLookupByLibrary.simpleMessage(
            "Veuillez choisir la catégorie"),
        "pleaseEnterProductName":
            MessageLookupByLibrary.simpleMessage("SVentrer le nom du produit"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Veuillez saisir votre code"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "* Veuillez remplir correctement toutes les champs"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez augmenter ou diminuer la quantité pour continuer."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir tous les champs"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir tous les champs"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner une date de réservation"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner un lieu"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Veuillez choisir les attributs de votre produit"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner au moins une option pour chaque attribut actif"),
        "pleaseSelectImages": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner des images"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner les options requises!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Veuillez vous connecter à votre compte avant de télécharger des fichiers."),
        "point": MessageLookupByLibrary.simpleMessage("Point"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Aucune configuration de Points Remise n\'a été trouvée sur le serveur"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer le Points Remise"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Points Remise maximum"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas assez de points de réduction. Votre total Points Remise est"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Vous avez atteint le maximum de Points Remise"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "La valeur totale de la remise est supérieure au total de la facture"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "Le Points Remise est supprimé"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Le Points Remise est appliqué avec succès"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Il y a une Règle de Remise pour appliquer vos point sur votre panier"),
        "polish": MessageLookupByLibrary.simpleMessage("Polonais"),
        "poor": MessageLookupByLibrary.simpleMessage("Pauvre"),
        "popular": MessageLookupByLibrary.simpleMessage("Populaire"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularité"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Cette adresse sera enregistrée sur votre appareil local. Ce n\'est PAS l\'adresse de l\'utilisateur."),
        "postContent": MessageLookupByLibrary.simpleMessage("Contenu"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "Votre message n\'a pas pu être créé"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Fonction d\'image"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Gestion des postes"),
        "postProduct":
            MessageLookupByLibrary.simpleMessage("Poster un produit"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Votre message a été créé avec succès"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Titre"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Prépayé"),
        "prev": MessageLookupByLibrary.simpleMessage("Prec"),
        "preview": MessageLookupByLibrary.simpleMessage("Aperçu"),
        "price": MessageLookupByLibrary.simpleMessage("Prix"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Prix: décroissant"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Prix: croissant"),
        "prices": MessageLookupByLibrary.simpleMessage("Les prix"),
        "printReceipt":
            MessageLookupByLibrary.simpleMessage("Imprimer le reçu"),
        "printer": MessageLookupByLibrary.simpleMessage("Imprimante"),
        "printerNotFound": MessageLookupByLibrary.simpleMessage(
            "L\'imprimante est introuvable"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Sélection de l\'imprimante"),
        "printing": MessageLookupByLibrary.simpleMessage("Impression..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Confidentialité"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage(
            "Politique de confidentialité"),
        "privacyTerms": MessageLookupByLibrary.simpleMessage(
            "Confidentialité et modalités"),
        "private": MessageLookupByLibrary.simpleMessage("Privé"),
        "processing": MessageLookupByLibrary.simpleMessage("Traitement..."),
        "product": MessageLookupByLibrary.simpleMessage("Produit"),
        "productAddToCart": m36,
        "productAdded": MessageLookupByLibrary.simpleMessage("Produit ajouté"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Votre produit apparaîtra après examen."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Désolé, ce produit n\'est pas accessible car il a expiré."),
        "productName": MessageLookupByLibrary.simpleMessage("Nom du produit"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Le nom du produit ne peut pas être vide"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "La variable de type de produit nécessite au moins une variante"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Le type de produit simple nécessite le nom et le prix régulier"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "Ce produit est en rupture de stock"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Présentation du produit"),
        "productRating": MessageLookupByLibrary.simpleMessage("Votre note"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Évaluation du produit"),
        "productType": MessageLookupByLibrary.simpleMessage("Type de produit"),
        "products": MessageLookupByLibrary.simpleMessage("Produits"),
        "promptPayID":
            MessageLookupByLibrary.simpleMessage("Identifiant PromptPay :"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("Nom du paiement rapide :"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Type de paiement rapide :"),
        "publish": MessageLookupByLibrary.simpleMessage("Publier"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Tirer pour charger plus"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Le code QR a été enregistré avec succès."),
        "qRCodeSaveFailure": MessageLookupByLibrary.simpleMessage(
            "Échec de l\'enregistrement du code QR"),
        "qty": MessageLookupByLibrary.simpleMessage("qté"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Quantité"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "La quantité actuelle est supérieure à la quantité en stock"),
        "random": MessageLookupByLibrary.simpleMessage("Aléatoire"),
        "rate": MessageLookupByLibrary.simpleMessage("Noter"),
        "rateProduct":
            MessageLookupByLibrary.simpleMessage("Évaluer le produit"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Noter l\'application"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Noter cette application"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Si vous aimez cette application, veuillez prendre un peu de votre temps pour l\'examiner! \nCela nous aide vraiment et cela ne devrait pas vous prendre plus d\'une minute."),
        "rating": MessageLookupByLibrary.simpleMessage("évaluation"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Veuillez évaluer avant d\'envoyer votre commentaire"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Réorganiser"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Avis"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("En attente de livraison"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("Argent reçu"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("receveur"),
        "recent": MessageLookupByLibrary.simpleMessage("Récent"),
        "recentSearches": MessageLookupByLibrary.simpleMessage("Historique"),
        "recentView": MessageLookupByLibrary.simpleMessage("Vu Récement"),
        "recentlyViewed": MessageLookupByLibrary.simpleMessage("Vu récemment"),
        "recommended": MessageLookupByLibrary.simpleMessage("Conseillé"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Totaux récurrents"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualiser"),
        "refund": MessageLookupByLibrary.simpleMessage("Rembourser"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "La demande de remboursement commande a échoué"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Demande remboursement commande executée avec succès!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Demande de remboursement"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Remboursement demandé"),
        "refunds": MessageLookupByLibrary.simpleMessage("Remboursements"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Régénérer la réponse"),
        "registerAs":
            MessageLookupByLibrary.simpleMessage("S\'inscrire en tant que"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Inscription Vendeur"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Impossible de synchroniser le compte. Veuillez vous connecter pour continuer."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("L\'enregistrement a échoué"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "La demande est invalide ou a expiré. Veuillez réessayer"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Inscription avec succès"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Prix"),
        "relatedLayoutTitle": MessageLookupByLibrary.simpleMessage(
            "Choses que vous pourriez aimer"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Libérer pour charger plus"),
        "remove": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "removeFromWishList": MessageLookupByLibrary.simpleMessage(
            "Supprimer de la liste Favoris"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Demande de réservation"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Vous avez demandé trop de codes en peu de temps. Veuillez réessayer plus tard."),
        "resend": MessageLookupByLibrary.simpleMessage("RENVOYER"),
        "reset": MessageLookupByLibrary.simpleMessage("Réinitialiser"),
        "resetPassword": MessageLookupByLibrary.simpleMessage(
            "Réinitialiser le mot de passe"),
        "resetYourPassword": MessageLookupByLibrary.simpleMessage(
            "Réinitialiser votre mot de passe"),
        "results": MessageLookupByLibrary.simpleMessage("Résultats"),
        "retry": MessageLookupByLibrary.simpleMessage("Réessayez"),
        "review": MessageLookupByLibrary.simpleMessage("Avis"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Revoir l\'approbation"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Votre avis a été envoyé et est en attente d\'approbation!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Votre avis a été envoyé!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Avis"),
        "romanian": MessageLookupByLibrary.simpleMessage("roumain"),
        "russian": MessageLookupByLibrary.simpleMessage("Russian"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Prix promo"),
        "saturday": MessageLookupByLibrary.simpleMessage("samedi"),
        "save": MessageLookupByLibrary.simpleMessage("Sauvegarder"),
        "saveAddress":
            MessageLookupByLibrary.simpleMessage("Enregistrer l\'adresse"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Votre adresse existe dans votre local"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Garder pour plus tard"),
        "saveQRCode":
            MessageLookupByLibrary.simpleMessage("Enregistrer le code QR"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Enregistrer favoris"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Cet élément ne peut pas être numérisé"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Pour scanner une commande, vous devez d\'abord vous connecter"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Cette commande n\'est pas disponible pour votre compte"),
        "search": MessageLookupByLibrary.simpleMessage("Chercher"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Rechercher par nom de pays ou par indicatif"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Chercher avec le nom..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Oops! Il semble qu\'aucun résultat ne corresponde à vos critères de recherche"),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Chercher des articles"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir dans le champ de recherche"),
        "searchOrderId": MessageLookupByLibrary.simpleMessage(
            "Chercher un ID de commande ..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Chercher Endroit"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Chercher adresse"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Tout voir"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Continuez à voir de nouveaux contenus sur votre application."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Voir Commande"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Voir les avis"),
        "select": MessageLookupByLibrary.simpleMessage("Sélectionner"),
        "selectAddress": MessageLookupByLibrary.simpleMessage(
            "Choisir une adresse enregistrée"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Tout sélectionner"),
        "selectDates":
            MessageLookupByLibrary.simpleMessage("Choisir les dates"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Choix fichier annulé!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Choisir une image"),
        "selectNone":
            MessageLookupByLibrary.simpleMessage("Ne rien sélectionner"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Choisir une imprimante"),
        "selectRole":
            MessageLookupByLibrary.simpleMessage("Sélectionnez un rôle"),
        "selectStore":
            MessageLookupByLibrary.simpleMessage("Sélectionnez un magasin"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Choisir la couleur"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Sélectionnez le fichier"),
        "selectThePoint": MessageLookupByLibrary.simpleMessage("Choisir point"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Choisir la quantité"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Choisir la taille"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Sélectionnez le bon"),
        "send": MessageLookupByLibrary.simpleMessage("Envoyer"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Renvoyer"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Obtenir le code"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Envoyer un SMS au propriétaire du magasin"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "Le compte vers lequel vous souhaitez effectuer le transfert (e-mail)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Séparez plusieurs adresses e-mail par une virgule."),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbe"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("La session a expiré"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Veuillez définir une adresse dans la page des paramètres"),
        "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "setup": MessageLookupByLibrary.simpleMessage("Installation"),
        "share": MessageLookupByLibrary.simpleMessage("Partager"),
        "shipped": MessageLookupByLibrary.simpleMessage("Expédié"),
        "shipping": MessageLookupByLibrary.simpleMessage("Livraison"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Adresse de livraison"),
        "shippingFee":
            MessageLookupByLibrary.simpleMessage("Frais d\'expédition"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Méthode livraison"),
        "shop": MessageLookupByLibrary.simpleMessage("Boutique"),
        "shopEmail":
            MessageLookupByLibrary.simpleMessage("Email de la boutique"),
        "shopName": MessageLookupByLibrary.simpleMessage("nom de la boutique"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Commandes de la Boutique"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Téléphone de la boutique"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Boutique slug"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Brève description"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Afficher mes commandes"),
        "showDetails":
            MessageLookupByLibrary.simpleMessage("Afficher les détails"),
        "showGallery":
            MessageLookupByLibrary.simpleMessage("Afficher la galerie"),
        "showLess": MessageLookupByLibrary.simpleMessage("Montre moins"),
        "showMore": MessageLookupByLibrary.simpleMessage("Montre plus"),
        "signIn": MessageLookupByLibrary.simpleMessage("Connexion"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Connectez-vous par e-mail"),
        "signUp": MessageLookupByLibrary.simpleMessage("S\'inscrire"),
        "signup": MessageLookupByLibrary.simpleMessage("S\'inscrire"),
        "simple": MessageLookupByLibrary.simpleMessage("Simple"),
        "size": MessageLookupByLibrary.simpleMessage("Taille"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Guide des tailles"),
        "skip": MessageLookupByLibrary.simpleMessage("Passer"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("slovaque"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "Le code SMS a expiré. Veuillez renvoyer le code de vérification pour réessayer."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Vendu par:"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Quelque chose s\'est mal passé. Veuillez réessayer plus tard."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Trier par"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Code de tri"),
        "spanish": MessageLookupByLibrary.simpleMessage("Espagnol"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Discours non disponible"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Commencer à explorer"),
        "startShopping": MessageLookupByLibrary.simpleMessage("Acheter"),
        "state": MessageLookupByLibrary.simpleMessage("Etat"),
        "stateIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ département est obligatoire"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("Département"),
        "status": MessageLookupByLibrary.simpleMessage("Etat"),
        "stock": MessageLookupByLibrary.simpleMessage("Stock"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Quantité en stock"),
        "stop": MessageLookupByLibrary.simpleMessage("Arrêter"),
        "store": MessageLookupByLibrary.simpleMessage("La boutique"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Adresse de la boutique"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("bannière"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Marque boutique"),
        "storeClosed": MessageLookupByLibrary.simpleMessage(
            "La boutique est fermée en ce moment"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Email boutique"),
        "storeInformation": MessageLookupByLibrary.simpleMessage(
            "Informations sur la boutique"),
        "storeListBanner": MessageLookupByLibrary.simpleMessage(
            "Bannière liste des boutiques"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Emplacement boutique"),
        "storeLocatorSearchPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Entrez l\'adresse / la ville"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Logo boutique"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Bannière Télephone boutique"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Paramètres boutique"),
        "storeSliderBanner": MessageLookupByLibrary.simpleMessage(
            "Bannière de curseur boutique"),
        "storeStaticBanner": MessageLookupByLibrary.simpleMessage(
            "Stocker la bannière statique"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Vacances boutique"),
        "stores": MessageLookupByLibrary.simpleMessage("Boutiques"),
        "street": MessageLookupByLibrary.simpleMessage("rue"),
        "street2": MessageLookupByLibrary.simpleMessage("Rue # 2"),
        "streetIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ nom de la rue est obligatoire"),
        "streetName": MessageLookupByLibrary.simpleMessage("Adresse"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Appartement"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Block"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Merci pour votre commande. Nous travaillons rapidement pour traiter votre commande. Restez à l\'écoute pour un e-mail de confirmation sous peu"),
        "submit": MessageLookupByLibrary.simpleMessage("Valider"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Soumettez votre message"),
        "subtotal": MessageLookupByLibrary.simpleMessage("sous-total"),
        "sunday": MessageLookupByLibrary.simpleMessage("dimanche"),
        "support": MessageLookupByLibrary.simpleMessage("Soutien"),
        "swahili": MessageLookupByLibrary.simpleMessage("Swahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("suédois"),
        "tag": MessageLookupByLibrary.simpleMessage("Étiqueter"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Cette balise n\'existe pas"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "takePicture":
            MessageLookupByLibrary.simpleMessage("PRENDRE UNE PHOTO"),
        "tamil": MessageLookupByLibrary.simpleMessage("tamil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Appuyez pour sélectionner cet emplacement"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Appuyez sur le micro pour parler"),
        "tax": MessageLookupByLibrary.simpleMessage("Impôt"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("Portefeuille Tera"),
        "terrible": MessageLookupByLibrary.simpleMessage("terrible"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Cette date n\'est pas disponible"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Cette fonctionnalité ne prend pas en charge la langue actuelle"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("C\'est le rôle du client"),
        "thisIsVendorRole": MessageLookupByLibrary.simpleMessage(
            "Il s\'agit du rôle du fournisseur"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Cette plate-forme n\'est pas compatible avec la visualisation Web"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Ce produit n\'est pas pris en charge"),
        "thursday": MessageLookupByLibrary.simpleMessage("JEUDI"),
        "tickets": MessageLookupByLibrary.simpleMessage("Des billets"),
        "time": MessageLookupByLibrary.simpleMessage("Temps"),
        "title": MessageLookupByLibrary.simpleMessage("Titre"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Titre : A à Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Titre : Z à A"),
        "to": MessageLookupByLibrary.simpleMessage("à"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Trop de tentatives de connexion infructueuses. Veuillez réessayer plus tard."),
        "topUp": MessageLookupByLibrary.simpleMessage("Recharger"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Produit de recharge introuvable"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Total d\'une commande ne doit pas etre moin de"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Prix ​​total"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Taxe totale"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Le numéro de suivi est"),
        "trackingPage": MessageLookupByLibrary.simpleMessage("Page de suivi"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transaction annulée"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Détail de la transaction"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("La transaction a échoué"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("La transaction a échoué"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Frais de transaction"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Résultat de la transaction"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transfert"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmation de transfert"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Vous ne pouvez pas transférer vers cet utilisateur"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Échec du transfert"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Transfert réussi"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Mardi"),
        "turkish": MessageLookupByLibrary.simpleMessage("turc"),
        "turnOnBle":
            MessageLookupByLibrary.simpleMessage("Activer le bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Tapez un message ..."),
        "typeYourMessage":
            MessageLookupByLibrary.simpleMessage("Tapez votre message ici..."),
        "typing": MessageLookupByLibrary.simpleMessage("Dactylographie..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("ukrainien"),
        "unavailable": MessageLookupByLibrary.simpleMessage("indisponible"),
        "unblock": MessageLookupByLibrary.simpleMessage("Débloquer"),
        "unblockUser":
            MessageLookupByLibrary.simpleMessage("Débloquer l\'utilisateur"),
        "undo": MessageLookupByLibrary.simpleMessage("Annuler"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Non payé"),
        "update": MessageLookupByLibrary.simpleMessage("Mise à jour"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Mise à jour a échoué!"),
        "updateInfo": MessageLookupByLibrary.simpleMessage(
            "Information sur la mise à jour"),
        "updatePassword": MessageLookupByLibrary.simpleMessage(
            "Mettre à jour le mot de passe"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("État de mise à jour"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Mise à jour réussie!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Mettre à jour le profil"),
        "uploadFile":
            MessageLookupByLibrary.simpleMessage("Téléverser un fichier"),
        "uploadImage":
            MessageLookupByLibrary.simpleMessage("Télécharger une image"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Télécharger le produit"),
        "uploading": MessageLookupByLibrary.simpleMessage("Téléchargement"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Utiliser maintenant"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Utilisez cette image"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Ce nom d\'utilisateur/adresse e-mail n\'est pas disponible."),
        "userHasBeenBlocked":
            MessageLookupByLibrary.simpleMessage("L\'utilisateur a été bloqué"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Le pseudo ou mot de passe est incorect."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "L\'utilisateur n\'est pas trouvé"),
        "username": MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Nom d\'utilisateur déjà utilisé !"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Le nom d\'utilisateur et le mot de passe sont requis"),
        "usernameInvalid": MessageLookupByLibrary.simpleMessage(
            "Le nom d\'utilisateur n\'est pas valide"),
        "usernameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Nom d\'utilisateur est nécessaire"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Message de vacances"),
        "vacationType":
            MessageLookupByLibrary.simpleMessage("Type de vacances"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variable"),
        "variation": MessageLookupByLibrary.simpleMessage("Variation"),
        "vendor": MessageLookupByLibrary.simpleMessage("vendeur"),
        "vendorAdmin": MessageLookupByLibrary.simpleMessage("Admin Vendeur"),
        "vendorInfo": MessageLookupByLibrary.simpleMessage("Info vendeur"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Code de vérification (6 chiffres)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Vérifier"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Par portefeuille"),
        "video": MessageLookupByLibrary.simpleMessage("Vidéo"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("vietnamien"),
        "view": MessageLookupByLibrary.simpleMessage("Vue"),
        "viewCart": MessageLookupByLibrary.simpleMessage("voir le panier"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Voir les détails"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Afficher plus"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("VOIR SUR GOOGLE MAPS"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Voir l\'ordre"),
        "viewRecentTransactions": MessageLookupByLibrary.simpleMessage(
            "Afficher les transactions récentes"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Voir la boutique"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Attendre le chargement de l\'image"),
        "waitForPost": MessageLookupByLibrary.simpleMessage(
            "Attendre le chargement du produit"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("En attente de confirmation"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Solde Google Wallet"),
        "walletBalanceWithValue": m51,
        "walletName":
            MessageLookupByLibrary.simpleMessage("Nom du portefeuille"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Blog (s) Nous avons trouvé"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Nous avons besoin d\'un accès à la caméra pour scanner le code QR ou le code à barres."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Un code d\'authentification a été envoyé à"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Nous vous enverrons des notifications lorsque de nouveaux produits seront disponibles ou que des offres seront disponibles. Vous pouvez toujours modifier ce paramètre dans les paramètres."),
        "webView": MessageLookupByLibrary.simpleMessage("Vue Web"),
        "website": MessageLookupByLibrary.simpleMessage("Site Web"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Mercredi"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Bienvenue"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Nous saluons le retour"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Commencez votre parcours d\'achat avec nous maintenant"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer": MessageLookupByLibrary.simpleMessage(
            "Quelle langue préférez-vous?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Veuillez contacter l\'administrateur pour approuver votre inscription."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "Vous ne pourrez pas envoyer ni recevoir de messages de cet utilisateur."),
        "withdrawAmount":
            MessageLookupByLibrary.simpleMessage("Montant du retrait"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Demande de retrait"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Retrait"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Collection Femme"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Ecrivez votre commentaire"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Écrir votre note"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("oui"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Vous ne pouvez acheter que dans une seul boutique."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Vous ne pouvez acheter que"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Vous n\'avez pas la permission de créer un message"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Vous avez été enregistré dans votre local"),
        "youHaveNoPost":
            MessageLookupByLibrary.simpleMessage("Vous n\'avez aucun message"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Vous avez \$point points"),
        "youMightAlsoLike": MessageLookupByLibrary.simpleMessage(
            "Vous aimerez peut-être aussi"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Vous devez vous connecter pour payer"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Vous ne serez pas demandé la prochaine fois après l\'achèvement"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Votre compte est en cours d\'examen. Veuillez contacter l\'administrateur si vous avez besoin d\'aide."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Votre adresse existe dans votre local"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "L\'adresse a été enregistrée dans votre stockage local"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Votre candidature est en cours d\'examen."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Votre panier est vide"),
        "yourBookingDetail": MessageLookupByLibrary.simpleMessage(
            "Détails de votre réservation"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Vos revenus ce mois-ci"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Votre note"),
        "yourOrderHasBeenAdded": MessageLookupByLibrary.simpleMessage(
            "Votre commande a été ajoutée"),
        "yourOrderIsConfirmed": MessageLookupByLibrary.simpleMessage(
            "Votre commande est confirmée !"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Votre commande est vide"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Il semble que vous n\'ayez ajouté aucun élément.\nCommencez vos achats pour le remplir."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Vos commandes"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Votre produit est en cours d\'examen"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Votre nom d\'utilisateur ou e-mail"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Code postal"),
        "zipCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "Le champ code postal est obligatoire")
      };
}
