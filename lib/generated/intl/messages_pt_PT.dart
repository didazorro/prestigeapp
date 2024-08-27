// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_PT locale. All the
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
  String get localeName => 'pt_PT';

  static String m0(x) => "Ativo ${x}";

  static String m1(attribute) => "Qualquer ${attribute}";

  static String m2(point) => "Seus pontos disponíveis: ${point}";

  static String m3(state) => "Adaptador Bluetooth é ${state}";

  static String m4(author) => "Autor: ${author}";

  static String m5(currency) => "Moeda alterada para ${currency}";

  static String m6(number) => "${number} caracteres restantes";

  static String m7(priceRate, pointRate) =>
      "${priceRate} = ${pointRate} Pontos";

  static String m8(count) => "${count} item";

  static String m9(count) => " ${count} itens";

  static String m10(count) => "${count} item";

  static String m11(count) => "${count} itens";

  static String m12(country) => "${country} país não é compatível";

  static String m13(currency) => "${currency} não é compatível";

  static String m14(day) => "${day} dias atrás";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Termina em ${timeLeft}";

  static String m17(captcha) => "Insira ${captcha} para confirmar:";

  static String m18(message) => "Erro: ${message}";

  static String m19(message) => "Erro: ${message}";

  static String m20(time) => "Expirando em ${time}";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "${hour} horas atrás";

  static String m23(currentBalance) =>
      "Você só tem ${currentBalance} na sua carteira";

  static String m24(count) =>
      " ${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m25(message) =>
      "Há um problema com o aplicativo durante a solicitação dos dados, entre em contacto com o administrador para corrigir os problemas: ${message}";

  static String m26(currency, amount) =>
      "O valor máximo para usar este pagamento é ${currency} ${amount}";

  static String m27(size) => "Tamanho máximo do arquivo: ${size} MB";

  static String m28(currency, amount) =>
      "O valor mínimo para usar este pagamento é ${currency} ${amount}";

  static String m29(minute) => "${minute} minutos atrás";

  static String m30(month) => "${month} meses atrás";

  static String m31(store) => "Mais de ${store}";

  static String m32(number) => "deve ser comprado em grupos de ${number}";

  static String m33(itemCount) => " ${itemCount} itens";

  static String m34(price) => "Opções totais: ${price}";

  static String m35(amount) => "Pague ${amount}";

  static String m36(name) =>
      "${name} foram adicionados ao carrinho com sucesso";

  static String m37(total) => "Qtd: ${total}";

  static String m38(name) => "Recebeu dinheiro de ${name}";

  static String m39(percent) => "Poupe ${percent}%";

  static String m40(keyword) => "Resultados da pesquisa para: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} item)";

  static String m42(keyword, count) => "${keyword} (${count} itens)";

  static String m43(second) => "${second} segundos atrás";

  static String m44(totalCartQuantity) =>
      "Carrinho de compras, ${totalCartQuantity} itens";

  static String m45(numberOfUnitsSold) => "Vendido: ${numberOfUnitsSold}";

  static String m46(fieldName) => "O campo ${fieldName} é obrigatório";

  static String m47(total) => " ${total} produtos";

  static String m48(name) => "Transferir dinheiro para ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Use no máximo ${maxPointDiscount} Pontos para um desconto de ${maxPriceDiscount} neste pedido!";

  static String m50(date) => "Válido até ${date}";

  static String m51(balance) => "Saldo da carteira: ${balance}";

  static String m52(message) => "Aviso: ${message}";

  static String m53(defaultCurrency) =>
      "A moeda selecionada atualmente não está disponível para o recurso Wallet, altere-a para ${defaultCurrency}";

  static String m54(length) => "Encontramos ${length} produtos";

  static String m55(week) => "Semana ${week}";

  static String m56(name) => "Bem-vindo ${name}";

  static String m57(year) => "${year} anos atrás";

  static String m58(total) => "O pedido nº${total} foi atribuído";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Sobre nós"),
        "account": MessageLookupByLibrary.simpleMessage("Conta"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("Em aprovação"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Excluir sua conta remove as  suas informações pessoais de nosso banco de dados."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "A conta está pendente de aprovação."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Número da conta"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Definições da conta"),
        "active": MessageLookupByLibrary.simpleMessage("Ativo"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Ativo há muito tempo"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Ativo agora"),
        "addAName": MessageLookupByLibrary.simpleMessage("Adicione um nome"),
        "addANewPost":
            MessageLookupByLibrary.simpleMessage("Adicionar uma nova postagem"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Adicionar Slug"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Adicionar um atributo"),
        "addListing": MessageLookupByLibrary.simpleMessage("Adicionar lista"),
        "addMessage":
            MessageLookupByLibrary.simpleMessage("Adiciona uma mensagem"),
        "addNew": MessageLookupByLibrary.simpleMessage("Adicionar novo"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Adicionar novo endereço"),
        "addNewBlog":
            MessageLookupByLibrary.simpleMessage("Adicionar Novo Blog"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Criar nova postagem"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Adicionar produto"),
        "addToCart":
            MessageLookupByLibrary.simpleMessage("Adicionar ao carrinho"),
        "addToCartMaximum": MessageLookupByLibrary.simpleMessage(
            "A quantidade máxima foi excedida"),
        "addToCartSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Adicionado ao carrinho com sucesso"),
        "addToOrder":
            MessageLookupByLibrary.simpleMessage("Adicionar ao pedido"),
        "addToQuoteRequest": MessageLookupByLibrary.simpleMessage(
            "Adicionar à solicitação de orçamento"),
        "addToWishlist": MessageLookupByLibrary.simpleMessage(
            "Adicionar a lista de desejos"),
        "added": MessageLookupByLibrary.simpleMessage("Adicionado"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Adicionado com sucesso"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Adicionando sua imagem"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("informação adicional"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Serviços adicionais"),
        "address": MessageLookupByLibrary.simpleMessage("Endereço"),
        "adults": MessageLookupByLibrary.simpleMessage("Adultos"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Tarde"),
        "agree": MessageLookupByLibrary.simpleMessage("Aceita"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Privacidade e prazo"),
        "albanian": MessageLookupByLibrary.simpleMessage("albanês"),
        "all": MessageLookupByLibrary.simpleMessage("Todos"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Todas as marcas"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Todos os pedidos"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Últimas vendas"),
        "allProducts":
            MessageLookupByLibrary.simpleMessage("Todos os produtos"),
        "allow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "allowCameraAccess":
            MessageLookupByLibrary.simpleMessage("Permitir acesso à câmara?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Quase esgotado"),
        "amazing": MessageLookupByLibrary.simpleMessage("Surpreendente"),
        "amount": MessageLookupByLibrary.simpleMessage("Montante"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Aparência"),
        "apply": MessageLookupByLibrary.simpleMessage("Aplique"),
        "approve": MessageLookupByLibrary.simpleMessage("Aprovar"),
        "approved": MessageLookupByLibrary.simpleMessage("Aprovado"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Solicitações aprovadas"),
        "arabic": MessageLookupByLibrary.simpleMessage("árabe"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Tem a certeza?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Tem certeza que deseja excluir a sua conta?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Tem certeza que deseja sair?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Você tem certeza que quer sair?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Atribuído"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Pelo menos 3 caracteres ..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Atributo"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Atributo já existe"),
        "attributes": MessageLookupByLibrary.simpleMessage("Atributos"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Item (ns) de áudio detectado (s). Deseja adicionar ao reprodutor de áudio?"),
        "availability": MessageLookupByLibrary.simpleMessage("Disponibilidade"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Disponibilidade: "),
        "availablePoints": m2,
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Classificação média"),
        "back": MessageLookupByLibrary.simpleMessage("Voltar"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Em espera"),
        "backToShop":
            MessageLookupByLibrary.simpleMessage("Voltar para a loja"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Voltar para a carteira"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Coleções de engrenagens"),
        "balance": MessageLookupByLibrary.simpleMessage("Equilibrar"),
        "bank": MessageLookupByLibrary.simpleMessage("Banco"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Tipo de lista de banner"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Tipo de Banner"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("URL do banner do Youtube"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Informação básica"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Torne-se um vendedor"),
        "bengali": MessageLookupByLibrary.simpleMessage("bengali"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Endereço de cobrança"),
        "bleHasNotBeenEnabled": MessageLookupByLibrary.simpleMessage(
            "Bluetooth não foi habilitado"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Bloquear"),
        "blockUser": MessageLookupByLibrary.simpleMessage("Bloquear usuário"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Já reservado"),
        "booking": MessageLookupByLibrary.simpleMessage("Reserva"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Cancelamento de reserva"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Confirmado"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Erro. Por favor, tente novamente mais tarde."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Histórico de Reservas"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Reserve agora"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Reservado com sucesso"),
        "bookingSummary": MessageLookupByLibrary.simpleMessage("Sumário"),
        "bookingUnavailable": MessageLookupByLibrary.simpleMessage(
            "A reserva não está disponível"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bósnio"),
        "branch": MessageLookupByLibrary.simpleMessage("Ramo"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Desculpe, o carrinho de compras será esvaziado devido à mudança de região. Teremos prazer em contatá-lo se precisar de ajuda."),
        "brand": MessageLookupByLibrary.simpleMessage("marca"),
        "brands": MessageLookupByLibrary.simpleMessage("Marcas"),
        "brazil": MessageLookupByLibrary.simpleMessage("português"),
        "burmese": MessageLookupByLibrary.simpleMessage("birmanês"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Compre"),
        "by": MessageLookupByLibrary.simpleMessage("Por"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Somente com agendamento"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Por marca"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Por categoria"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Por preço"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Ao se inscrever, concorda com os nossos"),
        "byTag": MessageLookupByLibrary.simpleMessage("Por Tag"),
        "call": MessageLookupByLibrary.simpleMessage("Ligar"),
        "callTo": MessageLookupByLibrary.simpleMessage("Faça uma chamada para"),
        "callToVendor":
            MessageLookupByLibrary.simpleMessage("Ligue para o dono da loja"),
        "canNotCreateOrder": MessageLookupByLibrary.simpleMessage(
            "Não é possível criar o pedido"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "Não é possível criar o usuário."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Não consigo obter as formas de pagamento"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Não é possível obter métodos de envio"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Não é possível obter informações do token."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Não é possível iniciar este aplicativo, verifique se suas definições no config.dart estão corretas"),
        "canNotLoadThisLink": MessageLookupByLibrary.simpleMessage(
            "Não é possível carregar este link"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Desculpe, este vídeo não pode ser reproduzido."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Não é possível salvar o pedido no site"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Não é possível atualizar as informações do usuário."),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("Solicitações canceladas"),
        "cannotDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Esta conta não pode ser excluída"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "Você não pode enviar mensagens para este usuário"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Não consigo encontrar este ID de pedido"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Data no passado não é permitida"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Titular do cartão"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Número do cartão"),
        "cart": MessageLookupByLibrary.simpleMessage("carrinho"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Desconto no carrinho"),
        "cash": MessageLookupByLibrary.simpleMessage("Dinheiro"),
        "categories": MessageLookupByLibrary.simpleMessage("Categorias"),
        "category": MessageLookupByLibrary.simpleMessage("Categoria"),
        "change": MessageLookupByLibrary.simpleMessage("MUDANÇA"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Mudar idioma"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Mudar impressora"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Bate-papo"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Bate-papo GPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Mensagens"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Inicie conversa via Facebook Messenger"),
        "chatViaWhatApp": MessageLookupByLibrary.simpleMessage(
            "Inicie conversa via WhatsApp"),
        "chatWithBot":
            MessageLookupByLibrary.simpleMessage("Bate-papo com bot"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Converse com o proprietário da loja"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Verifique seu e-mail para o link de confirmação"),
        "checking": MessageLookupByLibrary.simpleMessage("verificando ..."),
        "checkout":
            MessageLookupByLibrary.simpleMessage("Prosseguir para o checkout"),
        "chinese": MessageLookupByLibrary.simpleMessage("chinês"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Chinês simplificado)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Chinês tradicional)"),
        "chooseBranch":
            MessageLookupByLibrary.simpleMessage("Escolha a filial"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("escolher categoria"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Escolha da galeria"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Escolha do servidor"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Escolha o plano"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Escolha a equipe"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Escolha o tipo"),
        "chooseYourPaymentMethod": MessageLookupByLibrary.simpleMessage(
            "Escolha o seu método de pagamento"),
        "city": MessageLookupByLibrary.simpleMessage("Cidade"),
        "cityIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo da cidade é obrigatório"),
        "clear": MessageLookupByLibrary.simpleMessage("Limpar"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Limpar Carrinho"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Limpar conversa"),
        "close": MessageLookupByLibrary.simpleMessage("Perto"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Fechado agora"),
        "closed": MessageLookupByLibrary.simpleMessage("Fechadas"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage("Taxa Extra COD"),
        "color": MessageLookupByLibrary.simpleMessage("Cor"),
        "comment": MessageLookupByLibrary.simpleMessage("Comentar"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Por favor, escreva seu comentário"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Comentou com sucesso, por favor aguarde até que seu comentário seja aprovado"),
        "complete": MessageLookupByLibrary.simpleMessage("Completar"),
        "confirm": MessageLookupByLibrary.simpleMessage("confirme"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Confirme a exclusão da conta"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "O carrinho será liberado ao recarregar."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Tem a certeza de que deseja limpar o carrinho?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja excluir isso? Essa ação não pode ser desfeita."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja excluir este item?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirme a Senha"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo de confirmação da senha é obrigatório"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja remover este produto?"),
        "connect": MessageLookupByLibrary.simpleMessage("Conectar"),
        "contact": MessageLookupByLibrary.simpleMessage("Contacto"),
        "content": MessageLookupByLibrary.simpleMessage("Conteúdo"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Continue comprando"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Continuar para o pagamento"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Continuar para visualização"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Continuar para envio"),
        "continues": MessageLookupByLibrary.simpleMessage("Continuar"),
        "conversations": MessageLookupByLibrary.simpleMessage("Conversas"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("copiado"),
        "copy": MessageLookupByLibrary.simpleMessage("cópia de"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Todos os direitos reservados."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("País"),
        "countryCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "O código do país é obrigatório"),
        "countryIsNotSupported": m12,
        "countryIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do país é obrigatório"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Código do cupom"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "O cupom foi salvo com sucesso."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Seu código de cupom é inválido"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Parabéns! Código de cupom aplicado com sucesso"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Crie a sua conta aqui"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Sua postagem foi criada com sucesso como rascunho. Por favor, dê uma olhada em seu site de administração."),
        "createPost": MessageLookupByLibrary.simpleMessage("Criar postagem"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Criar produto"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Obrigado pela sua avaliação"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Nós realmente apreciamos sua contribuição e valorizamos sua contribuição para nos ajudar a melhorar"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Criar todas as variantes"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Criado em:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Moedas"),
        "currencyIsNotSupported": m13,
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Palavra-passe atual"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("No momento só temos"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Detalhe do cliente"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Nota do Cliente"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Tcheco"),
        "danish": MessageLookupByLibrary.simpleMessage("dinamarquês"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Tema escuro"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Painel de controlo"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Dados vazios"),
        "date": MessageLookupByLibrary.simpleMessage("Encontro"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Data crescente"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Reserva de data"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Data decrescente"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Data final"),
        "dateLatest":
            MessageLookupByLibrary.simpleMessage("Data: Mais recente"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Data: Mais antiga"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Data de Início"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Data hora"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Data sábio fechar"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Débito"),
        "decline": MessageLookupByLibrary.simpleMessage("Declínio"),
        "delete": MessageLookupByLibrary.simpleMessage("Excluir"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("deletar conta"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja excluir sua conta? Por favor, leia como a exclusão da conta afetará."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Conta excluída com sucesso. Sua sessão expirou."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Excluir tudo"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Excluir conversa"),
        "delivered": MessageLookupByLibrary.simpleMessage("Entregue"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Entregue a"),
        "delivering": MessageLookupByLibrary.simpleMessage("entregando"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Entregador:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Data de entrega"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Detalhes da Entrega"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("entrega"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Sem dados.\nEste pedido foi removido."),
        "description": MessageLookupByLibrary.simpleMessage("Descrição"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Por favor insira ou selecione o voucher para o seu pedido."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Não recebeu o código?"),
        "direction": MessageLookupByLibrary.simpleMessage("Direção"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Desativar compra"),
        "discount": MessageLookupByLibrary.simpleMessage("Desconto"),
        "displayName": MessageLookupByLibrary.simpleMessage("Mostrar nome"),
        "distance": m15,
        "doNotAnyTransactions":
            MessageLookupByLibrary.simpleMessage("Ainda não possui transações"),
        "doYouWantToExitApp":
            MessageLookupByLibrary.simpleMessage("Deseja sair do aplicativo"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Quer sair sem enviar sua avaliação?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Deseja sair?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Você quer desbloquear este usuário?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay não é suportado. Por favor, verifique sua carteira e cartão"),
        "done": MessageLookupByLibrary.simpleMessage("Feito"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Não tem uma conta?"),
        "download": MessageLookupByLibrary.simpleMessage("Descarregar"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Baixar aplicativo"),
        "draft": MessageLookupByLibrary.simpleMessage("Esboço, projeto"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Motorista atribuído"),
        "duration": MessageLookupByLibrary.simpleMessage("Duração"),
        "dutch": MessageLookupByLibrary.simpleMessage("holandês"),
        "earnings": MessageLookupByLibrary.simpleMessage("Ganhos"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar:"),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Editar Informações do Produto"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Editar"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egito"),
        "email": MessageLookupByLibrary.simpleMessage("O email"),
        "emailAddressInvalid":
            MessageLookupByLibrary.simpleMessage("Endereço de e-mail inválido"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-mail já em uso!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "A exclusão de sua conta cancelará sua inscrição em todas as listas de e-mail."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "O email que inseriu não existe. Por favor, tente novamente."),
        "emailIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do email é obrigatório"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("Assinatura de e-mail"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Parece que você ainda não fez nenhuma reserva.\nComece a explorar e faça sua primeira reserva!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Carrinho vazio"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Parece que ainda não adicionou nenhum item ao carrinho. Comece a comprar para preenche-lo."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Ops! Seu carrinho está um pouco leve.\n\nPronto para comprar algo fabuloso?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Seu comentário não pode estar vazio"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Ainda não procurou por itens. Comece agora"),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Não há opções de envio disponíveis. Certifique-se de que seu endereço foi inserido corretamente ou entre em contacto conosco se precisar de ajuda."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "O nome de usuário/e-mail está vazio"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Lista de desejos vazia"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Toque no coração ao lado de um produto para adiciona-lo como favorito. Ficarão salvos para si aqui!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Sua lista de desejos está vazia no momento.\nComece a adicionar produtos agora!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Habilitar para Check-out"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Ativar para login"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Ativar para Carteira"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Ativar modo férias"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Selecione uma data após a primeira data"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Inglês"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Insira o valor"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Insira um endereço de e-mail para cada destinatário"),
        "enterSentCode": MessageLookupByLibrary.simpleMessage(
            "Insira o código enviado para"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Insira o código do voucher"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Insira seu email"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Insira seu e-mail ou nome de usuário"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Digite seu primeiro nome"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Digite seu sobrenome"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Por favor, insira o seu número de telefone"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Insira a sua palavra-passe"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Insira o seu número de telefone para começar."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Digite seu número de telefone"),
        "enterYourUsername":
            MessageLookupByLibrary.simpleMessage("Digite seu nome de usuário"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "O valor inserido é maior do que o valor da carteira atual. Por favor, tente novamente!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Por favor insira um endereço de e-mail válido."),
        "errorMsg": m19,
        "errorOnGettingPost":
            MessageLookupByLibrary.simpleMessage("Erro ao obter a postagem!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Digite uma palavra-passe de pelo menos 8 caracteres"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Erro"),
        "evening": MessageLookupByLibrary.simpleMessage("Noite"),
        "events": MessageLookupByLibrary.simpleMessage("Eventos"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("data prevista de entrega"),
        "expired": MessageLookupByLibrary.simpleMessage("Expirado"),
        "expiredDate": MessageLookupByLibrary.simpleMessage("Data expirada"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM / AA"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Explorar agora"),
        "external": MessageLookupByLibrary.simpleMessage("Externo"),
        "extraServices": MessageLookupByLibrary.simpleMessage("Serviços Extra"),
        "failToAssign":
            MessageLookupByLibrary.simpleMessage("Falha ao atribuir usuário"),
        "failedToGenerateLink":
            MessageLookupByLibrary.simpleMessage("Falha ao gerar link"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Falha ao carregar a configuração do aplicativo. Tente novamente ou reinicie seu aplicativo."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("Falha ao carregar a imagem"),
        "fair": MessageLookupByLibrary.simpleMessage("Justo"),
        "favorite": MessageLookupByLibrary.simpleMessage("favorito"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Recurso não disponível"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Produtos de destaque"),
        "featured": MessageLookupByLibrary.simpleMessage("DESTAQUE"),
        "features": MessageLookupByLibrary.simpleMessage("Características"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "O arquivo é muito grande. Escolha um arquivo menor!"),
        "fileUploadFailed":
            MessageLookupByLibrary.simpleMessage("Falha no upload do arquivo!"),
        "files": MessageLookupByLibrary.simpleMessage("Arquivos"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Impressões digitais, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Concluir configuração"),
        "finnish": MessageLookupByLibrary.simpleMessage("finlandês"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Seja o primeiro a comentar este post!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Primeiro nome"),
        "firstNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "O primeiro campo de nome é obrigatório"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Primeira Renovação"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Desconto fixo no carrinho"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Desconto Fixo do Produto"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("para este produto"),
        "free": MessageLookupByLibrary.simpleMessage("Livre"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Grátis"),
        "french": MessageLookupByLibrary.simpleMessage("francês"),
        "friday": MessageLookupByLibrary.simpleMessage("Sexta-feira"),
        "from": MessageLookupByLibrary.simpleMessage("De"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nome completo"),
        "gallery": MessageLookupByLibrary.simpleMessage("galeria"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Configuração geral"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Gerando link..."),
        "german": MessageLookupByLibrary.simpleMessage("alemão"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Receber notificação"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Seja notificado!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Obter link de palavra-passe"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Iniciar"),
        "goBack": MessageLookupByLibrary.simpleMessage("Volte"),
        "goBackHomePage": MessageLookupByLibrary.simpleMessage(
            "Voltar para a página inicial"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Voltar para o endereço"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Volte para revisar"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Voltar para o frete"),
        "good": MessageLookupByLibrary.simpleMessage("BOA"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("grego"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Vendas Brutas"),
        "grouped": MessageLookupByLibrary.simpleMessage("Agrupado"),
        "guests": MessageLookupByLibrary.simpleMessage("Convidados"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("foi deletado"),
        "hebrew": MessageLookupByLibrary.simpleMessage("hebraico"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Esconder Sobre"),
        "hideAddress":
            MessageLookupByLibrary.simpleMessage("Endereço escondido"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Esconder e-mail"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Ocultar mapa"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Ocultar telefone"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Ocultar política"),
        "hindi": MessageLookupByLibrary.simpleMessage("hindi"),
        "history": MessageLookupByLibrary.simpleMessage("história"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("história"),
        "home": MessageLookupByLibrary.simpleMessage("Página Inicial"),
        "hour": MessageLookupByLibrary.simpleMessage("hora"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("húngaro"),
        "hungary": MessageLookupByLibrary.simpleMessage("húngaro"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Concordo com"),
        "imIn": MessageLookupByLibrary.simpleMessage("Sim"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Característica de imagem"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("Galeria de imagens"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("Geração de imagem"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Rede de imagens"),
        "inStock": MessageLookupByLibrary.simpleMessage("Em stock"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Palavra-passe incorreta"),
        "india": MessageLookupByLibrary.simpleMessage("hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("indonésio"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Tabela de informações"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Por favor, instale o plugin DIGITS: Wordpress Mobile Number Signup and Login"),
        "instantlyClose":
            MessageLookupByLibrary.simpleMessage("Fechar instantaneamente"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telefone inválido"),
        "invalidSMSCode": MessageLookupByLibrary.simpleMessage(
            "Código de verificação de SMS inválido"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Ano de nascimento inválido"),
        "invoice": MessageLookupByLibrary.simpleMessage("FATURA"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Está tudo certo ...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("está digitando..."),
        "italian": MessageLookupByLibrary.simpleMessage("italiano"),
        "item": MessageLookupByLibrary.simpleMessage("Item"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Total de itens:"),
        "items": MessageLookupByLibrary.simpleMessage("Unid"),
        "itsOrdered":
            MessageLookupByLibrary.simpleMessage("Pedido finalizado!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Desejo criar uma conta"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonês"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Manter"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("Coreano"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Curdo"),
        "language": MessageLookupByLibrary.simpleMessage("Idiomas"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "O idioma foi alterado com sucesso"),
        "lao": MessageLookupByLibrary.simpleMessage("Laos"),
        "lastName": MessageLookupByLibrary.simpleMessage("Último nome"),
        "lastNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do apelido é obrigatório"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Últimas transações"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Produtos Mais recentes"),
        "layout": MessageLookupByLibrary.simpleMessage("Layouts"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Tema claro"),
        "link": MessageLookupByLibrary.simpleMessage("Ligação"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Tipo de banner de lista"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Lista de vídeo de banner"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Notificar mensagens"),
        "listening": MessageLookupByLibrary.simpleMessage("Audição..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Erro de carregamento!"),
        "loading": MessageLookupByLibrary.simpleMessage("A carregar..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("A carregar link..."),
        "location": MessageLookupByLibrary.simpleMessage("Localização"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Ecrã de bloqueio e segurança"),
        "login": MessageLookupByLibrary.simpleMessage("Iniciar sessão"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("Início de sessão cancelado"),
        "loginErrorServiceProvider": m25,
        "loginFailed":
            MessageLookupByLibrary.simpleMessage("Falha na autenticação!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Não consigo acessar! Entre em contacto com o administrador para verificar sua conta/função."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Login com sucesso!"),
        "loginToComment":
            MessageLookupByLibrary.simpleMessage("Inicie sessão para comentar"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Inicise sessão para continuar"),
        "loginToReview":
            MessageLookupByLibrary.simpleMessage("Faça login para revisar"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Faça login na sua conta"),
        "logout": MessageLookupByLibrary.simpleMessage("Sair"),
        "malay": MessageLookupByLibrary.simpleMessage("malaio"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Coleções de homem"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Gerenciar chave de API"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Gerenciar stock"),
        "map": MessageLookupByLibrary.simpleMessage("Mapa"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Marcar como Lido"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Marcar como enviado"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Marcar como não Lido"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("TALVEZ MAIS TARDE"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Ordem"),
        "menus": MessageLookupByLibrary.simpleMessage("Menus"),
        "message": MessageLookupByLibrary.simpleMessage("Mensagem"),
        "messageTo":
            MessageLookupByLibrary.simpleMessage("Enviar mensagem para"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("A quantidade mínima é"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Móvel"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("É necessário ter celular"),
        "mobileNumberInUse": MessageLookupByLibrary.simpleMessage(
            "Número de celular já em uso!"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Verificação de celular"),
        "momentAgo":
            MessageLookupByLibrary.simpleMessage("há um momento atrás"),
        "monday": MessageLookupByLibrary.simpleMessage("segunda-feira"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...Mais"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Mais informações"),
        "morning": MessageLookupByLibrary.simpleMessage("Manhã"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Deve selecionar 1 item"),
        "myCart": MessageLookupByLibrary.simpleMessage("Meu carrinho"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Meu pedido"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Meus pontos"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Meus produtos"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Não tem nenhum produto. Tente criar um!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Minha carteira"),
        "myWishList":
            MessageLookupByLibrary.simpleMessage("Minha Lista de Desejos"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Nome"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Nome no cartão"),
        "nearbyPlaces":
            MessageLookupByLibrary.simpleMessage("Lugares proximos"),
        "needHelp": MessageLookupByLibrary.simpleMessage("Preciso de ajuda?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Volte a iniciar sessão para efetuar a atualização"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Holandês"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Novo conteúdo disponível!"),
        "newPassword":
            MessageLookupByLibrary.simpleMessage("Nova Palavra-Passe"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Nova variação"),
        "next": MessageLookupByLibrary.simpleMessage("Próximo"),
        "niceName": MessageLookupByLibrary.simpleMessage("Nome legal"),
        "no": MessageLookupByLibrary.simpleMessage("Não"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Nenhum endereço foi salvo ainda."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Nenhum item de histórico anterior"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Ops, o blog parece não existir mais"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Nenhuma permissão de câmara é concedida. Por favor, conceda-o nas definições do seu dispositivo."),
        "noComments": MessageLookupByLibrary.simpleMessage("Sem comentários"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Nenhuma conversa ainda"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Aparecerá quando alguém começar a conversar com você"),
        "noData": MessageLookupByLibrary.simpleMessage("Sem mais dados"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Ainda não há favoritos."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Nenhum arquivo para descarregar."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Nenhum item de histórico de encaminhamento"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Sem conexão com a Internet"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("Nenhuma listagem por perto!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Sem pedidos"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "Não há métodos de pagamento disponíveis."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Desculpe, este produto não está acessível para sua função atual."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Este produto está disponível para usuários com funções específicas. Faça login com as credenciais apropriadas para acessar este produto ou entre em contato conosco para obter mais informações."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Faça login com as credenciais apropriadas para acessar este produto ou entre em contato conosco para obter mais informações."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Opps, esta página parece não existir mais!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Sem impressoras"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Sem produto"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Nenhum resultado encontrado"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Sem comentários"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Nenhum slot disponível"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("Nenhuma loja por perto!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Não há sugestões"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Não, obrigado"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Desculpe, nenhuma transação foi encontrada!"),
        "noVideoFound": MessageLookupByLibrary.simpleMessage(
            "Desculpe, nenhum vídeo encontrado."),
        "none": MessageLookupByLibrary.simpleMessage("Nenhum"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Desculpe, não encontramos nenhum resultado."),
        "notFound": MessageLookupByLibrary.simpleMessage("Não encontrado"),
        "notRated": MessageLookupByLibrary.simpleMessage("não avaliado"),
        "note": MessageLookupByLibrary.simpleMessage("Nota de pedido"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("Nota"),
        "noteTransfer": MessageLookupByLibrary.simpleMessage("Nota (opcional)"),
        "notice": MessageLookupByLibrary.simpleMessage("Aviso prévio"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificações"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Notifique as últimas ofertas e disponibilidade do produto"),
        "ofThisProduct": MessageLookupByLibrary.simpleMessage("deste produto"),
        "ok": MessageLookupByLibrary.simpleMessage("Está bem"),
        "on": MessageLookupByLibrary.simpleMessage("em"),
        "onSale": MessageLookupByLibrary.simpleMessage("À venda"),
        "onVacation": MessageLookupByLibrary.simpleMessage("De férias"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 para cada destinatário"),
        "online": MessageLookupByLibrary.simpleMessage("Conectados"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Aberto 24h"),
        "openMap": MessageLookupByLibrary.simpleMessage("Mapa"),
        "openNow": MessageLookupByLibrary.simpleMessage("Abra agora"),
        "openingHours":
            MessageLookupByLibrary.simpleMessage("Horário de abertura"),
        "optional": MessageLookupByLibrary.simpleMessage("Opcional"),
        "options": MessageLookupByLibrary.simpleMessage("Opções"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("ou"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("Ou faça o login com"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Confirmação de pedido"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja criar o pedido?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Data do pedido"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("detalhes do pedido"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Histórico de pedidos"),
        "orderId": MessageLookupByLibrary.simpleMessage("ID do pedido:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("ID do pedido"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Pedido nº"),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Notas de pedidos"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Número do pedido"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Reserva cancelada"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Charge Back"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Concluído"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Negado"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Expirado"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Falhou"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("Em espera"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Pendente"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Pagamento pendente"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("Processado"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Em processamento"),
        "orderStatusRefunded": MessageLookupByLibrary.simpleMessage("Devolveu"),
        "orderStatusReversed":
            MessageLookupByLibrary.simpleMessage("Invertida"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Enviado"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Anulado"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Pode verificar o status do seu pedido usando o nosso recurso de status de entrega. Receberá um e-mail de confirmação do pedido com os detalhes do pedido e um link para acompanhar o progresso."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Poderá acessar a sua conta usando o e-mail e palavra-passe definidos anteriormente. Na sua conta, pode editar os dados do seu perfil, verificar o histórico de transações e editar a assinatura do boletim informativo."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "O pedido foi efetuado com sucesso"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Sua conta"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("RESUMO DO PEDIDO"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("total de pedidos"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Rastreamento de pedidos"),
        "orders": MessageLookupByLibrary.simpleMessage("Encomendas"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("Verificação OTP"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Nossos dados bancários"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Esgotado"),
        "pageView":
            MessageLookupByLibrary.simpleMessage("Visualização de página"),
        "paid": MessageLookupByLibrary.simpleMessage("Pago"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Status pago"),
        "password": MessageLookupByLibrary.simpleMessage("Palavra-passe"),
        "passwordIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo de senha é necessária"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("As senhas não coincidem"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Cole o URL da sua imagem"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Pague com carteira"),
        "payNow": MessageLookupByLibrary.simpleMessage("Pague agora"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Forma de pagamento"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Detalhes de pagamento alterados com sucesso."),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Método de pagamento"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Este método de pagamento não é suportado"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Métodos de Pagamento"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Configurações de pagamento"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Pagamento bem sucedido"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendente"),
        "persian": MessageLookupByLibrary.simpleMessage("persa"),
        "phone": MessageLookupByLibrary.simpleMessage("telefone"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("Telefone esta vazio"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Formato: +84123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do número de telefone é obrigatório"),
        "phoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telefone"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Verificação do número de telefone"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Escolha data e hora"),
        "picking": MessageLookupByLibrary.simpleMessage("Aguardando entrega"),
        "placeMyOrder": MessageLookupByLibrary.simpleMessage("Faça meu pedido"),
        "playAll": MessageLookupByLibrary.simpleMessage("Jogar tudo"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Por favor, adicione o preço"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Por favor, concorde com nossos termos"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Por favor, permita o acesso à câmera e à galeria"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Verifique a conexão com a Internet!"),
        "pleaseChooseBranch": MessageLookupByLibrary.simpleMessage(
            "Por favor escolha uma filial"),
        "pleaseChooseCategory": MessageLookupByLibrary.simpleMessage(
            "Por favor, escolha a categoria"),
        "pleaseEnterProductName": MessageLookupByLibrary.simpleMessage(
            "Por favor insira o nome do produto"),
        "pleaseFillCode": MessageLookupByLibrary.simpleMessage(
            "Por favor, preencha seu código"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "* Por favor, preencha todas as células corretamente"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Aumente ou diminua a quantidade para continuar."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Por favor, preencha os campos obrigatórios"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Por favor preencha todos os campos"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Selecione uma data de reserva"),
        "pleaseSelectALocation": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecione um local"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Escolha uma opção para cada atributo do produto"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Selecione pelo menos 1 opção para cada atributo ativo"),
        "pleaseSelectImages": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecione as imagens"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Selecione as opções necessárias!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Inicise sessão antes de enviar qualquer arquivo."),
        "point": MessageLookupByLibrary.simpleMessage("Ponto"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Nenhuma configuração de ponto de desconto foi encontrada no servidor"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Por favor, insira o ponto de desconto"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Ponto máximo de desconto"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Não tem ponto de desconto suficiente. Seu ponto de desconto total é"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Atingiu o ponto máximo de desconto"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "O valor total do desconto é superior ao total da conta"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "O ponto de desconto foi removido"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "O ponto de desconto foi aplicado com sucesso"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Existe a Regra de Desconto para aplicar seus pontos no Carrinho"),
        "polish": MessageLookupByLibrary.simpleMessage("polonês"),
        "poor": MessageLookupByLibrary.simpleMessage("POBRE"),
        "popular": MessageLookupByLibrary.simpleMessage("Popular"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularidade"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Este endereço será salvo em seu dispositivo local. NÃO é o endereço do usuário."),
        "postContent": MessageLookupByLibrary.simpleMessage("Conteúdo"),
        "postFail":
            MessageLookupByLibrary.simpleMessage("Sua postagem não foi criada"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Característica de imagem"),
        "postManagement":
            MessageLookupByLibrary.simpleMessage("Post Management"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Post Product"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Sua postagem foi criada com sucesso"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Título"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Pré-pago"),
        "prev": MessageLookupByLibrary.simpleMessage("Anterior"),
        "preview": MessageLookupByLibrary.simpleMessage("Visualizar"),
        "price": MessageLookupByLibrary.simpleMessage("Preço"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Preço: Maior para Menor"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Preço: Menor para Maior"),
        "prices": MessageLookupByLibrary.simpleMessage("Menus"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Imprimir recibo"),
        "printer": MessageLookupByLibrary.simpleMessage("Impressora"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("A impressora não encontrada"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Seleção de impressora"),
        "printing": MessageLookupByLibrary.simpleMessage("Impressão..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Privacidade e prazo"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Política de Privacidade"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Privacidade e Termos"),
        "private": MessageLookupByLibrary.simpleMessage("privado"),
        "processing":
            MessageLookupByLibrary.simpleMessage("Em processamento..."),
        "product": MessageLookupByLibrary.simpleMessage("Produtos"),
        "productAddToCart": m36,
        "productAdded":
            MessageLookupByLibrary.simpleMessage("O produto é adicionado"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Seu produto aparecerá após revisão."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Desculpe, este produto não pode ser acessado porque expirou."),
        "productName": MessageLookupByLibrary.simpleMessage("Nome do Produto"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "O nome do produto não pode ficar vazio"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "A variável do tipo de produto precisa de pelo menos uma variante"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Tipo de produto simples precisa do nome e preço normal"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "Este produto está fora de estoque"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Visão geral do produto"),
        "productRating": MessageLookupByLibrary.simpleMessage("Sua avaliação"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Revisão do Produto"),
        "productType": MessageLookupByLibrary.simpleMessage("Tipo de produto"),
        "products": MessageLookupByLibrary.simpleMessage("Produtos"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("ID do PromptPay:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("Nome do PromptPay:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Tipo de pagamento imediato:"),
        "publish": MessageLookupByLibrary.simpleMessage("Publicar"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Puxe para carregar mais"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "O código QR foi salvo com sucesso."),
        "qRCodeSaveFailure":
            MessageLookupByLibrary.simpleMessage("Falha ao salvar o código QR"),
        "qty": MessageLookupByLibrary.simpleMessage("Qtd"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("quantidade"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "A quantidade atual é maior que a quantidade em estoque"),
        "random": MessageLookupByLibrary.simpleMessage("Aleatório"),
        "rate": MessageLookupByLibrary.simpleMessage("Taxa"),
        "rateProduct": MessageLookupByLibrary.simpleMessage("Avaliar produto"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Avalie o aplicativo"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Avalie este aplicativo"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Se gostou da nossa aplicação, reserve um pouco do seu tempo para avaliá-la! Isso realmente poderá ajudar-nos e não leva mais de um minuto."),
        "rating": MessageLookupByLibrary.simpleMessage("Avaliação"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Avalie antes de enviar seu comentário"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Reordenar"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Rever"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("Aguardando entrega"),
        "receivedMoney":
            MessageLookupByLibrary.simpleMessage("Dinheiro recebido"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("Receptor"),
        "recent": MessageLookupByLibrary.simpleMessage("recente"),
        "recentSearches": MessageLookupByLibrary.simpleMessage("história"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("Sua visualização recente"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Visualizado recentemente"),
        "recommended": MessageLookupByLibrary.simpleMessage("Recomendado"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Totais recorrentes"),
        "refresh": MessageLookupByLibrary.simpleMessage("REFRESH"),
        "refund": MessageLookupByLibrary.simpleMessage("Reembolso"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "A solicitação de reembolso do pedido não foi bem-sucedida"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Solicite o reembolso do seu pedido com sucesso!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Solicitação de reembolso"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Reembolso solicitado"),
        "refunds": MessageLookupByLibrary.simpleMessage("Reembolsos"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Regenerar resposta"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Registrar como"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Registre-se como fornecedor"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Não é possível sincronizar a conta. Por favor, faça login para continuar."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Falha no registro"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "A solicitação é inválida ou expirou. Tente novamente"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Cadastre-se com sucesso"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("PREÇO REGULAR"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Coisas que poderá amar"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Solte para carregar mais"),
        "remove": MessageLookupByLibrary.simpleMessage("Remover"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Remover da lista de desejos"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Solicitar reserva"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Solicitou muitos códigos em pouco tempo. Por favor, tente novamente mais tarde."),
        "resend": MessageLookupByLibrary.simpleMessage(" REENVIAR"),
        "reset": MessageLookupByLibrary.simpleMessage("Restabelecer"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Redefinir palavra-passe"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Redefinir palavra-passe"),
        "results": MessageLookupByLibrary.simpleMessage("Resultados"),
        "retry": MessageLookupByLibrary.simpleMessage("Tente novamente"),
        "review": MessageLookupByLibrary.simpleMessage("Visualizar"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Aprovação de revisão"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Seu comentário foi enviado e está aguardando aprovação!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Seu comentário foi enviado!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Rever"),
        "romanian": MessageLookupByLibrary.simpleMessage("romena"),
        "russian": MessageLookupByLibrary.simpleMessage("russo"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Preço de venda"),
        "saturday": MessageLookupByLibrary.simpleMessage("Sábado"),
        "save": MessageLookupByLibrary.simpleMessage("Salve "),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Salvar endereço"),
        "saveAddressSuccess": MessageLookupByLibrary.simpleMessage(
            "Seu endereço existe em seu local"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Guardar para depois"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Salvar código QR"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Salvar na lista de desejos"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Este item não pode ser verificado"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Para digitalizar um pedido, é preciso iniciar sessão primeiro"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Este pedido não está disponível para sua conta"),
        "search": MessageLookupByLibrary.simpleMessage("Procurar"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Pesquise por nome do país ou código de discagem"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Pesquisar com o nome ..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Ops! Parece que nenhum resultado corresponde aos seus critérios de pesquisa"),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Pesquisar por itens"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Por favor, escreva a entrada no campo de pesquisa"),
        "searchOrderId": MessageLookupByLibrary.simpleMessage(
            "Pesquisar com ID do pedido..."),
        "searchPlace":
            MessageLookupByLibrary.simpleMessage("Local de pesquisa"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Procurando endereço"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Ver mais"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Continue a ver novos conteúdos em seu aplicativo."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Ver Ordem"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Ver comentários"),
        "select": MessageLookupByLibrary.simpleMessage("Selecione"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("Selecione o endereço"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Selecionar tudo"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Selecionar datas"),
        "selectFileCancelled": MessageLookupByLibrary.simpleMessage(
            "Selecione o arquivo cancelado!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Selecione a imagem"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Selecione nenhum"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Selecione a impressora"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Selecione o papel"),
        "selectStore": MessageLookupByLibrary.simpleMessage("selecione a loja"),
        "selectTheColor":
            MessageLookupByLibrary.simpleMessage("Selecione a cor"),
        "selectTheFile":
            MessageLookupByLibrary.simpleMessage("Selecione o arquivo"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Selecione o ponto"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Selecione a quantidade"),
        "selectTheSize":
            MessageLookupByLibrary.simpleMessage("Selecione o item"),
        "selectVoucher":
            MessageLookupByLibrary.simpleMessage("Selecione o comprovante"),
        "send": MessageLookupByLibrary.simpleMessage("Mandar"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Devolver"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Obter código"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Enviar SMS para o dono da loja"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "A conta para a qual você deseja transferir (e-mail)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Separe vários endereços de e-mail com vírgula."),
        "serbian": MessageLookupByLibrary.simpleMessage("sérvio"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sessão expirada"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Por favor, defina um endereço nas definições"),
        "settings": MessageLookupByLibrary.simpleMessage("Definições"),
        "setup": MessageLookupByLibrary.simpleMessage("Configuração"),
        "share": MessageLookupByLibrary.simpleMessage("Compartilhar"),
        "shipped": MessageLookupByLibrary.simpleMessage("Enviado"),
        "shipping": MessageLookupByLibrary.simpleMessage("Remessa"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Endereço de entrega"),
        "shippingFee": MessageLookupByLibrary.simpleMessage("Taxa de envio"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Método de envio"),
        "shop": MessageLookupByLibrary.simpleMessage("fazer compras"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("Email da loja"),
        "shopName": MessageLookupByLibrary.simpleMessage("Nome da loja"),
        "shopOrders": MessageLookupByLibrary.simpleMessage("Pedidos da loja"),
        "shopPhone": MessageLookupByLibrary.simpleMessage("Telefone da loja"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Lesma da loja"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Pequena descrição"),
        "showAllMyOrdered": MessageLookupByLibrary.simpleMessage(
            "Mostrar todos os meus pedidos"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detalhe"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Mostrar Galeria"),
        "showLess": MessageLookupByLibrary.simpleMessage("Mostre menos"),
        "showMore": MessageLookupByLibrary.simpleMessage("Mostre mais"),
        "signIn": MessageLookupByLibrary.simpleMessage("assinar em"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Entrar com o email"),
        "signUp": MessageLookupByLibrary.simpleMessage("Inscrever-se"),
        "signup": MessageLookupByLibrary.simpleMessage("Inscrever-se"),
        "simple": MessageLookupByLibrary.simpleMessage("Simples"),
        "size": MessageLookupByLibrary.simpleMessage("Tamanho"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Guia de tamanho"),
        "skip": MessageLookupByLibrary.simpleMessage("Saltar"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("eslovaco"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "O código SMS expirou. Por favor, reenvie o código de verificação para tentar novamente."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Vendido por"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Algo deu errado. Por favor, tente novamente mais tarde."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Ordenar por"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Código de Ordenação"),
        "spanish": MessageLookupByLibrary.simpleMessage("espanhol"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Discurso não disponível"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Comece a explorar"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Comece a fazer compras"),
        "state": MessageLookupByLibrary.simpleMessage("Estado"),
        "stateIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do estado é obrigatório"),
        "stateProvince":
            MessageLookupByLibrary.simpleMessage("Estado / Província"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "stock": MessageLookupByLibrary.simpleMessage("Stock"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Quantidade em stock"),
        "stop": MessageLookupByLibrary.simpleMessage("Pare"),
        "store": MessageLookupByLibrary.simpleMessage("Loja"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Endereço da loja"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Bandeira"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Marca de loja"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("A loja está fechada agora"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("Email da loja"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Guardar informação"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Banner da lista de lojas"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Localização da loja"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Digite endereço/cidade"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Logotipo da loja"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Banner móvel da loja"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Definições da loja"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Banner deslizante de loja"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Banner estático da loja"),
        "storeVacation": MessageLookupByLibrary.simpleMessage("Loja de férias"),
        "stores": MessageLookupByLibrary.simpleMessage("Lojas"),
        "street": MessageLookupByLibrary.simpleMessage("rua"),
        "street2": MessageLookupByLibrary.simpleMessage("Rua # 2"),
        "streetIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do nome da rua é obrigatório"),
        "streetName": MessageLookupByLibrary.simpleMessage("Nome da rua"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Apartamento"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Quadra"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Obrigado pelo seu pedido. Estamos trabalhando rapidamente para processar seu pedido. Aguarde um e-mail de confirmação em breve"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Envie sua postagem"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "sunday": MessageLookupByLibrary.simpleMessage("Domingo"),
        "support": MessageLookupByLibrary.simpleMessage("Apoio, suporte"),
        "swahili": MessageLookupByLibrary.simpleMessage("Suaíli"),
        "swedish": MessageLookupByLibrary.simpleMessage("sueco"),
        "tag": MessageLookupByLibrary.simpleMessage("marcação"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Esta etiqueta não existe"),
        "tags": MessageLookupByLibrary.simpleMessage("Tag"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Tire uma foto"),
        "tamil": MessageLookupByLibrary.simpleMessage("tâmil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Toque para selecionar este local"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Toque no microfone para falar"),
        "tax": MessageLookupByLibrary.simpleMessage("Imposto"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("Carteira Tera"),
        "terrible": MessageLookupByLibrary.simpleMessage("Terrível"),
        "thailand": MessageLookupByLibrary.simpleMessage("tailandês"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Esta data não está disponível"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Este recurso não é compatível com o idioma atual"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Este é o papel do cliente"),
        "thisIsVendorRole": MessageLookupByLibrary.simpleMessage(
            "Esta é a função do fornecedor"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Esta plataforma não é compatível com webview"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Este produto não é compatível"),
        "thursday": MessageLookupByLibrary.simpleMessage("Quinta-feira"),
        "tickets": MessageLookupByLibrary.simpleMessage("Bilhetes"),
        "time": MessageLookupByLibrary.simpleMessage("tempo"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Título: A a Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Título: Z a A"),
        "to": MessageLookupByLibrary.simpleMessage("Para"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Muitas tentativas de login com falha. Por favor, tente novamente mais tarde."),
        "topUp": MessageLookupByLibrary.simpleMessage("Completar"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Produto de recarga não encontrado"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "O valor total do pedido deve ser de pelo menos"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Preço total"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Taxa total"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("O número de rastreamento é"),
        "trackingPage":
            MessageLookupByLibrary.simpleMessage("Página de rastreamento"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transação cancelada"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Detalhe da transação"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("A transação falhou"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("Falha na transação"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Taxa de transação"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Resultado da Transação"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transferir"),
        "transferConfirm": MessageLookupByLibrary.simpleMessage(
            "Confirmação de transferência"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Não pode transferir para este usuário"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("A transferência falhou"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Sucesso de transferência"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Terça"),
        "turkish": MessageLookupByLibrary.simpleMessage("turco"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Ligue o Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Digite uma mensagem..."),
        "typeYourMessage": MessageLookupByLibrary.simpleMessage(
            "Digite sua mensagem aqui ..."),
        "typing": MessageLookupByLibrary.simpleMessage("Digitando..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("ucraniano"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Indisponível"),
        "unblock": MessageLookupByLibrary.simpleMessage("Desbloquear"),
        "unblockUser":
            MessageLookupByLibrary.simpleMessage("Desbloquear usuário"),
        "undo": MessageLookupByLibrary.simpleMessage("Desfazer"),
        "unpaid": MessageLookupByLibrary.simpleMessage("Não remunerado"),
        "update": MessageLookupByLibrary.simpleMessage("Atualizar"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Atualização falhou!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Informação de atualização"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Atualizar palavra-passe"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Atualizar o status"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Atualização com sucesso!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Atualizar perfil"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Subir arquivo"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Enviar Imagem"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Carregar produto"),
        "uploading": MessageLookupByLibrary.simpleMessage("Upload"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Use agora"),
        "useThisImage":
            MessageLookupByLibrary.simpleMessage("Usar esta imagem"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Este nome de usuário / e-mail não está disponível."),
        "userHasBeenBlocked":
            MessageLookupByLibrary.simpleMessage("O usuário foi bloqueado"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "O nome de usuário ou palavra-passe está incorreto."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "O usuário não foi encontrado"),
        "username": MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "usernameAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Nome de usuário já em uso!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Nome de usuário e palavra-passe são obrigatórios"),
        "usernameInvalid":
            MessageLookupByLibrary.simpleMessage("Nome de usuário inválido"),
        "usernameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Nome de usuário é obrigatório"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Mensagem de férias"),
        "vacationType": MessageLookupByLibrary.simpleMessage("tipo de férias"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variável"),
        "variation": MessageLookupByLibrary.simpleMessage("Variação"),
        "vendor": MessageLookupByLibrary.simpleMessage("fornecedor"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Administrador do fornecedor"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Informação do vendedor"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Código de verificação (6 dígitos)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Verificar"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Via carteira"),
        "video": MessageLookupByLibrary.simpleMessage("Vídeo"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("vietnamita"),
        "view": MessageLookupByLibrary.simpleMessage("Visão"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Ver Carrinho"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("VER DETALHES"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Veja mais"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Ver no Google Maps"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Exibir pedido"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Ver transações recentes"),
        "visible": MessageLookupByLibrary.simpleMessage("Visível"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Loja de visita"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Aguardando o carregamento da imagem"),
        "waitForPost": MessageLookupByLibrary.simpleMessage(
            "Esperando pela postagem do produto"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Aguardando confirmação"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Saldo da carteira"),
        "walletBalanceWithValue": m51,
        "walletName": MessageLookupByLibrary.simpleMessage("Nome da carteira"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Encontramos blog (s)"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Precisamos de acesso à câmera para escanear o código QR ou código de barras."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Um código de autenticação foi enviado para"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Enviaremos notificações quando novos produtos ou ofertas estiverem disponíveis. Poderá desativá-lo posteriormente nas definições."),
        "webView": MessageLookupByLibrary.simpleMessage("Visualização da Web"),
        "website":
            MessageLookupByLibrary.simpleMessage("Local na rede Internet"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Quarta-feira"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Bem vinda"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Bem vindo de volta"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Comece sua jornada de compras conosco agora"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Qual idioma você prefere?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Entre em contato com o administrador para aprovar seu registro."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "Você não poderá enviar e receber mensagens deste usuário."),
        "withdrawAmount":
            MessageLookupByLibrary.simpleMessage("retirar montante"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Solicitação de retirada"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Cancelamento"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Coleções femininas"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Escreva seu comentário"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Escreva sua nota"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("sim"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Só pode comprar em uma única loja."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Só pode comprar"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Você não tem permissão para criar uma postagem"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "O endereço foi guardado em seu arquivo local com sucesso!"),
        "youHaveNoPost":
            MessageLookupByLibrary.simpleMessage("Você não tem postagens"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Possui \$ pontos"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Poderá gostar também"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "É necessário iniciar sessão para finalizar a compra"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Não voltará a ser questionado após a conclusão"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Sua conta está em análise. Entre em contacto com o administrador se precisar de ajuda."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Seu endereço existe em seu local"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "O endereço foi salvo em seu armazenamento local"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Sua inscrição está em análise."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("O seu carrinho está vazio"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Detalhes da sua reserva"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Seus ganhos este mês"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Sua nota"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("Seu pedido foi adicionado"),
        "yourOrderIsConfirmed":
            MessageLookupByLibrary.simpleMessage("Seu pedido está confirmado!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Seu pedido está vazio"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Parece que você não adicionou nenhum item.\nComece a comprar para preenchê-lo."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Seus pedidos"),
        "yourProductIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Seu produto está em análise"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Seu nome de usuário ou e-mail"),
        "zipCode": MessageLookupByLibrary.simpleMessage("código postal"),
        "zipCodeIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo do código postal é obrigatório")
      };
}
