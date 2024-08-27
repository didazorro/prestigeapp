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

  static String m0(limit) =>
      "Solo hay ${limit}x búsqueda de imágenes en la versión gratuita.";

  static String m1(limit) =>
      "Solo se pueden mostrar hasta ${limit} mensajes en la versión gratuita.";

  static String m2(date) => "Fecha de caducidad de la suscripción ${date}";

  static String m3(number) =>
      "Generar (${number} ${Intl.plural(number, one: 'time', other: 'times')})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_openai": MessageLookupByLibrary.simpleMessage("Acerca de"),
        "apply_openai": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "artist_openai": MessageLookupByLibrary.simpleMessage("Artista"),
        "cancel_openai": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "chatDetail_openai":
            MessageLookupByLibrary.simpleMessage("Detalle de chat"),
        "chatGPT_openai": MessageLookupByLibrary.simpleMessage("Chat GPT"),
        "chatWithBot_openai":
            MessageLookupByLibrary.simpleMessage("Chatear con Bot"),
        "chat_openai": MessageLookupByLibrary.simpleMessage("Charla"),
        "chooseArtist_openai": MessageLookupByLibrary.simpleMessage(
            "Elige artista para tu imagen"),
        "chooseDetail_openai": MessageLookupByLibrary.simpleMessage(
            "Elige detalle para tu imagen"),
        "chooseMedium_openai": MessageLookupByLibrary.simpleMessage(
            "Elija el medio para su imagen"),
        "chooseMood_openai": MessageLookupByLibrary.simpleMessage(
            "Elija el estado de ánimo para su imagen"),
        "chooseUseCase_openai":
            MessageLookupByLibrary.simpleMessage("Elegir caso de uso"),
        "choseStyle_openai": MessageLookupByLibrary.simpleMessage(
            "Elige el estilo para tu imagen"),
        "clearConfirm_openai": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de borrar el contenido?"),
        "clearContent_openai":
            MessageLookupByLibrary.simpleMessage("Borrar contenido"),
        "clearConversation_openai":
            MessageLookupByLibrary.simpleMessage("Conversación clara"),
        "clear_openai": MessageLookupByLibrary.simpleMessage("Claro"),
        "confirmDeleteItem_openai": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas eliminar este artículo?"),
        "confirmDelete_openai": MessageLookupByLibrary.simpleMessage(
            "Confirme si desea continuar con la eliminación de este elemento. No puede deshacer esta acción."),
        "confirmRemoveKey_openai": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de quitar la llave?"),
        "confirm_openai": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "copiedToClipboard_openai": MessageLookupByLibrary.simpleMessage(
            "Contenido copiado al portapapeles"),
        "copy_openai": MessageLookupByLibrary.simpleMessage("Dupdo"),
        "createChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("No se pudo crear el chat"),
        "deleteFailed_openai":
            MessageLookupByLibrary.simpleMessage("Eliminar fallido"),
        "delete_openai": MessageLookupByLibrary.simpleMessage("Borrar"),
        "detail_openai": MessageLookupByLibrary.simpleMessage("Detalle"),
        "download_openai": MessageLookupByLibrary.simpleMessage("Descargar"),
        "edit_openai": MessageLookupByLibrary.simpleMessage("Editar"),
        "failedToGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Error al generar"),
        "generate_openai": MessageLookupByLibrary.simpleMessage("Generar"),
        "grid_openai": MessageLookupByLibrary.simpleMessage("Cuadrícula"),
        "imageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generar imagen"),
        "imageSize_openai":
            MessageLookupByLibrary.simpleMessage("Tamaño de la imagen"),
        "inputKey_openai":
            MessageLookupByLibrary.simpleMessage("Clave de entrada"),
        "interest_openai": MessageLookupByLibrary.simpleMessage("Interesar"),
        "introAboutKey_openai": MessageLookupByLibrary.simpleMessage(
            "Su clave API se almacena localmente en su dispositivo móvil y nunca se envía a ningún otro lugar. Puede guardar su clave para usarla más tarde. También puede quitar su llave si ya no quiere usarla."),
        "invalidKey_openai":
            MessageLookupByLibrary.simpleMessage("Tecla inválida"),
        "jobRole_openai":
            MessageLookupByLibrary.simpleMessage("Puesto de trabajo"),
        "jobSkills_openai":
            MessageLookupByLibrary.simpleMessage("Habilidades de trabajo"),
        "layoutStyle_openai":
            MessageLookupByLibrary.simpleMessage("Estilo de Diseño"),
        "limitImage_openai": m0,
        "limitTheText_openai": m1,
        "listening_openai":
            MessageLookupByLibrary.simpleMessage("Escuchando..."),
        "loadKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Error al cargar la clave"),
        "loadKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Cargar clave correcta"),
        "manage_openai": MessageLookupByLibrary.simpleMessage("Gestionar"),
        "medium_openai": MessageLookupByLibrary.simpleMessage("Medio"),
        "mood_openai": MessageLookupByLibrary.simpleMessage("Estado animico"),
        "moreOptions_openai":
            MessageLookupByLibrary.simpleMessage("Mas opciones"),
        "newChat_openai":
            MessageLookupByLibrary.simpleMessage("Nueva conversacion"),
        "noImageGenerate_openai":
            MessageLookupByLibrary.simpleMessage("No se genera imagen"),
        "numberOfImagesCondition_openai": MessageLookupByLibrary.simpleMessage(
            "El número de imágenes a generar. Debe estar entre 1 y 10."),
        "numberOfImages_openai":
            MessageLookupByLibrary.simpleMessage("Número de imágenes"),
        "options_openai": MessageLookupByLibrary.simpleMessage("Opciones"),
        "page_openai": MessageLookupByLibrary.simpleMessage("Página"),
        "pleaseCheckConnection_openai": MessageLookupByLibrary.simpleMessage(
            "¡Por favor, compruebe la conexión y vuelva a intentarlo!"),
        "pleaseInputFillAllFields_openai": MessageLookupByLibrary.simpleMessage(
            "Por favor rellena todos los campos"),
        "pleaseInputKey_openai":
            MessageLookupByLibrary.simpleMessage("Por favor ingrese la clave"),
        "prompt_openai": MessageLookupByLibrary.simpleMessage("Rápido"),
        "putKeyHere_openai":
            MessageLookupByLibrary.simpleMessage("Pon tu llave aquí"),
        "regenerateResponse_openai":
            MessageLookupByLibrary.simpleMessage("Regenerar respuesta"),
        "remaining_openai": MessageLookupByLibrary.simpleMessage("Restante"),
        "removeKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("No se pudo quitar la clave"),
        "removeKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Clave eliminada con éxito"),
        "remove_openai": MessageLookupByLibrary.simpleMessage("retirar"),
        "resetSettings_openai":
            MessageLookupByLibrary.simpleMessage("Reiniciar ajustes"),
        "reset_openai": MessageLookupByLibrary.simpleMessage("Reiniciar"),
        "saveKeyFailed_openai":
            MessageLookupByLibrary.simpleMessage("Guardar clave fallida"),
        "saveKeySuccess_openai":
            MessageLookupByLibrary.simpleMessage("Clave guardada con éxito"),
        "saveKey_openai": MessageLookupByLibrary.simpleMessage("Guardar clave"),
        "save_openai": MessageLookupByLibrary.simpleMessage("Salvar"),
        "searchByPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Buscar por solicitud..."),
        "sectionKeywords_openai": MessageLookupByLibrary.simpleMessage(
            "Palabras clave de la sección"),
        "sectionTopic_openai":
            MessageLookupByLibrary.simpleMessage("Sección Tema"),
        "selectChatFailed_openai":
            MessageLookupByLibrary.simpleMessage("Seleccionar chat fallido"),
        "selectPrompt_openai":
            MessageLookupByLibrary.simpleMessage("Seleccionar mensaje"),
        "settings_openai": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "share_openai": MessageLookupByLibrary.simpleMessage("Compartir"),
        "skills_openai": MessageLookupByLibrary.simpleMessage("Habilidades"),
        "somethingWentWrong_openai":
            MessageLookupByLibrary.simpleMessage("¡¡¡Algo salió mal!!!"),
        "somethingWhenWrong_openai": MessageLookupByLibrary.simpleMessage(
            "¡Algo salió mal! Por favor, inténtelo de nuevo más tarde. ¡Muchas gracias!"),
        "speechNotAvailable_openai":
            MessageLookupByLibrary.simpleMessage("Voz no disponible"),
        "style_openai": MessageLookupByLibrary.simpleMessage("estilo"),
        "subscriptionExpiredDate_openai": m2,
        "tapTheMicToTalk_openai": MessageLookupByLibrary.simpleMessage(
            "Toca el micrófono para hablar"),
        "textGenerate_openai":
            MessageLookupByLibrary.simpleMessage("Generar texto"),
        "textGenerator_openai":
            MessageLookupByLibrary.simpleMessage("Generador de texto"),
        "timeGenerate_openai": m3,
        "typeAMessage_openai":
            MessageLookupByLibrary.simpleMessage("Escribe un mensaje ..."),
        "viewType_openai":
            MessageLookupByLibrary.simpleMessage("Tipo de vista"),
        "view_openai": MessageLookupByLibrary.simpleMessage("Ver"),
        "write_openai": MessageLookupByLibrary.simpleMessage("escribir")
      };
}
