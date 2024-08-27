// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(x) => "Activo ${x}";

  static String m1(attribute) => "Cualquier ${attribute}";

  static String m2(point) => "Tus puntos disponibles: ${point}";

  static String m3(state) => "El adaptador Bluetooth esta ${state}";

  static String m4(author) => "Autor: ${author}";

  static String m5(currency) => "Moneda cambiada a ${currency}";

  static String m6(number) => "${number} caracteres restantes";

  static String m7(priceRate, pointRate) =>
      "${priceRate} = ${pointRate} puntos";

  static String m8(count) => "${count} Artículo";

  static String m9(count) => "${count} Artículos";

  static String m10(count) => "${count} Artículo";

  static String m11(count) => "${count} artículos";

  static String m12(country) => "${country} país no esta disponible";

  static String m13(currency) => " ${currency} no esta disponible";

  static String m14(day) => "Hace ${day} días";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Termina en ${timeLeft}";

  static String m17(captcha) => "Introduzca ${captcha} para confirmar:";

  static String m18(message) => "Error: ${message}";

  static String m19(message) => "Error: ${message}";

  static String m20(time) => "Expira en ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "Hace ${hour} horas";

  static String m23(currentBalance) =>
      "Solo te quedan ${currentBalance} en tu billetera";

  static String m24(count) =>
      " ${Intl.plural(count, one: '${count} artículo', other: '${count} artículos')}";

  static String m25(message) =>
      "Hay un problema con la aplicación durante la solicitud de datos, comuníquese con el administrador para solucionar los problemas: ${message}";

  static String m26(currency, amount) =>
      "La cantidad máxima para usar este pago es ${currency} ${amount}";

  static String m27(size) => "Tamaño máximo de archivo: ${size} MB";

  static String m28(currency, amount) =>
      "La cantidad mínima para usar este pago es ${currency} ${amount}";

  static String m29(minute) => "Hace ${minute} minutos";

  static String m30(month) => " Hace ${month} meses";

  static String m31(store) => "Más de ${store}";

  static String m32(number) => "debe comprarse en grupos de ${number}";

  static String m33(itemCount) => "${itemCount} items";

  static String m34(price) => "Total de opciones: ${price}";

  static String m35(amount) => "Pagar ${amount}";

  static String m36(name) => "${name} agregado al carrito";

  static String m37(total) => "Cantidad: ${total}";

  static String m38(name) => "Recibí dinero de ${name}";

  static String m39(percent) => "Rebaja ${percent} %";

  static String m40(keyword) => "Resultados de búsqueda para: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} elemento)";

  static String m42(keyword, count) => "${keyword} (${count} elementos)";

  static String m43(second) => "Hace ${second} segundos";

  static String m44(totalCartQuantity) =>
      "Carrito, ${totalCartQuantity} artículos";

  static String m45(numberOfUnitsSold) => "Vendido: ${numberOfUnitsSold}";

  static String m46(fieldName) => "El campo ${fieldName} es obligatorio";

  static String m47(total) => "${total} Productos";

  static String m48(name) => "Transferir dinero a ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "¡Use un máximo de ${maxPointDiscount} puntos para obtener un ${maxPriceDiscount} descuento en este pedido!";

  static String m50(date) => "Válido hasta ${date}";

  static String m51(balance) => "Saldo de la billetera: ${balance}";

  static String m52(message) => "Advertencia: ${message}";

  static String m53(defaultCurrency) =>
      "La moneda seleccionada actualmente no está disponible para la función Cartera, cámbiela a ${defaultCurrency}";

  static String m54(length) => "Encontramos ${length} productos";

  static String m55(week) => "Semana ${week}";

  static String m56(name) => "Bienvenido ${name}";

  static String m57(year) => " Hace ${year} años";

  static String m58(total) => "Has asignado a la orden #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Sobre nosotros"),
        "account": MessageLookupByLibrary.simpleMessage("Cuenta"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("Bajo aprobación"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Eliminar su cuenta elimina la información personal de nuestra base de datos. Su correo electrónico se reserva permanentemente y el mismo correo electrónico no se puede reutilizar para registrar una nueva cuenta."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "La cuenta está pendiente de aprobación."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Número de cuenta"),
        "accountSetup": MessageLookupByLibrary.simpleMessage("Configuración"),
        "active": MessageLookupByLibrary.simpleMessage("Activo"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Activo hace mucho tiempo"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Activo ahora"),
        "addAName": MessageLookupByLibrary.simpleMessage("Agrega un nombre"),
        "addANewPost": MessageLookupByLibrary.simpleMessage(
            "Agregar una nueva publicación"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Agrega un slug"),
        "addAnAttr": MessageLookupByLibrary.simpleMessage("Agrega un atributo"),
        "addListing": MessageLookupByLibrary.simpleMessage("Agrega entrada"),
        "addMessage": MessageLookupByLibrary.simpleMessage("Agrega un mensaje"),
        "addNew": MessageLookupByLibrary.simpleMessage("Agrega nuevo"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Agrega nueva dirección"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Crea nuevo blog"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Crea nueva publicación"),
        "addProduct":
            MessageLookupByLibrary.simpleMessage("Crea nuevo producto"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Agrega al Carrito"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "Has superado la cantidad máxima"),
        "addToCartSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Agregado al carrito exitosamente"),
        "addToOrder": MessageLookupByLibrary.simpleMessage("Agrega al pedido"),
        "addToQuoteRequest":
            MessageLookupByLibrary.simpleMessage("Agrega a la cotización"),
        "addToWishlist":
            MessageLookupByLibrary.simpleMessage("Agrega a tu lista de deseos"),
        "added": MessageLookupByLibrary.simpleMessage("Agregado"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Agregado exitosamente"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Agrega tu imagen"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Información Adicional"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Servicios adicionales"),
        "address": MessageLookupByLibrary.simpleMessage("Dirección"),
        "adults": MessageLookupByLibrary.simpleMessage("Adultos"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Tarde"),
        "agree": MessageLookupByLibrary.simpleMessage("Acordado"),
        "agreeWithPrivacy": MessageLookupByLibrary.simpleMessage("Acordado"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albanés"),
        "all": MessageLookupByLibrary.simpleMessage("Todos"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Todas las marcas"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Todas las órdenes"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Últimas ventas"),
        "allProducts":
            MessageLookupByLibrary.simpleMessage("Todos los productos"),
        "allow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "¿Permite acceso a la cámara?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Casi agotado"),
        "amazing": MessageLookupByLibrary.simpleMessage("Asombroso"),
        "amount": MessageLookupByLibrary.simpleMessage("Cantidad"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Apariencia"),
        "apply": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "approve": MessageLookupByLibrary.simpleMessage("Aprobar"),
        "approved": MessageLookupByLibrary.simpleMessage("Aprobado"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Solicitudes aprobadas"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arábica"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("¿Estas Seguro?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro que quieres eliminar tu cuenta?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea cerrar sesión?"),
        "areYouWantToExit":
            MessageLookupByLibrary.simpleMessage("¿Seguro que quieres salir?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Asignado"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Al menos 3 caracteres ..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Atributo"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Atributo ya existe"),
        "attributes": MessageLookupByLibrary.simpleMessage("Atributos"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Elementos de audio detectados. ¿Quieres agregarlo al reproductor de audio?"),
        "availability": MessageLookupByLibrary.simpleMessage("Disponibilidad"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Disponibilidad: "),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Puntuación promedia"),
        "back": MessageLookupByLibrary.simpleMessage("Atrás"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Realizado pedido"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Volver a la tienda"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Volver a la cartera"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Colecciones de carteras"),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "bank": MessageLookupByLibrary.simpleMessage("Banco"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Tipo de lista de banner"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Tipo de banner"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banner URL de Youtube"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Información básica"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Conviértete en vendedor"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengalí"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Dirección de facturación"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Bluetooth no se ha habilitado"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Bloquear"),
        "blockUser": MessageLookupByLibrary.simpleMessage("Bloquear usuario"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Ya esta reservado"),
        "booking": MessageLookupByLibrary.simpleMessage("Reserva"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Reserva cancelada"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Confirmado"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Hay algo mal. Por favor, inténtelo de nuevo más tarde."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Historial de reservas"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Reservar ahora"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Reservado con éxito"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Resumen de reserva"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Reserva no disponible"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bosnio"),
        "branch": MessageLookupByLibrary.simpleMessage("Surcusal"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, el carrito de compras se vaciará debido al cambio de región. Estaremos encantados de comunicarnos con usted si necesita ayuda."),
        "brand": MessageLookupByLibrary.simpleMessage("Marca"),
        "brands": MessageLookupByLibrary.simpleMessage("Marcas"),
        "brazil": MessageLookupByLibrary.simpleMessage("Portugués"),
        "burmese": MessageLookupByLibrary.simpleMessage("Birmano"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Compra"),
        "by": MessageLookupByLibrary.simpleMessage("por"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Solo por cita"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Por marca"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Por categoria"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Por precio"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Al registrarte, aceptas nuestros"),
        "byTag": MessageLookupByLibrary.simpleMessage("Por etiqueta"),
        "call": MessageLookupByLibrary.simpleMessage("Llamada"),
        "callTo": MessageLookupByLibrary.simpleMessage("Hacer una llamada a"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Llamar al dueño de la tienda"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("No se puede crear orden"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "No se puede crear el usuario."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "No se puede obtener métodos de pago"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "No se puede obtener los métodos de envío."),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "No se puede obtener la información del token."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "No se puede iniciar esta aplicación, asegúrese de que su configuración en config.dart sea correcta"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "No se puede cargar este enlace"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, este vídeo no puede ser reproducido."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "No se puede guardar el pedido en el servidor"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "No se puede actualizar la información del usuario."),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Solicitudes canceladas"),
        "cannotDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Esta cuenta no se puede eliminar"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "No puedes enviar mensajes a este usuario"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "No puedo encontrar este ID de pedido"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "No se permiten fechas en el pasado"),
        "cardHolder":
            MessageLookupByLibrary.simpleMessage("Titular de la tarjeta"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Número de tarjeta"),
        "cart": MessageLookupByLibrary.simpleMessage("Carrito"),
        "cartDiscount": MessageLookupByLibrary.simpleMessage("Descuento"),
        "cash": MessageLookupByLibrary.simpleMessage("Efectivo"),
        "categories": MessageLookupByLibrary.simpleMessage("Categorías"),
        "category": MessageLookupByLibrary.simpleMessage("Categoría"),
        "change": MessageLookupByLibrary.simpleMessage("cambio"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Cambiar idioma"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Cambiar impresora"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Charla"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Mensajes"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Charla por Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Charla por WhatsApp"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("Charla con Bot"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Charla con el propietario de la tienda"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Revisa tu correo electrónico para el enlace de confirmación"),
        "checking": MessageLookupByLibrary.simpleMessage("Chequeando..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Finalizar Compra"),
        "chinese": MessageLookupByLibrary.simpleMessage("Chino"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Chino simplificado)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Chino tradicional)"),
        "chooseBranch":
            MessageLookupByLibrary.simpleMessage("Elige la sucursal"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Elege categoría"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Elegir de la galería"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Elija del servidor"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Elege plan"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Elege personal"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Elege tipo"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Elije tu método de pago"),
        "city": MessageLookupByLibrary.simpleMessage("Ciudad"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("Ciudad es obligatorio"),
        "clear": MessageLookupByLibrary.simpleMessage("Limpiar"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Vaciar Carrito"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Limpiar conversación"),
        "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Cerrado ahora"),
        "closed": MessageLookupByLibrary.simpleMessage("Cerrado"),
        "codExtraFee":
            MessageLookupByLibrary.simpleMessage("Tarifa adicional COD"),
        "color": MessageLookupByLibrary.simpleMessage("Color"),
        "comment": MessageLookupByLibrary.simpleMessage("Comentario"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Por favor escribe tu comentario"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Comentaste correctamente, espere hasta que se apruebe tu comentario"),
        "complete": MessageLookupByLibrary.simpleMessage("Completa"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirma"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Confirma eliminación de cuenta"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "El carrito se limpiará cuando se recargue."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea limpiar el carrito?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro que quieres eliminar esto? Esta acción no se puede deshacer."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas eliminar este artículo?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirma tu contraseña"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "El campo de confirmación de contraseña es obligatorio"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea eliminar este producto?"),
        "connect": MessageLookupByLibrary.simpleMessage("Conecta"),
        "contact": MessageLookupByLibrary.simpleMessage("Contacto"),
        "content": MessageLookupByLibrary.simpleMessage("Contenido"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Seguir comprando"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Seguir al pago"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Seguir al resumen"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Seguir al envío"),
        "continues": MessageLookupByLibrary.simpleMessage("Continua"),
        "conversations": MessageLookupByLibrary.simpleMessage("Conversaciones"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("Copiado"),
        "copy": MessageLookupByLibrary.simpleMessage("Copia"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Todos los derechos reservados."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("País"),
        "countryCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "Se requiere el código de país"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("País es obligatorio"),
        "couponCode":
            MessageLookupByLibrary.simpleMessage("Código promocional"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "El cupón se ha guardado correctamente."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Tu código de cupón no es válido."),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Felicidades! Código de cupón aplicado con éxito"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Crea una cuenta"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Tu publicación se ha creado correctamente como borrador. Por favor, echa un vistazo a tu pagina de administración."),
        "createPost": MessageLookupByLibrary.simpleMessage("Crea publicación"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Crea Producto"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Gracias por tu reseña"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Realmente apreciamos tu aporte y valoramos tu contribución para ayudarnos a mejorar."),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Crea todas las variaciones"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Creado en:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Divisas"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña actual"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Actualmente solo tenemos"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Detalle del cliente"),
        "customerNote":
            MessageLookupByLibrary.simpleMessage("Nota del cliente"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Checo"),
        "danish": MessageLookupByLibrary.simpleMessage("Danés"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Tema Oscuro"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Data vacía"),
        "date": MessageLookupByLibrary.simpleMessage("Fecha"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Fecha Ascendente"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("fecha reservada"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Fecha Descendente"),
        "dateEnd":
            MessageLookupByLibrary.simpleMessage("Fecha de finalización"),
        "dateLatest":
            MessageLookupByLibrary.simpleMessage("Fecha: Más reciente"),
        "dateOldest":
            MessageLookupByLibrary.simpleMessage("Fecha: Más antiguo"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Fecha de inicio"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Fecha Hora"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Cierre sabio de la fecha"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Débito"),
        "decline": MessageLookupByLibrary.simpleMessage("Declinar"),
        "delete": MessageLookupByLibrary.simpleMessage("Borrar"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Borrar cuenta"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que deseaS eliminar tu cuenta? Lea cómo afectará la eliminación de la cuenta."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Cuenta eliminada con éxito. Tu sesión ha caducado."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Eliminar todos"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Eliminar conversación"),
        "delivered": MessageLookupByLibrary.simpleMessage("Entregado"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Entregado a"),
        "delivering": MessageLookupByLibrary.simpleMessage("Entregando"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Repartidor:"),
        "deliveryDate":
            MessageLookupByLibrary.simpleMessage("Fecha de entrega"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la entrega"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Delivery"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Sin datos.\nEste pedido ha sido eliminado."),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Por favor ingresa o selecciona el cupón para tu pedido."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("¿No recibiste el código? "),
        "direction": MessageLookupByLibrary.simpleMessage("Dirección"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Deshabilitar compra"),
        "discount": MessageLookupByLibrary.simpleMessage("Descuento"),
        "displayName":
            MessageLookupByLibrary.simpleMessage("Nombre para mostrar"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Aún no tienes ninguna transacción"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Quieres salir de la aplicación"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "¿Quieres irte sin enviar tu reseña?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("¿Quieres cerrar sesión?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "¿Quieres desbloquear a este usuario?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay no es compatible. Por favor revise su billetera y tarjeta"),
        "done": MessageLookupByLibrary.simpleMessage("Hecho"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("¿No tienes cuenta?"),
        "download": MessageLookupByLibrary.simpleMessage("Descargar"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Descargar aplicación"),
        "draft": MessageLookupByLibrary.simpleMessage("Borrador"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Repartidor asignado"),
        "duration": MessageLookupByLibrary.simpleMessage("Duración"),
        "dutch": MessageLookupByLibrary.simpleMessage("Holandés"),
        "earnings": MessageLookupByLibrary.simpleMessage("ganancias"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar: "),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Editar información del producto"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Editar"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egipto"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAddressInvalid": MessageLookupByLibrary.simpleMessage(
            "La dirección de correo electrónico no es válida"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "¡El correo electrónico ya está en uso!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Eliminar tu cuenta te quita de todas las listas de correo."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "La cuenta que ingresaste no existe. Inténtalo de nuevo."),
        "emailIsRequired": MessageLookupByLibrary.simpleMessage(
            "El campo de Email es obligatorio"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("Suscripción de Email"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Parece que aún no has hecho ninguna reserva.\n¡Empieza a explorar y haz tu primera reserva!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Carrito vacio"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Parece que todavía no has agregado ningún artículo al carrito. Comienza a agregrar artículos para completar la compra."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "¡Ups! Tu carrito se siente un poco liviano.\n\n¿Listo para comprar algo fabuloso?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Tu comentario no puede estar vacío"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Aún no has buscado artículos. Empecemos ahora, te ayudaremos."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "No hay opciones de envío disponibles. Asegúrese de haber ingresado su dirección correctamente o contáctenos si necesita ayuda."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "Nombre de usuario / Email está vacío"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Lista de deseos vacía"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Toque cualquier corazón al lado del producto para favorecer. ¡Los guardaremos para usted aquí!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Tu lista de deseos esta actualmente vacía.\n¡Comienza agregar productos ahora!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Habilitar para pago"),
        "enableForLogin": MessageLookupByLibrary.simpleMessage(
            "Habilitar para iniciar sesión"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Habilitar para Cartera"),
        "enableVacationMode": MessageLookupByLibrary.simpleMessage(
            "Habilitar el modo de vacaciones"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Seleccione una fecha posterior al inicio"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Inglés"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Ingrese el monto"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Introduzca una dirección de correo electrónico para cada destinatario"),
        "enterSentCode":
            MessageLookupByLibrary.simpleMessage("Ingresa el código recibido"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Ingresa código de descuento"),
        "enterYourEmail": MessageLookupByLibrary.simpleMessage(
            "Ingresa tu correo electrónico"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Ingrese tu correo electrónico o nombre de usuario"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Ponga tu primer nombre"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Ingresa tu apellido"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Por favor, introduce tu número de celular"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Ingresa tu contraseña"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Introduce tu número de teléfono para comenzar."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Ingresa tu número telefónico"),
        "enterYourUsername": MessageLookupByLibrary.simpleMessage(
            "Ingrese su nombre de usuario"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "La cantidad ingresada es mayor que la cantidad actual de la billetera. ¡Inténtalo de nuevo!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Por favor, introduce un Email válido."),
        "errorMsg": m19,
        "errorOnGettingPost": MessageLookupByLibrary.simpleMessage(
            "¡Error al recibir la publicación!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Ingrese una contraseña de al menos 8 caracteres"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Error"),
        "evening": MessageLookupByLibrary.simpleMessage("Noche"),
        "events": MessageLookupByLibrary.simpleMessage("Eventos"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Fecha de entrega estimada"),
        "expired": MessageLookupByLibrary.simpleMessage("Expirado"),
        "expiredDate":
            MessageLookupByLibrary.simpleMessage("Fecha de vencimiento"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("mm / aa"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Explora ahora"),
        "external": MessageLookupByLibrary.simpleMessage("Externo"),
        "extraServices":
            MessageLookupByLibrary.simpleMessage("Servicios extra"),
        "failToAssign": MessageLookupByLibrary.simpleMessage(
            "No se pudo asignar el usuario"),
        "failedToGenerateLink": MessageLookupByLibrary.simpleMessage(
            "No se pudo generar el enlace"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "No se pudo cargar la configuración de la aplicación. Vuelva a intentarlo o reinicie su aplicación."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("No se pudo cargar la imagen"),
        "fair": MessageLookupByLibrary.simpleMessage("Justa"),
        "favorite": MessageLookupByLibrary.simpleMessage("Favorito"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Característica no disponible"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Productos Destacados"),
        "featured": MessageLookupByLibrary.simpleMessage("Destacado"),
        "features": MessageLookupByLibrary.simpleMessage("Caracteristicas"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "El archivo es demasiado grande. ¡Elija un archivo más pequeño!"),
        "fileUploadFailed":
            MessageLookupByLibrary.simpleMessage("Error al cargar el archivo."),
        "files": MessageLookupByLibrary.simpleMessage("Archivos"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtros"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Huellas dactilares, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Termina la configuración"),
        "finnish": MessageLookupByLibrary.simpleMessage("finlandés"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "¡Sé el primero en comentar esta publicación!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Nombre"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Se requiere el campo Nombre"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Primera renovación"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Descuento de carrito"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Descuento de producto"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("Para este producto"),
        "free": MessageLookupByLibrary.simpleMessage("Gratis"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Gratis"),
        "french": MessageLookupByLibrary.simpleMessage("Frances"),
        "friday": MessageLookupByLibrary.simpleMessage("Viernes"),
        "from": MessageLookupByLibrary.simpleMessage("De"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nombre completo"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Ajustes Generales"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Generando enlace..."),
        "german": MessageLookupByLibrary.simpleMessage("Aleman"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Recibir Notificaciones"),
        "getNotified": MessageLookupByLibrary.simpleMessage("¡Déjame saber!"),
        "getPasswordLink": MessageLookupByLibrary.simpleMessage(
            "Obtener enlace de contraseña"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Empezar"),
        "goBack": MessageLookupByLibrary.simpleMessage("Regresar"),
        "goBackHomePage": MessageLookupByLibrary.simpleMessage(
            "Volver a la página principal"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Regresar a la dirección"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Volver a la reseña"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Regresar al envío"),
        "good": MessageLookupByLibrary.simpleMessage("Bueno"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("griego"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Ventas brutas"),
        "grouped": MessageLookupByLibrary.simpleMessage("Agrupados"),
        "guests": MessageLookupByLibrary.simpleMessage("Invitados"),
        "hasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("ha sido eliminado"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebrew"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Ocultar Acerca de"),
        "hideAddress":
            MessageLookupByLibrary.simpleMessage("Ocultar Dirección"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Ocultar Email"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Ocultar mapa"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Ocultar teléfono"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Ocultar política"),
        "hindi": MessageLookupByLibrary.simpleMessage("hindi"),
        "history": MessageLookupByLibrary.simpleMessage("Historia"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Historia"),
        "home": MessageLookupByLibrary.simpleMessage("Inicio"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("húngaro"),
        "hungary": MessageLookupByLibrary.simpleMessage("Hungaro"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Acepto"),
        "imIn": MessageLookupByLibrary.simpleMessage("Estoy dentro"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Imagen Principal"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("Galeria de Imagenes"),
        "imageGenerate": MessageLookupByLibrary.simpleMessage("Generar imagen"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Red de imágenes"),
        "inStock": MessageLookupByLibrary.simpleMessage("En stock"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña incorrecta"),
        "india": MessageLookupByLibrary.simpleMessage("hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indonesio"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Tabla de información"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Instale el complemento DIGITS: Registro e inicio de sesión de número móvil de Wordpress"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Cerrar instantáneamente"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numero de teléfono invalido"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Código de verificación  no es válido"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Año de nacimiento no válido"),
        "invoice": MessageLookupByLibrary.simpleMessage("Factura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("¿Está todo listo ...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("esta escribiendo..."),
        "italian": MessageLookupByLibrary.simpleMessage("Italian"),
        "item": MessageLookupByLibrary.simpleMessage("Artículo"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("total:"),
        "items": MessageLookupByLibrary.simpleMessage("artículos"),
        "itsOrdered":
            MessageLookupByLibrary.simpleMessage("¡Hemos recibido tu pedido!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Quiero crear una cuenta"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonés"),
        "kannada": MessageLookupByLibrary.simpleMessage("Canadá"),
        "keep": MessageLookupByLibrary.simpleMessage("Mantener"),
        "khmer": MessageLookupByLibrary.simpleMessage("Jemer"),
        "korean": MessageLookupByLibrary.simpleMessage("coreano"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdish"),
        "language": MessageLookupByLibrary.simpleMessage("Idiomas"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "El idioma se actualizó correctamente"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Apellido"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Apellido es obligatorio"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Últimas transacciones"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Últimos productos"),
        "layout": MessageLookupByLibrary.simpleMessage("Diseños"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Tema ligero"),
        "link": MessageLookupByLibrary.simpleMessage("Link"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Tipo de banner de lista"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Lista de videos de banner"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Lista de notificaciones"),
        "listening": MessageLookupByLibrary.simpleMessage("Escuchando..."),
        "loadFail": MessageLookupByLibrary.simpleMessage(
            "Ha fallado en cargar... ¡Haga Click para Reintentar!"),
        "loading": MessageLookupByLibrary.simpleMessage("Cargando..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Cargando enlace..."),
        "location": MessageLookupByLibrary.simpleMessage("Ubicación"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Pantalla de bloqueo y seguridad"),
        "login": MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Inicio de sesión cancelado"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("¡Error de inicio de sesion!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "No se le permite utilizar esta aplicación."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("¡Iniciste sesión con éxito!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Por favor, inicia sesión para comentar"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Por favor inicia sesión para continuar"),
        "loginToReview": MessageLookupByLibrary.simpleMessage(
            "Por favor inicie sesión para revisar"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Ingresa a tu cuenta"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "malay": MessageLookupByLibrary.simpleMessage("malayo"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Colecciones para Hombres"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Administrar clave API"),
        "manageStock":
            MessageLookupByLibrary.simpleMessage("Gestionar inventario"),
        "map": MessageLookupByLibrary.simpleMessage("Mapa"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Marcar como leído"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Marcar como enviado"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Marcar como no leído"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Quizas Luego"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Orden del menú"),
        "menus": MessageLookupByLibrary.simpleMessage("Menús"),
        "message": MessageLookupByLibrary.simpleMessage("Mensaje"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Enviar mensaje a"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("La cantidad mínima es"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Móvil"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("Se requiere móvil"),
        "mobileNumberInUse":
            MessageLookupByLibrary.simpleMessage("¡Número de móvil ya en uso!"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Verificación celular"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("hace un momento"),
        "monday": MessageLookupByLibrary.simpleMessage("Lunes"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...más"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Más información"),
        "morning": MessageLookupByLibrary.simpleMessage("Mañana"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem": MessageLookupByLibrary.simpleMessage(
            "Debes seleccionar 1 artículo"),
        "myCart": MessageLookupByLibrary.simpleMessage("Mi Carrito"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Mi Pedido"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Mis Puntos"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Mis Productos"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "No tienes ningún producto. ¡Intenta crear uno!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Mi billetera"),
        "myWishList":
            MessageLookupByLibrary.simpleMessage("Mi lista de deseos"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Nombre"),
        "nameOnCard":
            MessageLookupByLibrary.simpleMessage("Nombre en la tarjeta"),
        "nearbyPlaces":
            MessageLookupByLibrary.simpleMessage("Lugares cercanos"),
        "needHelp": MessageLookupByLibrary.simpleMessage("¿Necesitas ayuda?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Necesitas iniciar sesión de nuevo para efectuar la actualización"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Países Bajos"),
        "newAppConfig": MessageLookupByLibrary.simpleMessage(
            "¡Nuevo contenido disponible!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nueva contraseña"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Nueva variación"),
        "next": MessageLookupByLibrary.simpleMessage("Próximo"),
        "niceName": MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Aún no se han guardado direcciones."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Ningún elemento del historial anterior"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "\nOpps, el blog parece que ya no existe"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "No se concede ningún permiso de cámara. Concedalo en la configuración de tu dispositivo."),
        "noComments": MessageLookupByLibrary.simpleMessage("Sin comentarios"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("No hay conversación todavía"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Aparecerá cuando alguien comience a chatear contigo."),
        "noData": MessageLookupByLibrary.simpleMessage("Sin Datos"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("No hay favoritos todavía"),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "No hay archivo para descargar."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Ningún elemento del historial de reenvíos"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Sin conexión al internet"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("¡No hay listado cerca!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Sin pedidos"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay métodos de pago disponibles."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, este producto no esta accesible para tu rol actual."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Este producto está disponible para usuarios con roles específicos. Inicie sesión con las credenciales adecuadas para acceder a este producto o póngase en contacto con nosotros para obtener más información."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Inicie sesión con las credenciales adecuadas para acceder a este producto o contáctenos para obtener más información."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Opps, esta página parece que ya no existe!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Sin impresoras"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Ningún producto"),
        "noResultFound": MessageLookupByLibrary.simpleMessage(
            "No se ha encontrado resultados"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Sin reseñas"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("No hay espacio disponible"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("¡No hay tienda cerca!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("No hay sugerencias"),
        "noThanks": MessageLookupByLibrary.simpleMessage("No gracias"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, ¡no se encontraron transacciones!"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, no se encontraron vídeos."),
        "none": MessageLookupByLibrary.simpleMessage("Ninguno"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, no pudimos encontrar ningún resultado."),
        "notFound": MessageLookupByLibrary.simpleMessage("No encontrado"),
        "notRated": MessageLookupByLibrary.simpleMessage("No Calificado"),
        "note": MessageLookupByLibrary.simpleMessage("Nota del pedido"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Nota"),
        "noteTransfer": MessageLookupByLibrary.simpleMessage("Nota (opcional)"),
        "notice": MessageLookupByLibrary.simpleMessage("Notice"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Notifica últimas ofertas y disponibilidad de productos"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("de este producto"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "on": MessageLookupByLibrary.simpleMessage("en"),
        "onSale": MessageLookupByLibrary.simpleMessage("En venta"),
        "onVacation": MessageLookupByLibrary.simpleMessage("De vacaciones"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 a cada destinatario"),
        "online": MessageLookupByLibrary.simpleMessage("En línea"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Abierto 24h"),
        "openMap": MessageLookupByLibrary.simpleMessage("Mapa"),
        "openNow": MessageLookupByLibrary.simpleMessage("Abierto ahora"),
        "openingHours":
            MessageLookupByLibrary.simpleMessage("Horario de apertura"),
        "optional": MessageLookupByLibrary.simpleMessage("Opcional"),
        "options": MessageLookupByLibrary.simpleMessage("Opciones"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("o"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("O inicia sesión con"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Confirmación del pedido"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de crear el pedido?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Fecha del Pedido"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Detalles del pedido"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Historial de pedidos"),
        "orderId": MessageLookupByLibrary.simpleMessage("Pedido ID:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("Pedido ID"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Nº de Pedido."),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Notas de Pedidos"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Número de Pedido"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Revocación cancelada"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Charge Back"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Completado"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Negado"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Expirado"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Fallido"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("En espera"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("pendiente"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Pendiente de pago"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Procesada"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Procesando"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Rembolsado"),
        "orderStatusReversed":
            MessageLookupByLibrary.simpleMessage("Invertido"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Enviado"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Anulado"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Puede verificar el estado de tu pedido utilizando nuestra función de estado de entrega. Recibirás un correo electrónico de confirmación del pedido con los detalles de tu pedido y un enlace para seguir su progreso"),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Puede iniciar sesión en tu cuenta utilizando el correo electrónico y la contraseña definidos anteriormente. En tu cuenta puede editar los datos de su perfil, verificar el historial de transacciones y editar la suscripción al boletín informativo"),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Has realizado correctamente el pedido"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Tu cuenta"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Resumen del pedido"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("Total del pedido"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Rastreo de orden"),
        "orders": MessageLookupByLibrary.simpleMessage("Pedidos"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("Verificación OTP"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Nuestros datos bancarios"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Agotado"),
        "pageView": MessageLookupByLibrary.simpleMessage("Vista de pagina"),
        "paid": MessageLookupByLibrary.simpleMessage("Pagado"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Estado pago"),
        "password": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Contraseña es obligatorio"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Las contraseñas no coinciden"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Pega la URL de tu imagen"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Pagar con cartera"),
        "payNow": MessageLookupByLibrary.simpleMessage("Pague ahora"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Pago"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Los detalles de pago cambiaron exitosamente."),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("Método de pago"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Este método de pago no esta soportado"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Métodos de pago"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Configuración de pago"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Pago exitoso"),
        "pending": MessageLookupByLibrary.simpleMessage("pendiente"),
        "persian": MessageLookupByLibrary.simpleMessage("Persian"),
        "phone": MessageLookupByLibrary.simpleMessage("Teléfono"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("El teléfono está vacío"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Formato: 8095551234"),
        "phoneIsRequired":
            MessageLookupByLibrary.simpleMessage("Teléfono es obligatorio"),
        "phoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de teléfono"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Verificación del número de teléfono"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Elegir fecha y hora"),
        "picking": MessageLookupByLibrary.simpleMessage("Esperando la entrega"),
        "placeMyOrder": MessageLookupByLibrary.simpleMessage("Haz el pedido"),
        "playAll": MessageLookupByLibrary.simpleMessage("Reproduce todo"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Por favor agrega el precio"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Por favor acepta nuestros términos"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Permite el acceso a la cámara y la galería."),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Por favor revisando la conexión al internet!"),
        "pleaseChooseBranch": MessageLookupByLibrary.simpleMessage(
            "Por favor elige una sucursal"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Por favor elije categoría"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Ingrese el nombre del producto"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Por favor ingresa tu código"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Complete todos los espacios"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Por favor aumenta o disminuye la cantidad para continuar."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Por favor llena todos los campos"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Por favor completa todos los campos"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Seleccione una fecha de reserva"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Por favor selecciona una ubicación"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Elija una opción para cada atributo del producto"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Selecciona al menos 1 opción para cada atributo activo"),
        "pleaseSelectImages": MessageLookupByLibrary.simpleMessage(
            "Por favor selecciona imágenes"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "¡Selecciona las opciones requeridas!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Inicia sesión en su cuenta antes de cargar cualquier archivo."),
        "point": MessageLookupByLibrary.simpleMessage("Punto"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "No se ha encontrado ninguna configuración de puntos de descuento en el servidor."),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Ingrese el punto de descuento"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Punto de descuento máximo"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "No tienes suficientes puntos de descuento. Su punto de descuento total es"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Has alcanzado el punto máximo de descuento"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "El valor total del descuento es superior al total de la factura."),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "Se elimina el punto de descuento"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "El punto de descuento se aplica correctamente"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Existe la regla de descuento para aplicar sus puntos al carrito"),
        "polish": MessageLookupByLibrary.simpleMessage("Polaco"),
        "poor": MessageLookupByLibrary.simpleMessage("Pobre"),
        "popular": MessageLookupByLibrary.simpleMessage("Popular"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularidad"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Esta dirección se guardará en su dispositivo local. NO es la dirección del usuario."),
        "postContent": MessageLookupByLibrary.simpleMessage("Contenido"),
        "postFail": MessageLookupByLibrary.simpleMessage(
            "No se pudo crear tu publicación"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Característica de imagen"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Gestión de entradas"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Publicar"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Tu publicación ha sido creada con éxito"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Título"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Prepagado"),
        "prev": MessageLookupByLibrary.simpleMessage("Previo"),
        "preview": MessageLookupByLibrary.simpleMessage("Vista previa"),
        "price": MessageLookupByLibrary.simpleMessage("Precio"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Precio: Ascendente"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Precio: Descendente"),
        "prices": MessageLookupByLibrary.simpleMessage("Precios"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Imprime recibo"),
        "printer": MessageLookupByLibrary.simpleMessage("impresora"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Impresora no encontrada"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Selección de impresora"),
        "printing": MessageLookupByLibrary.simpleMessage("Impresión..."),
        "privacyAndTerm": MessageLookupByLibrary.simpleMessage(
            "Política de Privacidad y Términos"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Política de privacidad"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Términos y privacidad"),
        "private": MessageLookupByLibrary.simpleMessage("Privado"),
        "processing": MessageLookupByLibrary.simpleMessage("Procesando..."),
        "product": MessageLookupByLibrary.simpleMessage("Producto"),
        "productAddToCart": m36,
        "productAdded":
            MessageLookupByLibrary.simpleMessage("Se agregó el producto"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Tu producto aparecerá después de la revisión."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Lo sentimos, no se puede acceder a este producto porque ha caducado."),
        "productName":
            MessageLookupByLibrary.simpleMessage("Nombre del producto"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "El nombre del producto no puede estar vacío."),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "La variable de este tipo de producto requiere al menos una variante"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "El tipo de producto simple necesita el nombre y el precio regular"),
        "productOutOfStock":
            MessageLookupByLibrary.simpleMessage("Este producto está agotado"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Descripción del producto"),
        "productRating":
            MessageLookupByLibrary.simpleMessage("Tu clasificación"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Revision de producto"),
        "productType": MessageLookupByLibrary.simpleMessage("Tipo de producto"),
        "products": MessageLookupByLibrary.simpleMessage("Productos"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("ID de PromptPay:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("Nombre de PromptPay:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Tipo de PromptPay:"),
        "publish": MessageLookupByLibrary.simpleMessage("Publicar"),
        "pullToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Hala pantalla abajo para cargar más"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "El código QR se ha guardado correctamente."),
        "qRCodeSaveFailure": MessageLookupByLibrary.simpleMessage(
            "No se pudo guardar el código QR"),
        "qty": MessageLookupByLibrary.simpleMessage("Cantidad"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Cantidad"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "La cantidad actual es mayor que la cantidad en stock"),
        "random": MessageLookupByLibrary.simpleMessage("Aleatorio"),
        "rate": MessageLookupByLibrary.simpleMessage("Calificar"),
        "rateProduct":
            MessageLookupByLibrary.simpleMessage("Calificar Producto"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Califica nuestra App"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Califica esta app"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Si te gusta esta aplicación, tóma un momento !\nRealmente nos ayuda y no debería llevarte más de un minuto."),
        "rating": MessageLookupByLibrary.simpleMessage("Clasificación"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Por favor califique antes de enviar su comentario"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Reordenar"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Comentarios"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("Esperando la entrega"),
        "receivedMoney":
            MessageLookupByLibrary.simpleMessage("Dinero recibido"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("Receptor"),
        "recent": MessageLookupByLibrary.simpleMessage("Recientes"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Últimas búsquedas"),
        "recentView": MessageLookupByLibrary.simpleMessage("Visto últimamente"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Visto últimamente"),
        "recommended": MessageLookupByLibrary.simpleMessage("Recomendado"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Totales recurrentes"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualiza"),
        "refund": MessageLookupByLibrary.simpleMessage("Reembolso"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "La solicitud de reembolso del pedido no se realizó correctamente."),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Solicite un reembolso de su pedido con éxito!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Petición de reembolso"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Reembolso solicitado"),
        "refunds": MessageLookupByLibrary.simpleMessage("Reembolsos"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Regenerar respuesta"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Regístrate como"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Regístrate como vendedor"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "No se puede sincronizar la cuenta. Inicie sesión para continuar."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Registro fallido"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "La solicitud no es válida o ha expirado. Inténtelo de nuevo."),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Regístrate con éxito"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Precio regular"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Entradas relacionadas"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Suelta para cargar más"),
        "remove": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Eliminar del WishList"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Solicitar reserva"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Has solicitado demasiados códigos en poco tiempo. Por favor, inténtalo de nuevo más tarde."),
        "resend": MessageLookupByLibrary.simpleMessage("Reenviar"),
        "reset": MessageLookupByLibrary.simpleMessage("Reiniciar"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Restablecer la contraseña"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Restablecer tu contraseña"),
        "results": MessageLookupByLibrary.simpleMessage("Resultados"),
        "retry": MessageLookupByLibrary.simpleMessage("Reintentar"),
        "review": MessageLookupByLibrary.simpleMessage("Reseña"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Aprobación de revisión"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "¡Tu reseña ha sido enviada y está esperando aprobación!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("¡Tu reseña se ha enviado!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reseñas"),
        "romanian": MessageLookupByLibrary.simpleMessage("Rumana"),
        "russian": MessageLookupByLibrary.simpleMessage("Russian"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Precio de oferta"),
        "saturday": MessageLookupByLibrary.simpleMessage("Sábado"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Guarda dirección"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Dirección guardado exitosamente"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Guarda para después"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Guarda código QR"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Guarda en lista de deseos"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Este artículo no se puede escanear"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Para escanear un pedido, primero debes iniciar sesión"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Este pedido no está disponible para tu cuenta"),
        "search": MessageLookupByLibrary.simpleMessage("Buscar"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Buscar por nombre de país o código de marcación"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Buscar con nombre ..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "¡Ups! Parece que ningún resultado coincide con sus criterios de búsqueda."),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Buscar artículos"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Por favor ingresa información en el campo"),
        "searchOrderId": MessageLookupByLibrary.simpleMessage(
            "Buscar con ID del pedido ..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Busar lugar"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Busca con Google"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Ver Todos"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Continúa viendo contenido nuevo en su aplicación."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Ver orden"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Ver reseñas"),
        "select": MessageLookupByLibrary.simpleMessage("Selecciona"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("Selecciona dirección"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Selecciona todo"),
        "selectDates":
            MessageLookupByLibrary.simpleMessage("Selecciona fechas"),
        "selectFileCancelled": MessageLookupByLibrary.simpleMessage(
            "Selecciona archivo cancelado!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Selecciona imagen"),
        "selectNone":
            MessageLookupByLibrary.simpleMessage("No seleccione ninguno"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Selecciona impresora"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Selecciona Rol"),
        "selectStore":
            MessageLookupByLibrary.simpleMessage("Selecciona tienda"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Selecciona el color"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Selecciona el archivo"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Selecciona el punto"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Selecciona la cantidad"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Selecciona el tamaño"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Selecciona coupón"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Devolver"),
        "sendSMSCode":
            MessageLookupByLibrary.simpleMessage("Obtener un código"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Envia SMS al propietario de la tienda"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "La cuenta a la que desea transferir (correo electrónico)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Separa varias direcciones de correo electrónico con una coma."),
        "serbian": MessageLookupByLibrary.simpleMessage("Serbio"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sesión expirada"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Establece una dirección en la página de configuración"),
        "settings": MessageLookupByLibrary.simpleMessage("Configuración"),
        "setup": MessageLookupByLibrary.simpleMessage("Configuración"),
        "share": MessageLookupByLibrary.simpleMessage("Compartir"),
        "shipped": MessageLookupByLibrary.simpleMessage("Enviado"),
        "shipping": MessageLookupByLibrary.simpleMessage("Envío"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Dirección de Envío"),
        "shippingFee": MessageLookupByLibrary.simpleMessage("Tarifa de envío"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Método de envío"),
        "shop": MessageLookupByLibrary.simpleMessage("Tienda"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Email de la tienda"),
        "shopName": MessageLookupByLibrary.simpleMessage("Nombre de tienda"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Pedidos de la tienda"),
        "shopPhone":
            MessageLookupByLibrary.simpleMessage("Teléfono de la tienda"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Slug de la tienda"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Descripción breve"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Muestra todos mis pedidos"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Muestra detalles"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Muestra galería"),
        "showLess": MessageLookupByLibrary.simpleMessage("Muestra menos"),
        "showMore": MessageLookupByLibrary.simpleMessage("Muestra más"),
        "signIn": MessageLookupByLibrary.simpleMessage("Iniciar Sesión"),
        "signInWithEmail": MessageLookupByLibrary.simpleMessage(
            "Iniciar sesión con correo electrónico"),
        "signUp": MessageLookupByLibrary.simpleMessage("Regístrate"),
        "signup": MessageLookupByLibrary.simpleMessage("Regístrate"),
        "simple": MessageLookupByLibrary.simpleMessage("Sencillo"),
        "size": MessageLookupByLibrary.simpleMessage("Talla"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Guia de tallas"),
        "skip": MessageLookupByLibrary.simpleMessage("Omitir"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("Eslovaco"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "El código SMS ha caducado. Vuelve a enviar el código de verificación para volver a intentarlo."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Vendido por"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Algo salió mal. Por favor, inténtelo de nuevo más tarde."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Ordenar por"),
        "sortCode":
            MessageLookupByLibrary.simpleMessage("Código de ordenación"),
        "spanish": MessageLookupByLibrary.simpleMessage("Español"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Voz no disponible"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Empieza a explorar"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Empieza a comprar"),
        "state": MessageLookupByLibrary.simpleMessage("Estado"),
        "stateIsRequired": MessageLookupByLibrary.simpleMessage(
            "El campo provincia es obligatorio"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("Provincia"),
        "status": MessageLookupByLibrary.simpleMessage("Estado"),
        "stock": MessageLookupByLibrary.simpleMessage("Stock"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Cantidad de stock"),
        "stop": MessageLookupByLibrary.simpleMessage("Detener"),
        "store": MessageLookupByLibrary.simpleMessage("Tienda"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Dirección de la tienda"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Banner"),
        "storeBrand":
            MessageLookupByLibrary.simpleMessage("Marca de la tienda"),
        "storeClosed": MessageLookupByLibrary.simpleMessage(
            "La tienda está cerrada ahora"),
        "storeEmail":
            MessageLookupByLibrary.simpleMessage("Email de la tienda"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Información de la tienda"),
        "storeListBanner": MessageLookupByLibrary.simpleMessage(
            "Banner para la lista de tiendas"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Ubicación de la tienda"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Introduce dirección/ciudad"),
        "storeLogo":
            MessageLookupByLibrary.simpleMessage("Logotipo de la tienda"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Banner móvil para la tienda"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Configuración de la tienda"),
        "storeSliderBanner": MessageLookupByLibrary.simpleMessage(
            "Banner deslizante de la tienda"),
        "storeStaticBanner": MessageLookupByLibrary.simpleMessage(
            "Banner estático de la tienda"),
        "storeVacation":
            MessageLookupByLibrary.simpleMessage("Vacaciones de la tienda"),
        "stores": MessageLookupByLibrary.simpleMessage("Tiendas"),
        "street": MessageLookupByLibrary.simpleMessage("Calle"),
        "street2": MessageLookupByLibrary.simpleMessage("Calle # 2"),
        "streetIsRequired":
            MessageLookupByLibrary.simpleMessage("Calle es obligatorio"),
        "streetName": MessageLookupByLibrary.simpleMessage("Calle"),
        "streetNameApartment": MessageLookupByLibrary.simpleMessage("Vecindad"),
        "streetNameBlock":
            MessageLookupByLibrary.simpleMessage("# de Apartamento/Local"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Gracias por tu orden. Estamos trabajando rápidamente para procesar su pedido. Manténgase atento a un correo electrónico de confirmación en breve"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Envía su publicación"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "sunday": MessageLookupByLibrary.simpleMessage("Domingo"),
        "support": MessageLookupByLibrary.simpleMessage("Soporte"),
        "swahili": MessageLookupByLibrary.simpleMessage("Swahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("Sueco"),
        "tag": MessageLookupByLibrary.simpleMessage("Etiqueta"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Esta etiqueta no existe"),
        "tags": MessageLookupByLibrary.simpleMessage("Etiquetas"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Toma una foto"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tamil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Toca para seleccionar esta ubicación"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Toca el micrófono para hablar"),
        "tax": MessageLookupByLibrary.simpleMessage("Impuesto"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("Billetera Tera"),
        "terrible": MessageLookupByLibrary.simpleMessage("horrible"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Esta fecha no esta disponible"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Esta función no es compatible con el idioma actual"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Este es el rol del cliente."),
        "thisIsVendorRole": MessageLookupByLibrary.simpleMessage(
            "Este es el rol del proveedor."),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Esta plataforma no es compatible con webview"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Este producto no es compatible."),
        "thursday": MessageLookupByLibrary.simpleMessage("Jueves"),
        "tickets": MessageLookupByLibrary.simpleMessage("Tickets"),
        "time": MessageLookupByLibrary.simpleMessage("Hora"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Título: A - Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Título: Z - A"),
        "to": MessageLookupByLibrary.simpleMessage("a"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Demasiados intentos fallidos. Por favor, inténtelo de nuevo más tarde."),
        "topUp": MessageLookupByLibrary.simpleMessage("Top Up"),
        "topUpProductNotFound":
            MessageLookupByLibrary.simpleMessage("Top Up product not found"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "El valor total del pedido debe ser al menos"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Precio total"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Total impuestos"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("El número de seguimiento es"),
        "trackingPage":
            MessageLookupByLibrary.simpleMessage("Página de seguimiento"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transacción cancelada"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Detalle de la transacción"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("Transacción fallida"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("Transacción fallida"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Tarifa de transacción"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Resultado de la transacción"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transferir"),
        "transferConfirm": MessageLookupByLibrary.simpleMessage(
            "Confirmación de transferencia"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "No se puede transferir a este usuario"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Transferencia fallida"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Transferencia exitosa"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Martes"),
        "turkish": MessageLookupByLibrary.simpleMessage("Turca"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Encienda Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Escribe un mensaje ..."),
        "typeYourMessage":
            MessageLookupByLibrary.simpleMessage("Escribe tu mensaje aquí..."),
        "typing": MessageLookupByLibrary.simpleMessage("Escribiendo..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ucranio"),
        "unavailable": MessageLookupByLibrary.simpleMessage("No disponible"),
        "unblock": MessageLookupByLibrary.simpleMessage("Desatascar"),
        "unblockUser":
            MessageLookupByLibrary.simpleMessage("Desbloquear usuario"),
        "undo": MessageLookupByLibrary.simpleMessage("Deshacer"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Sin pagar"),
        "update": MessageLookupByLibrary.simpleMessage("Actualizar"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("¡Actualización fallida!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Actualiza información"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Actualiza contraseña"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Estado de actualización"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("¡Actualizado correctamente!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Actualiza perfil"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Cargar archivo"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Cargar imagen"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Cargar producto"),
        "uploading": MessageLookupByLibrary.simpleMessage("Cargando"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Usar ahora"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Usar esta imagen"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Este nombre de usuario / correo electrónico no está disponible."),
        "userHasBeenBlocked": MessageLookupByLibrary.simpleMessage(
            "El usuario ha sido bloqueado"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "El nombre de usuario o contraseña son incorrectos."),
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("No se encuentra el usuario"),
        "username": MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "¡Nombre de usuario ya en uso!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Se requiere nombre de usuario y contraseña"),
        "usernameInvalid": MessageLookupByLibrary.simpleMessage(
            "El nombre de usuario no es válido"),
        "usernameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Se requiere nombre de usuario"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Mensaje de vacaciones"),
        "vacationType":
            MessageLookupByLibrary.simpleMessage("Tipo de vacaciones"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variable"),
        "variation": MessageLookupByLibrary.simpleMessage("Variación"),
        "vendor": MessageLookupByLibrary.simpleMessage("Vendedor"),
        "vendorAdmin": MessageLookupByLibrary.simpleMessage("Vendor Admin"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Información del vendedor"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Código de verificación (6 dígitos)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Verificar"),
        "viaWallet":
            MessageLookupByLibrary.simpleMessage("A través de cartera"),
        "video": MessageLookupByLibrary.simpleMessage("Vídeo"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("vietnamita"),
        "view": MessageLookupByLibrary.simpleMessage("Ver"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Ver carrito"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Ver detalle"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Ver más"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Ver en Google Maps"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Ver pedido"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Ver transacciones recientes"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Visitar Tienda"),
        "waitForLoad":
            MessageLookupByLibrary.simpleMessage("Esperando carga de imagen"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Publicando producto..."),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Esperando confirmación"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Saldo de la cartera"),
        "walletBalanceWithValue": m51,
        "walletName":
            MessageLookupByLibrary.simpleMessage("Nombre de la cartera"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Encontramos Blog (s)"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Necesitamos acceso a la cámara para escanear el código QR o el código de barras."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Se ha enviado un código de autenticación a"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Te enviaremos notificaciones cuando haya nuevos productos disponibles u ofertas disponibles. Siempre puede cambiar esta tu perfil."),
        "webView": MessageLookupByLibrary.simpleMessage("Web View"),
        "website": MessageLookupByLibrary.simpleMessage("Sitio web"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Miércoles"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("¡Bienvenido!"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("¡bienvenido de nuevo!"),
        "welcomeRegister":
            MessageLookupByLibrary.simpleMessage("Empieza a comprar"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("¿Qué idioma prefieres?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Comuníquese con el administrador para aprobar su registro."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "No podrás enviar ni recibir mensajes de este usuario."),
        "withdrawAmount":
            MessageLookupByLibrary.simpleMessage("Retirar cantidad"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Petición de retiro"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Retiro"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Colecciones de Mujer"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Escribe tu comentario"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Escribe tu nota"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Si"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Solo puedes comprar en una única tienda."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Solo puedes comprar"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "No tienes permiso para crear publicaciones"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Has guardado la dirección en tu cuenta."),
        "youHaveNoPost":
            MessageLookupByLibrary.simpleMessage("No tienes publicaciones"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Tienes \$point de puntos"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("También podría gustarte..."),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Necesitas iniciar sesión para pagar"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "No se le preguntará la próxima vez"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Su cuenta está bajo revisión. Ponte en contacto con el administrador si necesitas ayuda."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Esta dirección existe en su cuenta"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "La dirección se ha guardado en tu almacenamiento local."),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Su solicitud está bajo revisión."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("El carrito está vacío"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("El detalle de su reserva"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Tus ganancias este mes"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Tu nota"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("Tu pedido ha sido agregado"),
        "yourOrderIsConfirmed":
            MessageLookupByLibrary.simpleMessage("¡Tu pedido está confirmado!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Tu pedido esta vacio"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Parece que no has agregado ningún elemento.\nEmpiece a comprar para completarlo."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Tus ordenes"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Su producto está bajo revisión"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Su nombre de usuario o correo electrónico"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Código Postal"),
        "zipCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "El campo del Código Postal es obligatorio")
      };
}
