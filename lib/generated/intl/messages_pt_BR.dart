// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
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
  String get localeName => 'pt_BR';

  static String m0(x) => "${x} Ativo";

  static String m1(attribute) => "Qualquer ${attribute}";

  static String m2(point) => "Seus pontos disponíveis: ${point}";

  static String m3(state) => "Adaptador Bluetooth: ${state}";

  static String m4(author) => "Autor: ${author}";

  static String m5(currency) => "Moeda alterada para ${currency}";

  static String m6(number) => "${number} caracteres restantes";

  static String m7(priceRate, pointRate) =>
      "${priceRate} = ${pointRate} Pontos";

  static String m8(count) => "${count} item";

  static String m9(count) => " ${count} itens";

  static String m10(count) => "${count} item";

  static String m11(count) => "${count} itens";

  static String m12(country) => "${country} país não é suportado";

  static String m13(currency) => "${currency} não é suportado";

  static String m14(day) => "${day} dias atrás";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Termina em ${timeLeft}";

  static String m17(captcha) => "Digite ${captcha} para confirmar:";

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
      "Há um problema com o aplicativo durante a solicitação dos dados, entre em contato com o administrador para corrigir os problemas: ${message}";

  static String m26(currency, amount) =>
      "O valor máximo para usar este pagamento é ${currency} ${amount}";

  static String m27(size) => "Tamanho máximo do arquivo: ${size} MB";

  static String m28(currency, amount) =>
      "O valor mínimo para usar este pagamento é ${currency} ${amount}";

  static String m29(minute) => "${minute} minutos atrás";

  static String m30(month) => "${month} meses atrás";

  static String m31(store) => "Mais de ${store}";

  static String m32(number) => "deve ser comprado em grupos de ${number}";

  static String m33(itemCount) => "${itemCount} itens";

  static String m34(price) => "Opções no total: ${price}";

  static String m35(amount) => "Pague ${amount}";

  static String m36(name) =>
      "${name} foram adicionados ao carrinho com sucesso";

  static String m37(total) => "Qtd: ${total}";

  static String m38(name) => "Recebeu dinheiro de ${name}";

  static String m39(percent) => "Venda ${percent}%";

  static String m40(keyword) => "Resultados da pesquisa para: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} item)";

  static String m42(keyword, count) => "${keyword} (${count} itens)";

  static String m43(second) => "${second} segundos atrás";

  static String m44(totalCartQuantity) =>
      "Carrinho de compras, itens ${totalCartQuantity}";

  static String m45(numberOfUnitsSold) => "Vendido: ${numberOfUnitsSold}";

  static String m46(fieldName) => "O campo ${fieldName} é obrigatório";

  static String m47(total) => "${total} produtos";

  static String m48(name) => "Transferir dinheiro para ${name}";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Use o máximo de ${maxPointDiscount} pontos para um desconto ${maxPriceDiscount} neste pedido!";

  static String m50(date) => "Valid til ${date}";

  static String m51(balance) => "Saldo da carteira: ${balance}";

  static String m52(message) => "Aviso: ${message}";

  static String m53(defaultCurrency) =>
      "A moeda atualmente selecionada não está disponível para o recurso Carteira, altere-a para ${defaultCurrency}";

  static String m54(length) => "Encontrámos ${length} produtos";

  static String m55(week) => "Semana ${week}";

  static String m56(name) => "Bem-vindo ${name}";

  static String m57(year) => "${year} anos atrás";

  static String m58(total) => "Você atribuiu a ordem #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Quem somos"),
        "account": MessageLookupByLibrary.simpleMessage("Conta"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("Em aprovação"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "A exclusão de sua conta remove informações pessoais de nosso banco de dados."),
        "accountIsPendingApproval": MessageLookupByLibrary.simpleMessage(
            "A conta está pendente de aprovação."),
        "accountNumber":
            MessageLookupByLibrary.simpleMessage("Número da Conta"),
        "accountSetup":
            MessageLookupByLibrary.simpleMessage("Configuração da conta"),
        "active": MessageLookupByLibrary.simpleMessage("Ativo"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("Ativo há muito tempo"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Ativo agora"),
        "addAName": MessageLookupByLibrary.simpleMessage("Adicionar um nome"),
        "addANewPost": MessageLookupByLibrary.simpleMessage(
            "Adicionar uma nova publicação"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Adicionar um slug"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Adicionar um atributo"),
        "addListing":
            MessageLookupByLibrary.simpleMessage("Adicionar Listagem"),
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
            MessageLookupByLibrary.simpleMessage("Adicionar ao Carrinho"),
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
            MessageLookupByLibrary.simpleMessage("Informações Adicionais"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Serviços adicionais"),
        "address": MessageLookupByLibrary.simpleMessage("Endereço"),
        "adults": MessageLookupByLibrary.simpleMessage("Adultos"),
        "afternoon": MessageLookupByLibrary.simpleMessage("Tarde"),
        "agree": MessageLookupByLibrary.simpleMessage("Concordar"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Termos e Privacidade"),
        "albanian": MessageLookupByLibrary.simpleMessage("Albanês"),
        "all": MessageLookupByLibrary.simpleMessage("Todo"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Todas as Marcas"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Todos os Pedidos"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Últimas Vendas"),
        "allProducts":
            MessageLookupByLibrary.simpleMessage("Todos os Produtos"),
        "allow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "allowCameraAccess":
            MessageLookupByLibrary.simpleMessage("Permitir acesso à câmera?"),
        "almostSoldOut": MessageLookupByLibrary.simpleMessage("Quase esgotado"),
        "amazing": MessageLookupByLibrary.simpleMessage("Surpreendente"),
        "amount": MessageLookupByLibrary.simpleMessage("Quantidade"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Aparência"),
        "apply": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "approve": MessageLookupByLibrary.simpleMessage("Aprovar"),
        "approved": MessageLookupByLibrary.simpleMessage("Aprovado"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Solicitações aprovadas"),
        "arabic": MessageLookupByLibrary.simpleMessage("Árabe"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Tem certeza?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de excluir sua conta?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Tem certeza que deseja sair?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Você tem certeza que quer sair?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Atribuído"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("Pelo menos 3 caracteres..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Atributo"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("O atributo já existe"),
        "attributes": MessageLookupByLibrary.simpleMessage("Atributos"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Item(ns) de áudio detectado(s). Deseja adicionar ao Audio Player?"),
        "availability": MessageLookupByLibrary.simpleMessage("Disponibilidade"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Disponibilidade: "),
        "availablePoints": m2,
        "averageRating": MessageLookupByLibrary.simpleMessage("Média"),
        "back": MessageLookupByLibrary.simpleMessage("Voltar"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Em backorder"),
        "backToShop": MessageLookupByLibrary.simpleMessage("Voltar à Loja"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Voltar para Carteira"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Coleções Sacolas"),
        "balance": MessageLookupByLibrary.simpleMessage("Equilíbrio"),
        "bank": MessageLookupByLibrary.simpleMessage("Banco"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Tipo de lista de banners"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Tipo de Banner"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banner Youtube URL"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Informações Básicas"),
        "becomeAVendor":
            MessageLookupByLibrary.simpleMessage("Torne-se um fornecedor"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengalês"),
        "billingAddress":
            MessageLookupByLibrary.simpleMessage("Endereço de cobrança"),
        "bleHasNotBeenEnabled":
            MessageLookupByLibrary.simpleMessage("O Bluetooth não foi ativado"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Bloquear"),
        "blockUser": MessageLookupByLibrary.simpleMessage("Bloquear usuário"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked": MessageLookupByLibrary.simpleMessage("Já reservado"),
        "booking": MessageLookupByLibrary.simpleMessage("Reserva"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Cancelar Reserva"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Inveterado"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Há algo errado. Tente novamente mais tarde."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Histórico de Reservas"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Reserve Agora"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Reservado com sucesso"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Resumo da reserva"),
        "bookingUnavailable": MessageLookupByLibrary.simpleMessage(
            "A reserva não está disponível"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Bósnio"),
        "branch": MessageLookupByLibrary.simpleMessage("Ramo"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Desculpe, o carrinho de compras será esvaziado devido à mudança de região. Teremos prazer em contatá-lo se precisar de ajuda."),
        "brand": MessageLookupByLibrary.simpleMessage("Marca"),
        "brands": MessageLookupByLibrary.simpleMessage("Marcas"),
        "brazil": MessageLookupByLibrary.simpleMessage("Português"),
        "burmese": MessageLookupByLibrary.simpleMessage("Birmanês"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Compre Agora"),
        "by": MessageLookupByLibrary.simpleMessage("por"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Somente com agendamento"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Por marca"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Por Categoria"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Por Preço"),
        "bySignup": MessageLookupByLibrary.simpleMessage(
            "Ao se inscrever, você concorda com o nosso"),
        "byTag": MessageLookupByLibrary.simpleMessage("Por Tag"),
        "call": MessageLookupByLibrary.simpleMessage("Chamar"),
        "callTo":
            MessageLookupByLibrary.simpleMessage("Fazer uma chamada para"),
        "callToVendor": MessageLookupByLibrary.simpleMessage(
            "Ligar para o proprietário da loja"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("Não é possível criar ordem"),
        "canNotCreateUser": MessageLookupByLibrary.simpleMessage(
            "Não é possível criar o usuário."),
        "canNotGetPayments": MessageLookupByLibrary.simpleMessage(
            "Não é possível obter métodos de pagamento"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Não é possível obter métodos de envio"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Não é possível obter informações de token."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Não é possível iniciar este aplicativo, certifique-se de que suas configurações em config.dart estão corretas"),
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
            "Não é possível encontrar este ID de pedido"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Data no passado não é permitida"),
        "cardHolder":
            MessageLookupByLibrary.simpleMessage("Portador do Cartão"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Número do cartão"),
        "cart": MessageLookupByLibrary.simpleMessage("Carrinho"),
        "cartDiscount":
            MessageLookupByLibrary.simpleMessage("Desconto Carrinho"),
        "cash": MessageLookupByLibrary.simpleMessage("Numerário"),
        "categories": MessageLookupByLibrary.simpleMessage("Categorias"),
        "category": MessageLookupByLibrary.simpleMessage("Categoria"),
        "change": MessageLookupByLibrary.simpleMessage("mudar"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("--"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Alterar impressora"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Bater papo"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("ChatGPT"),
        "chatListScreen": MessageLookupByLibrary.simpleMessage("Mensagens"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Bate-papo via Facebook Messenger"),
        "chatViaWhatApp":
            MessageLookupByLibrary.simpleMessage("Bate-papo via WhatsApp"),
        "chatWithBot":
            MessageLookupByLibrary.simpleMessage("Bate-papo com Bot"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Converse com o proprietário da loja"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Verifique seu e-mail para obter o link de confirmação"),
        "checking": MessageLookupByLibrary.simpleMessage("Verificação..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Caixa"),
        "chinese": MessageLookupByLibrary.simpleMessage("Chinês"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Chinês (simplificado)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Chinês (tradicional)"),
        "chooseBranch":
            MessageLookupByLibrary.simpleMessage("Escolha a filial"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Escolha a categoria"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Escolha na Galeria"),
        "chooseFromServer": MessageLookupByLibrary.simpleMessage("--"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Escolha o plano"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Escolha a Equipe"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Escolha o tipo"),
        "chooseYourPaymentMethod": MessageLookupByLibrary.simpleMessage(
            "Escolha sua forma de pagamento"),
        "city": MessageLookupByLibrary.simpleMessage("Cidade"),
        "cityIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo cidade é obrigatório"),
        "clear": MessageLookupByLibrary.simpleMessage("Claro"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Limpar carrinho"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Conversa clara"),
        "close": MessageLookupByLibrary.simpleMessage("Fechar"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Fechado agora"),
        "closed": MessageLookupByLibrary.simpleMessage("Fechadas"),
        "codExtraFee": MessageLookupByLibrary.simpleMessage("Taxa Extra COD"),
        "color": MessageLookupByLibrary.simpleMessage("Cor"),
        "comment": MessageLookupByLibrary.simpleMessage("Comentário"),
        "commentFirst": MessageLookupByLibrary.simpleMessage(
            "Por favor, escreva seu comentário"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Comente com sucesso, aguarde até que seu comentário seja aprovado"),
        "complete": MessageLookupByLibrary.simpleMessage("Completar"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmAccountDeletion":
            MessageLookupByLibrary.simpleMessage("Confirmar exclusão de conta"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "O carrinho será limpo quando a recarga."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja limpar o carrinho?"),
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
        "connect": MessageLookupByLibrary.simpleMessage("Ligar"),
        "contact": MessageLookupByLibrary.simpleMessage("Contato"),
        "content": MessageLookupByLibrary.simpleMessage("Conteúdo"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Continue comprando"),
        "continueToPayment":
            MessageLookupByLibrary.simpleMessage("Continuar para Pagamento"),
        "continueToReview": MessageLookupByLibrary.simpleMessage(
            "Continuar para Pré-visualização"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Continuar para Envio"),
        "continues": MessageLookupByLibrary.simpleMessage("Continuar"),
        "conversations": MessageLookupByLibrary.simpleMessage("Conversas"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("Copiado"),
        "copy": MessageLookupByLibrary.simpleMessage("Copiar"),
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
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("O campo país é obrigatório"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Código do cupom"),
        "couponHasBeenSavedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "O cupom foi salvo com sucesso."),
        "couponInvalid": MessageLookupByLibrary.simpleMessage(
            "Seu código de cupom é inválido"),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Parabéns! Código de cupom aplicado com sucesso"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Criar uma conta"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Sua postagem foi criada com sucesso como rascunho. Por favor, dê uma olhada no seu site de administração."),
        "createPost": MessageLookupByLibrary.simpleMessage("Criar postagem"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Criar Produto"),
        "createReviewSuccess":
            MessageLookupByLibrary.simpleMessage("Obrigado pela sua avaliação"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Nós realmente apreciamos sua contribuição e valorizamos sua contribuição para nos ajudar a melhorar"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Criar todas as variantes"),
        "createdOn": MessageLookupByLibrary.simpleMessage("Criado em:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Moedas"),
        "currencyIsNotSupported": m13,
        "currentPassword": MessageLookupByLibrary.simpleMessage("Senha atual"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Atualmente só temos"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Detalhes do cliente"),
        "customerNote": MessageLookupByLibrary.simpleMessage("Nota do cliente"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Tcheco"),
        "danish": MessageLookupByLibrary.simpleMessage("Dinamarquês"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Tema Escuro"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Painel"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Dados vazios"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Data ascendente"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Data da Reserva"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Data descendente"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Data de Fim"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Data: Últimas"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Data: Mais antiga"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Data de Início"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Data e Hora"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Data de fechamento sábio"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Debitar"),
        "decline": MessageLookupByLibrary.simpleMessage("Declinar"),
        "delete": MessageLookupByLibrary.simpleMessage("Excluir"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Excluir conta"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja excluir sua conta? Por favor, leia como a exclusão da conta afetará."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Conta excluída com êxito. Sua sessão expirou."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Excluir tudo"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Excluir conversa"),
        "delivered": MessageLookupByLibrary.simpleMessage("Entregue"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Entregue a"),
        "delivering": MessageLookupByLibrary.simpleMessage("entregando"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Entregador:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Data de Entrega"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Detalhes da entrega"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("Entrega"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Sem dados.\nEsta ordem foi removida."),
        "description":
            MessageLookupByLibrary.simpleMessage("Descrição: __________"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Por favor insira ou selecione o voucher para o seu pedido."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Não recebeu o código?"),
        "direction": MessageLookupByLibrary.simpleMessage("Direção"),
        "disablePurchase":
            MessageLookupByLibrary.simpleMessage("Desativar compra"),
        "discount": MessageLookupByLibrary.simpleMessage("Desconto"),
        "displayName":
            MessageLookupByLibrary.simpleMessage("Nome para exibição"),
        "distance": m15,
        "doNotAnyTransactions": MessageLookupByLibrary.simpleMessage(
            "Você ainda não tem nenhuma transação"),
        "doYouWantToExitApp":
            MessageLookupByLibrary.simpleMessage("Deseja sair do aplicativo"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Quer sair sem enviar sua avaliação?"),
        "doYouWantToLogout":
            MessageLookupByLibrary.simpleMessage("Deseja sair?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Você quer desbloquear este usuário?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "O Apple Pay não está disponível neste dispositivo!"),
        "done": MessageLookupByLibrary.simpleMessage("Terminar"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Não tem uma conta?"),
        "download": MessageLookupByLibrary.simpleMessage("Baixar"),
        "downloadApp":
            MessageLookupByLibrary.simpleMessage("Baixar aplicativo"),
        "draft": MessageLookupByLibrary.simpleMessage("Rascunho"),
        "driverAssigned":
            MessageLookupByLibrary.simpleMessage("Motorista atribuído"),
        "duration": MessageLookupByLibrary.simpleMessage("Duração"),
        "dutch": MessageLookupByLibrary.simpleMessage("Holandês"),
        "earnings": MessageLookupByLibrary.simpleMessage("Renda"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar:"),
        "editProductInfo": MessageLookupByLibrary.simpleMessage(
            "Editar informações do produto"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Editar"),
        "egypt": MessageLookupByLibrary.simpleMessage("Egito"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAddressInvalid":
            MessageLookupByLibrary.simpleMessage("Endereço de e-mail inválido"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-mail já em uso!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "A exclusão de sua conta cancelará sua inscrição de todas as listas de discussão."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "A conta de e-mail que você inseriu não existe. Tente novamente."),
        "emailIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo de e-mail é obrigatório"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("Assinatura de e-mail"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Parece que você ainda não fez nenhuma reserva.\nComece a explorar e faça sua primeira reserva!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Carrinho vazio"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Parece que você ainda não adicionou nenhum item ao carrinho. Comece a comprar para preenchê-lo."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Ops! Seu carrinho está um pouco leve.\n\nPronto para comprar algo fabuloso?"),
        "emptyComment": MessageLookupByLibrary.simpleMessage(
            "Seu comentário não pode ficar vazio"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Você ainda não pesquisou por itens. Vamos começar agora - vamos ajudá-lo."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Não há opções de envio disponíveis. Certifique-se de que seu endereço foi digitado corretamente ou entre em contato conosco se precisar de ajuda."),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "Nome de usuário/E-mail está vazio"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("Lista de desejos vazia"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "Toque em qualquer coração ao lado de um produto para favorito. Vamos guardá-los para você aqui!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Sua lista de desejos está vazia no momento.\nComece a adicionar produtos agora!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Ativar para Checkout"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Ativar para Login"),
        "enableForWallet": MessageLookupByLibrary.simpleMessage("--"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Ativar o modo de férias"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Selecione uma data após a primeira data"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("Inglês"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Insira o valor"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Insira um endereço de e-mail para cada destinatário"),
        "enterSentCode": MessageLookupByLibrary.simpleMessage(
            "Digite o código enviado para"),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Insira o código do voucher"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Digite seu e-mail"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "Digite seu e-mail ou nome de usuário"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("Digite seu primeiro nome"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Digite seu sobrenome"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Introduza o seu número de telemóvel"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Digite sua senha"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Digite seu número de telefone para começar."),
        "enterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Digite seu número de telefone"),
        "enterYourUsername":
            MessageLookupByLibrary.simpleMessage("Digite seu nome de usuário"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "O valor inserido é maior do que o valor atual da carteira. Por favor, tente novamente!"),
        "errorEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Introduza um endereço de e-mail válido."),
        "errorMsg": m19,
        "errorOnGettingPost":
            MessageLookupByLibrary.simpleMessage("Erro ao obter a postagem!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Introduza uma palavra-passe de pelo menos 8 caracteres"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Erro"),
        "evening": MessageLookupByLibrary.simpleMessage("Noite"),
        "events": MessageLookupByLibrary.simpleMessage("Eventos"),
        "expectedDeliveryDate": MessageLookupByLibrary.simpleMessage("--"),
        "expired": MessageLookupByLibrary.simpleMessage("Expirado"),
        "expiredDate":
            MessageLookupByLibrary.simpleMessage("Data de expiração"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("MM/AAA"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Explorar agora"),
        "external": MessageLookupByLibrary.simpleMessage("Externo"),
        "extraServices":
            MessageLookupByLibrary.simpleMessage("Serviços Extras"),
        "failToAssign":
            MessageLookupByLibrary.simpleMessage("Falha ao atribuir usuário"),
        "failedToGenerateLink":
            MessageLookupByLibrary.simpleMessage("Falha ao gerar link"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Falha ao carregar a configuração do aplicativo. Tente novamente ou reinicie o aplicativo."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("Falha ao carregar imagem"),
        "fair": MessageLookupByLibrary.simpleMessage("Justo"),
        "favorite": MessageLookupByLibrary.simpleMessage("Favorito"),
        "fax": MessageLookupByLibrary.simpleMessage("Fax"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Recurso não disponível"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Produtos em destaque"),
        "featured": MessageLookupByLibrary.simpleMessage("Destaque"),
        "features": MessageLookupByLibrary.simpleMessage("Características"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "O arquivo é muito grande. Por favor, escolha um arquivo menor!"),
        "fileUploadFailed":
            MessageLookupByLibrary.simpleMessage("Falha no upload do arquivo!"),
        "files": MessageLookupByLibrary.simpleMessage("Limas"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Impressões digitais, Touch ID"),
        "finishSetup":
            MessageLookupByLibrary.simpleMessage("Concluir a configuração"),
        "finnish": MessageLookupByLibrary.simpleMessage("Finlandês"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Seja o primeiro a comentar este post!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Nome"),
        "firstNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo de primeiro nome é obrigatório"),
        "firstRenewal":
            MessageLookupByLibrary.simpleMessage("Primeira Renovação"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Desconto Fixo no Carrinho"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Desconto fixo do produto"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("para este produto"),
        "free": MessageLookupByLibrary.simpleMessage("Livre"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("Gratuito"),
        "french": MessageLookupByLibrary.simpleMessage("Francês"),
        "friday": MessageLookupByLibrary.simpleMessage("Sexta-feira"),
        "from": MessageLookupByLibrary.simpleMessage("De"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nome completo"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "generalSetting":
            MessageLookupByLibrary.simpleMessage("Configuração geral"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Gerando link..."),
        "german": MessageLookupByLibrary.simpleMessage("Alemão"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Receber notificações"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Seja notificado!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Obter link de senha"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Começar"),
        "goBack": MessageLookupByLibrary.simpleMessage("Voltar"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Voltar à página inicial"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Voltar ao endereço"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Voltar à revisão"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Voltar ao envio"),
        "good": MessageLookupByLibrary.simpleMessage("BOA"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("Grego"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Vendas Brutas"),
        "grouped": MessageLookupByLibrary.simpleMessage("Agrupados"),
        "guests": MessageLookupByLibrary.simpleMessage("Os hóspedes"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("foi eliminado"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebraico"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Ocultar sobre"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Ocultar endereço"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("Ocultar e-mail"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Ocultar Mapa"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Ocultar telefone"),
        "hidePolicy":
            MessageLookupByLibrary.simpleMessage("Política de Ocultar"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hindi"),
        "history": MessageLookupByLibrary.simpleMessage("História"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("História"),
        "home": MessageLookupByLibrary.simpleMessage("Casa"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("Húngaro"),
        "hungary": MessageLookupByLibrary.simpleMessage("Húngaro"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Concordo com"),
        "imIn": MessageLookupByLibrary.simpleMessage("Estou em"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Imagem em destaque"),
        "imageGallery":
            MessageLookupByLibrary.simpleMessage("Galeria de Imagens"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("Geração de imagem"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Rede de Imagens"),
        "inStock": MessageLookupByLibrary.simpleMessage("Em estoque"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Senha incorreta"),
        "india": MessageLookupByLibrary.simpleMessage("Hindi"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Indonésio"),
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
            "Código de verificação SMS inválido"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Ano de nascimento inválido"),
        "invoice": MessageLookupByLibrary.simpleMessage("Fatura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Está tudo pronto...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("está digitando..."),
        "italian": MessageLookupByLibrary.simpleMessage("Italiano"),
        "item": MessageLookupByLibrary.simpleMessage("Item"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Total do item:"),
        "items": MessageLookupByLibrary.simpleMessage("Itens"),
        "itsOrdered": MessageLookupByLibrary.simpleMessage("Está encomendado!"),
        "iwantToCreateAccount":
            MessageLookupByLibrary.simpleMessage("Quero criar uma conta"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonês"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Guardar"),
        "khmer": MessageLookupByLibrary.simpleMessage("Khmer"),
        "korean": MessageLookupByLibrary.simpleMessage("Coreano"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Curdo"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "languageSuccess": MessageLookupByLibrary.simpleMessage(
            "O idioma foi atualizado com sucesso"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Sobrenome"),
        "lastNameIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo sobrenome é obrigatório"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Últimas Transações"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("Últimos Produtos"),
        "layout": MessageLookupByLibrary.simpleMessage("Layout"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Tema Branco"),
        "link": MessageLookupByLibrary.simpleMessage("Link"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Tipo de banner de lista"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Lista de Vídeo de Banner"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Mensagens de notificação"),
        "listening": MessageLookupByLibrary.simpleMessage("Escuta..."),
        "loadFail":
            MessageLookupByLibrary.simpleMessage("Falha no carregamento!"),
        "loading": MessageLookupByLibrary.simpleMessage("Carregando..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Carregando link..."),
        "location": MessageLookupByLibrary.simpleMessage("Localização"),
        "lockScreenAndSecurity": MessageLookupByLibrary.simpleMessage(
            "Tela de bloqueio e segurança"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("O login é cancelado"),
        "loginErrorServiceProvider": m25,
        "loginFailed": MessageLookupByLibrary.simpleMessage("Falha no login!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Não consigo fazer login! Entre em contato com o administrador para verificar sua conta/função."),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Faça login com sucesso!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Por favor, faça login para comentar"),
        "loginToContinue":
            MessageLookupByLibrary.simpleMessage("Faça login para continuar"),
        "loginToReview":
            MessageLookupByLibrary.simpleMessage("Faça login para revisar"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Faça login na sua conta"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "malay": MessageLookupByLibrary.simpleMessage("Malaio"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Coleções Masculinas"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("Gerenciar chave de API"),
        "manageStock":
            MessageLookupByLibrary.simpleMessage("Gerenciar estoque"),
        "map": MessageLookupByLibrary.simpleMessage("Mapa"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marata"),
        "markAsRead": MessageLookupByLibrary.simpleMessage("Marcar como lido"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Marcar como enviado"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Marcar como não lido"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Talvez mais tarde"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Ordem do menu"),
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
            MessageLookupByLibrary.simpleMessage("Verificação móvel"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("há pouco"),
        "monday": MessageLookupByLibrary.simpleMessage("segunda-feira"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("... mais"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("Mais informações"),
        "morning": MessageLookupByLibrary.simpleMessage("Manhã"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("Deve selecionar 1 item"),
        "myCart": MessageLookupByLibrary.simpleMessage("Meu Carrinho"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Meu pedido"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Meus pontos"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Meus Produtos"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Você não tem nenhum produto. Tente criar um!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Minha Carteira"),
        "myWishList":
            MessageLookupByLibrary.simpleMessage("Minha Lista de Desejos"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("Nome"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Nome no cartão"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("Locais próximos"),
        "needHelp": MessageLookupByLibrary.simpleMessage("Preciso de ajuda?"),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Você precisa fazer login novamente para efetuar a atualização"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Holandês"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Novo conteúdo disponível!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nova senha"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Nova variação"),
        "next": MessageLookupByLibrary.simpleMessage("Próximo"),
        "niceName": MessageLookupByLibrary.simpleMessage("Bom nome"),
        "no": MessageLookupByLibrary.simpleMessage("Não"),
        "noAddressHaveBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Nenhum endereço foi salvo ainda."),
        "noBackHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Nenhum item de histórico de retorno"),
        "noBlog": MessageLookupByLibrary.simpleMessage(
            "Opps, o blog parece não existir mais"),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Nenhuma permissão de câmera é concedida. Por favor, conceda-o nas Configurações do seu dispositivo."),
        "noComments": MessageLookupByLibrary.simpleMessage("Sem comentários"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Ainda sem conversa"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Aparecerá quando alguém começar a conversar com você"),
        "noData": MessageLookupByLibrary.simpleMessage("Sem mais dados"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Ainda não há favoritos."),
        "noFileToDownload": MessageLookupByLibrary.simpleMessage(
            "Nenhum arquivo para download."),
        "noForwardHistoryItem": MessageLookupByLibrary.simpleMessage(
            "Nenhum item de histórico de encaminhamento"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("Sem conexão com a internet"),
        "noListingNearby": MessageLookupByLibrary.simpleMessage(
            "Não há listagem nas proximidades!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Sem Pedidos"),
        "noPaymentMethodsAvailable": MessageLookupByLibrary.simpleMessage(
            "Não há métodos de pagamento disponíveis."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Desculpe, este produto não está acessível para sua função atual."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Este produto está disponível para usuários com funções específicas."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Faça login com as credenciais apropriadas para acessar este produto ou entre em contato conosco para obter mais informações."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Ops, esta página parece não existir mais!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Sem impressoras"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Nenhum produto"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Nenhum resultado encontrado"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Nenhuma avaliação"),
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
            "Desculpe, não conseguimos encontrar nenhum resultado."),
        "notFound": MessageLookupByLibrary.simpleMessage("Não encontrado"),
        "notRated": MessageLookupByLibrary.simpleMessage("não avaliado"),
        "note": MessageLookupByLibrary.simpleMessage("Nota de Encomenda"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("nota"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Observação (opcional)"),
        "notice": MessageLookupByLibrary.simpleMessage("Notar"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificações"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "Notificar as últimas ofertas e disponibilidade do produto"),
        "ofThisProduct": MessageLookupByLibrary.simpleMessage("deste produto"),
        "ok": MessageLookupByLibrary.simpleMessage("OKEY"),
        "on": MessageLookupByLibrary.simpleMessage("em"),
        "onSale": MessageLookupByLibrary.simpleMessage("À venda"),
        "onVacation": MessageLookupByLibrary.simpleMessage("De férias"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("1 para cada destinatário"),
        "online": MessageLookupByLibrary.simpleMessage("Online"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("Aberto 24h"),
        "openMap": MessageLookupByLibrary.simpleMessage("Mapa"),
        "openNow": MessageLookupByLibrary.simpleMessage("Aberto agora"),
        "openingHours":
            MessageLookupByLibrary.simpleMessage("Horário de abertura"),
        "optional": MessageLookupByLibrary.simpleMessage("Opcional"),
        "options": MessageLookupByLibrary.simpleMessage("Opções"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("OU"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("ou faça login com"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("Confirmação do Pedido"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de criar o pedido?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Data do pedido"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Detalhes do pedido"),
        "orderHistory":
            MessageLookupByLibrary.simpleMessage("Histórico de Pedidos"),
        "orderId": MessageLookupByLibrary.simpleMessage("ID do pedido:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("ID do pedido"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Nº de Encomenda"),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Notas de pedido"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Número do pedido"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("Reversão cancelada"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("Estorno"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Concluído"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Negado"),
        "orderStatusExpired": MessageLookupByLibrary.simpleMessage("Expirado"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Falhou"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("Em espera"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Pendente"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Pagamento pendente"),
        "orderStatusProcessed": MessageLookupByLibrary.simpleMessage("--"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("Processamento"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("Reembolsado"),
        "orderStatusReversed":
            MessageLookupByLibrary.simpleMessage("Invertida"),
        "orderStatusShipped": MessageLookupByLibrary.simpleMessage("Enviado"),
        "orderStatusVoided": MessageLookupByLibrary.simpleMessage("Anulada"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Você pode verificar o status do seu pedido usando nosso recurso de status de entrega. Você receberá um e-mail de confirmação do pedido com detalhes do seu pedido e um link para acompanhar seu progresso."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Você pode fazer login em sua conta usando email e senha definidos anteriormente. Na sua conta você pode editar seus dados de perfil, verificar o histórico de transações, editar a assinatura do boletim informativo."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Você fez o pedido com sucesso"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Sua conta"),
        "orderSummary":
            MessageLookupByLibrary.simpleMessage("Resumo do pedido"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("Total do pedido"),
        "orderTracking":
            MessageLookupByLibrary.simpleMessage("Rastreamento de pedidos"),
        "orders": MessageLookupByLibrary.simpleMessage("Ordens"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("Verificação OTP"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Nossos dados bancários"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Esgotado"),
        "pageView":
            MessageLookupByLibrary.simpleMessage("Visualização de página"),
        "paid": MessageLookupByLibrary.simpleMessage("Pago"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Status pago"),
        "password": MessageLookupByLibrary.simpleMessage("Senha"),
        "passwordIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo de senha é necessária"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("As senhas não coincidem"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Cole o URL da imagem"),
        "payByWallet":
            MessageLookupByLibrary.simpleMessage("Pague pela carteira"),
        "payNow": MessageLookupByLibrary.simpleMessage("Pague Agora"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Pagamento"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Detalhes de pagamento alterados com sucesso."),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Forma de Pagamento"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Este método de pagamento não é suportado"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Formas de Pagamento"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Configurações de pagamento"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Pagamento bem-sucedido"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendente"),
        "persian": MessageLookupByLibrary.simpleMessage("Persa"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefone"),
        "phoneEmpty":
            MessageLookupByLibrary.simpleMessage("O telefone está vazio"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Formato: +5522123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo número de telefone é obrigatório"),
        "phoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telefone"),
        "phoneNumberVerification": MessageLookupByLibrary.simpleMessage(
            "Verificação do número de telefone"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Escolha Data e Hora"),
        "picking": MessageLookupByLibrary.simpleMessage("Aguardando entrega"),
        "placeMyOrder":
            MessageLookupByLibrary.simpleMessage("Fazer Meu Pedido"),
        "playAll": MessageLookupByLibrary.simpleMessage("Jogar Tudo"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("Por favor, adicione o preço"),
        "pleaseAgreeTerms": MessageLookupByLibrary.simpleMessage(
            "Por favor, concorde com nossos termos"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Por favor, permita o acesso à câmera e galeria"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Por favor, verifique a conexão com a internet!"),
        "pleaseChooseBranch": MessageLookupByLibrary.simpleMessage(
            "Por favor escolha uma filial"),
        "pleaseChooseCategory": MessageLookupByLibrary.simpleMessage(
            "Por favor, escolha a categoria"),
        "pleaseEnterProductName":
            MessageLookupByLibrary.simpleMessage("Introduza o nome do produto"),
        "pleaseFillCode": MessageLookupByLibrary.simpleMessage(
            "Por favor, preencha seu código"),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Por favor, preencha todas as células corretamente"),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Por favor, aumente ou diminua a quantidade para continuar."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Por favor, preencha os campos obrigatórios"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Por favor, preencha todos os campos"),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecione uma data de reserva"),
        "pleaseSelectALocation":
            MessageLookupByLibrary.simpleMessage("Selecione um local"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Escolha uma opção para cada atributo do produto"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Selecione pelo menos 1 atributo de variação para cada atributo ativo"),
        "pleaseSelectImages": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecione as imagens"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecione as opções necessárias!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Inicie sessão na sua conta antes de carregar quaisquer ficheiros."),
        "point": MessageLookupByLibrary.simpleMessage("Ponto"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Não há nenhuma configuração de ponto de desconto foi encontrada no servidor"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Por favor, insira o ponto de desconto"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Ponto de desconto máximo"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Você não tem ponto de desconto suficiente. Seu ponto de desconto total é"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Você atingiu o ponto de desconto máximo"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "O valor total do desconto é sobre o total da fatura"),
        "pointMsgRemove": MessageLookupByLibrary.simpleMessage(
            "O ponto de desconto é removido"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "O ponto de desconto é aplicado com sucesso"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "Existe a Regra de Desconto para aplicar seus pontos no Carrinho"),
        "polish": MessageLookupByLibrary.simpleMessage("Polonês"),
        "poor": MessageLookupByLibrary.simpleMessage("POBRE"),
        "popular": MessageLookupByLibrary.simpleMessage("Popular"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popularidade"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Este endereço será guardado no seu dispositivo local. NÃO é o endereço do usuário."),
        "postContent": MessageLookupByLibrary.simpleMessage("Conteúdo"),
        "postFail":
            MessageLookupByLibrary.simpleMessage("Sua postagem não foi criada"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Imagem em destaque"),
        "postManagement": MessageLookupByLibrary.simpleMessage("Gestão de Pós"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Pós Produto"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Sua postagem foi criada com sucesso"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Título"),
        "prepaid": MessageLookupByLibrary.simpleMessage("Pré-pago"),
        "prev": MessageLookupByLibrary.simpleMessage("Prev"),
        "preview": MessageLookupByLibrary.simpleMessage("Visualizar"),
        "price": MessageLookupByLibrary.simpleMessage("Preço"),
        "priceHighToLow":
            MessageLookupByLibrary.simpleMessage("Preço: Alto a Baixo"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Preço: Baixo a Alto"),
        "prices": MessageLookupByLibrary.simpleMessage("Menus"),
        "printReceipt": MessageLookupByLibrary.simpleMessage("Imprimir recibo"),
        "printer": MessageLookupByLibrary.simpleMessage("Impressora"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("A impressora não encontrada"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Seleção de impressora"),
        "printing": MessageLookupByLibrary.simpleMessage("Impressão..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Termos e Privacidade"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Política de privacidade"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Privacidade & Termos"),
        "private": MessageLookupByLibrary.simpleMessage("Privado"),
        "processing":
            MessageLookupByLibrary.simpleMessage("Em processamento..."),
        "product": MessageLookupByLibrary.simpleMessage("Produto"),
        "productAddToCart": m36,
        "productAdded":
            MessageLookupByLibrary.simpleMessage("O produto é adicionado"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Seu produto aparecerá após a revisão."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Desculpe, este produto não pode ser acessado, pois expirou."),
        "productName": MessageLookupByLibrary.simpleMessage("Nome do produto"),
        "productNameCanNotEmpty": MessageLookupByLibrary.simpleMessage(
            "O nome do produto não pode estar vazio"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "A variável de tipo de produto precisa de pelo menos uma variante"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Tipo de produto simples precisa do nome e preço normal"),
        "productOutOfStock": MessageLookupByLibrary.simpleMessage(
            "Este produto está fora de estoque"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Visão geral do produto"),
        "productRating":
            MessageLookupByLibrary.simpleMessage("Sua classificação"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Revisão do produto"),
        "productType": MessageLookupByLibrary.simpleMessage("Tipo de produto"),
        "products": MessageLookupByLibrary.simpleMessage("Produtos"),
        "promptPayID": MessageLookupByLibrary.simpleMessage("ID do PromptPay:"),
        "promptPayName":
            MessageLookupByLibrary.simpleMessage("Nome do PromptPay:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Tipo de PromptPay:"),
        "publish": MessageLookupByLibrary.simpleMessage("Publicar"),
        "pullToLoadMore":
            MessageLookupByLibrary.simpleMessage("Puxe para carregar mais"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "O código QR foi salvo com sucesso."),
        "qRCodeSaveFailure":
            MessageLookupByLibrary.simpleMessage("Falha ao salvar o código QR"),
        "qty": MessageLookupByLibrary.simpleMessage("Qty"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("quantidade"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "A quantidade atual é maior do que a quantidade em estoque"),
        "random": MessageLookupByLibrary.simpleMessage("Aleatório"),
        "rate": MessageLookupByLibrary.simpleMessage("Taxa"),
        "rateProduct": MessageLookupByLibrary.simpleMessage("Avaliar produto"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Classifique o aplicativo"),
        "rateThisApp":
            MessageLookupByLibrary.simpleMessage("Classifique este aplicativo"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Se você gosta deste aplicativo, por favor, tome um pouco do seu tempo para analisá-lo!\nIsso realmente nos ajuda e não deve levar mais de um minuto."),
        "rating": MessageLookupByLibrary.simpleMessage("classificação"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Por favor, avalie antes de enviar seu comentário"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Reordenar"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Opiniões"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("Aguardando entrega"),
        "receivedMoney":
            MessageLookupByLibrary.simpleMessage("Recebeu dinheiro"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("Receptor"),
        "recent": MessageLookupByLibrary.simpleMessage("Recente"),
        "recentSearches": MessageLookupByLibrary.simpleMessage(
            "Resultados de pesquisa recentes"),
        "recentView": MessageLookupByLibrary.simpleMessage("Sua visão recente"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Visualizado recentemente"),
        "recommended": MessageLookupByLibrary.simpleMessage("Recomendado"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Totais Recorrentes"),
        "refresh": MessageLookupByLibrary.simpleMessage("Atualizar"),
        "refund": MessageLookupByLibrary.simpleMessage("Reembolso"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "O pedido de reembolso do pedido não foi bem-sucedido"),
        "refundOrderSuccess": MessageLookupByLibrary.simpleMessage(
            "Solicite um reembolso para o seu pedido com sucesso!"),
        "refundRequest":
            MessageLookupByLibrary.simpleMessage("Solicitação de Reembolso"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("Reembolso Solicitado"),
        "refunds": MessageLookupByLibrary.simpleMessage("Restituições"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Regenerar resposta"),
        "registerAs": MessageLookupByLibrary.simpleMessage("Cadastre-se como"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Cadastre-se como fornecedor"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Não é possível sincronizar a conta. Por favor, faça login para continuar."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Falha no registro"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "A solicitação é inválida ou expirou. Tente novamente"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Registre-se com sucesso"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Preço normal"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Blogs relacionados"),
        "releaseToLoadMore":
            MessageLookupByLibrary.simpleMessage("Liberar para carregar mais"),
        "remove": MessageLookupByLibrary.simpleMessage("Remover"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("Remover da Lista de Desejos"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Solicitar Reserva"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Você solicitou muitos códigos em um curto espaço de tempo. Tente novamente mais tarde."),
        "resend": MessageLookupByLibrary.simpleMessage("REENVIAR"),
        "reset": MessageLookupByLibrary.simpleMessage("Repor"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Redefinir senha"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Redefinir sua senha"),
        "results": MessageLookupByLibrary.simpleMessage("Resultados"),
        "retry": MessageLookupByLibrary.simpleMessage("Repetir"),
        "review": MessageLookupByLibrary.simpleMessage("Visualizar"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("Aprovação de Revisão"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "Seu comentário foi enviado e está aguardando aprovação!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Seu comentário foi enviado!"),
        "reviews": MessageLookupByLibrary.simpleMessage("Opiniões"),
        "romanian": MessageLookupByLibrary.simpleMessage("Romeno"),
        "russian": MessageLookupByLibrary.simpleMessage("Russo"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Preço de venda"),
        "saturday": MessageLookupByLibrary.simpleMessage("Sábado"),
        "save": MessageLookupByLibrary.simpleMessage("Salvar"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Salvar endereço"),
        "saveAddressSuccess":
            MessageLookupByLibrary.simpleMessage("Salvar endereço com êxito"),
        "saveForLater":
            MessageLookupByLibrary.simpleMessage("Guardar para mais tarde"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("Salvar QR Code"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("Salvar na lista de desejos"),
        "scannerCannotScan": MessageLookupByLibrary.simpleMessage(
            "Este item não pode ser verificado"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Para digitalizar um pedido, você precisa fazer login primeiro"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Este pedido não está disponível para sua conta"),
        "search": MessageLookupByLibrary.simpleMessage("Procurar"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Pesquisar por nome de país ou código de discagem"),
        "searchByName":
            MessageLookupByLibrary.simpleMessage("Pesquisar com Nome..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Ops! Parece que nenhum resultado corresponde aos seus critérios de pesquisa"),
        "searchForItems":
            MessageLookupByLibrary.simpleMessage("Pesquisar itens"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Por favor, escreva a entrada no campo de pesquisa"),
        "searchOrderId": MessageLookupByLibrary.simpleMessage(
            "Pesquisar com ID do pedido..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Pesquisar Local"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress":
            MessageLookupByLibrary.simpleMessage("Buscar Endereço"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Ver tudo"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Continue a ver novos conteúdos na sua aplicação."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Ver Encomenda"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Ver comentários"),
        "select": MessageLookupByLibrary.simpleMessage("Selecionar"),
        "selectAddress":
            MessageLookupByLibrary.simpleMessage("Selecione o endereço"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Selecionar tudo"),
        "selectDates":
            MessageLookupByLibrary.simpleMessage("Selecione as datas"),
        "selectFileCancelled": MessageLookupByLibrary.simpleMessage(
            "Selecione o arquivo cancelado!"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Selecionar imagem"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Selecione nenhum"),
        "selectPrinter":
            MessageLookupByLibrary.simpleMessage("Selecione Impressora"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Selecionar função"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Selecione Loja"),
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
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Enviar de volta"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Obter código"),
        "sendSMStoVendor": MessageLookupByLibrary.simpleMessage(
            "Enviar SMS para o proprietário da loja"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "A conta para a qual você deseja transferir (e-mail)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Separe vários endereços de e-mail com vírgula."),
        "serbian": MessageLookupByLibrary.simpleMessage("Sérvio"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Sessão expirada"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Defina um endereço na página de configurações"),
        "settings": MessageLookupByLibrary.simpleMessage("Configurações"),
        "setup": MessageLookupByLibrary.simpleMessage("Preparar"),
        "share": MessageLookupByLibrary.simpleMessage("Compartilhar"),
        "shipped": MessageLookupByLibrary.simpleMessage("Enviado"),
        "shipping": MessageLookupByLibrary.simpleMessage("Envio"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Endereço de Entrega"),
        "shippingFee": MessageLookupByLibrary.simpleMessage("Taxa de envio"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Método de Envio"),
        "shop": MessageLookupByLibrary.simpleMessage("Loja"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("E-mail da loja"),
        "shopName": MessageLookupByLibrary.simpleMessage("Nome da loja"),
        "shopOrders": MessageLookupByLibrary.simpleMessage("Pedidos de Loja"),
        "shopPhone": MessageLookupByLibrary.simpleMessage("Telefone da loja"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Loja slug"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Breve Descrição"),
        "showAllMyOrdered": MessageLookupByLibrary.simpleMessage(
            "Mostrar todos os meus pedidos"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detalhe"),
        "showGallery":
            MessageLookupByLibrary.simpleMessage("Galeria de Exposições"),
        "showLess": MessageLookupByLibrary.simpleMessage("Ver mais"),
        "showMore": MessageLookupByLibrary.simpleMessage("Mostrar mais"),
        "signIn": MessageLookupByLibrary.simpleMessage("Entrar"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("Entrar com e-mail"),
        "signUp": MessageLookupByLibrary.simpleMessage("Cadastrar"),
        "signup": MessageLookupByLibrary.simpleMessage("Cadastrar"),
        "simple": MessageLookupByLibrary.simpleMessage("Simples"),
        "size": MessageLookupByLibrary.simpleMessage("Tamanho"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Guia de tamanho"),
        "skip": MessageLookupByLibrary.simpleMessage("Saltitar"),
        "sku": MessageLookupByLibrary.simpleMessage("SKU"),
        "slovak": MessageLookupByLibrary.simpleMessage("Eslovaco"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "O código SMS expirou. Reenvie o código de verificação para tentar novamente."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Vendido por"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Algo deu errado. Tente novamente mais tarde."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Ordenar por"),
        "sortCode":
            MessageLookupByLibrary.simpleMessage("Código de classificação"),
        "spanish": MessageLookupByLibrary.simpleMessage("Espanhol"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Fala não disponível"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Comece a explorar"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Comece a comprar"),
        "state": MessageLookupByLibrary.simpleMessage("Estado"),
        "stateIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo de estado é obrigatório"),
        "stateProvince":
            MessageLookupByLibrary.simpleMessage("Estado / Província"),
        "status": MessageLookupByLibrary.simpleMessage("Estado"),
        "stock": MessageLookupByLibrary.simpleMessage("Estoque"),
        "stockQuantity":
            MessageLookupByLibrary.simpleMessage("Quantidade de Estoque"),
        "stop": MessageLookupByLibrary.simpleMessage("Parar"),
        "store": MessageLookupByLibrary.simpleMessage("Loja"),
        "storeAddress":
            MessageLookupByLibrary.simpleMessage("Endereço da Loja"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("Estandarte"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Marca da loja"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("A loja está fechada agora"),
        "storeEmail": MessageLookupByLibrary.simpleMessage("E-mail da loja"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Informações da Loja"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Banner da lista de lojas"),
        "storeLocation":
            MessageLookupByLibrary.simpleMessage("Localização da loja"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Digite endereço/cidade"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Logotipo da loja"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Loja Mobile Banner"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Configurações da loja"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Banner do Slider da Loja"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Loja Banner Estático"),
        "storeVacation": MessageLookupByLibrary.simpleMessage("Loja de férias"),
        "stores": MessageLookupByLibrary.simpleMessage("Lojas"),
        "street": MessageLookupByLibrary.simpleMessage("Rua"),
        "street2": MessageLookupByLibrary.simpleMessage("Complemento"),
        "streetIsRequired": MessageLookupByLibrary.simpleMessage(
            "O campo nome da rua é obrigatório"),
        "streetName": MessageLookupByLibrary.simpleMessage("Nome da Rua"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Apartamento"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Bloco"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Obrigado pelo seu pedido. Estamos trabalhando rapidamente para processar seu pedido. Aguarde um e-mail de confirmação em breve"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Envie sua postagem"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "sunday": MessageLookupByLibrary.simpleMessage("Domingo"),
        "support": MessageLookupByLibrary.simpleMessage("Apoio"),
        "swahili": MessageLookupByLibrary.simpleMessage("Suaíle"),
        "swedish": MessageLookupByLibrary.simpleMessage("Sueco"),
        "tag": MessageLookupByLibrary.simpleMessage("marcação"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Esta tag não existe"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Tirar foto"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tâmil"),
        "tapSelectLocation": MessageLookupByLibrary.simpleMessage(
            "Toque para selecionar este local"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Toque no microfone para falar"),
        "tax": MessageLookupByLibrary.simpleMessage("Imposto"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("Carteira Tera"),
        "terrible": MessageLookupByLibrary.simpleMessage("Terrível"),
        "thailand": MessageLookupByLibrary.simpleMessage("Tailandês"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Esta data não está disponível"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Esse recurso não oferece suporte ao idioma atual"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Esse é o papel do cliente"),
        "thisIsVendorRole": MessageLookupByLibrary.simpleMessage(
            "Esta é a função do fornecedor"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Esta plataforma não é compatível com WebView"),
        "thisProductNotSupport": MessageLookupByLibrary.simpleMessage(
            "Este produto não é suportado"),
        "thursday": MessageLookupByLibrary.simpleMessage("Quinta-feira"),
        "tickets": MessageLookupByLibrary.simpleMessage("Bilhetes"),
        "time": MessageLookupByLibrary.simpleMessage("Hora"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "titleAToZ": MessageLookupByLibrary.simpleMessage("Título: A a Z"),
        "titleZToA": MessageLookupByLibrary.simpleMessage("Título: Z a A"),
        "to": MessageLookupByLibrary.simpleMessage("Para"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Muitas tentativas de login fracassadas. Tente novamente mais tarde."),
        "topUp": MessageLookupByLibrary.simpleMessage("Recarga"),
        "topUpProductNotFound": MessageLookupByLibrary.simpleMessage(
            "Produto de recarga não encontrado"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "O valor total do pedido deve ser pelo menos"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Preço total"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Total do imposto"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("O número de rastreamento é"),
        "trackingPage":
            MessageLookupByLibrary.simpleMessage("Página de acompanhamento"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("Transação cancelada"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Detalhes da transação"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("A transação falhou"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("Falha na transação"),
        "transactionFee":
            MessageLookupByLibrary.simpleMessage("Taxa de transação"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("Resultado da Transação"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transferência"),
        "transferConfirm": MessageLookupByLibrary.simpleMessage(
            "Confirmação de transferência"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Não é possível transferir para este usuário"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Falha na transferência"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Sucesso na transferência"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Terça"),
        "turkish": MessageLookupByLibrary.simpleMessage("Turco"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("Ativar Bluetooth"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Digite uma mensagem..."),
        "typeYourMessage":
            MessageLookupByLibrary.simpleMessage("Digite sua mensagem aqui..."),
        "typing": MessageLookupByLibrary.simpleMessage("Digitação..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ucraniano"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Indisponível"),
        "unblock": MessageLookupByLibrary.simpleMessage("Desbloquear"),
        "unblockUser":
            MessageLookupByLibrary.simpleMessage("Desbloquear usuário"),
        "undo": MessageLookupByLibrary.simpleMessage("Desfazer"),
        "unpaid": MessageLookupByLibrary.simpleMessage("A pagar"),
        "update": MessageLookupByLibrary.simpleMessage("Atualizar"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Falha na atualização!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Informações de atualização"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Atualizar senha"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Status da atualização"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Atualize com sucesso!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Atualizar perfil"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Carregar arquivo"),
        "uploadImage": MessageLookupByLibrary.simpleMessage("Enviar Imagem"),
        "uploadProduct":
            MessageLookupByLibrary.simpleMessage("Carregar produto"),
        "uploading": MessageLookupByLibrary.simpleMessage("Carregando arquivo"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Use Agora"),
        "useThisImage": MessageLookupByLibrary.simpleMessage("Use esta imagem"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Este nome de usuário/e-mail não está disponível."),
        "userHasBeenBlocked":
            MessageLookupByLibrary.simpleMessage("O usuário foi bloqueado"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "O nome de usuário ou senha está incorreto."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "O usuário não foi encontrado"),
        "username": MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "usernameAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Nome de usuário já em uso!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Nome de usuário e senha são obrigatórios"),
        "usernameInvalid":
            MessageLookupByLibrary.simpleMessage("Nome de usuário inválido"),
        "usernameIsRequired": MessageLookupByLibrary.simpleMessage(
            "Nome de usuário é obrigatório"),
        "vacationMessage":
            MessageLookupByLibrary.simpleMessage("Mensagem de Férias"),
        "vacationType": MessageLookupByLibrary.simpleMessage("Tipo de férias"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("Variável"),
        "variation": MessageLookupByLibrary.simpleMessage("Variação"),
        "vendor": MessageLookupByLibrary.simpleMessage("--"),
        "vendorAdmin":
            MessageLookupByLibrary.simpleMessage("Administrador do fornecedor"),
        "vendorInfo":
            MessageLookupByLibrary.simpleMessage("Informações do fornecedor"),
        "verificationCode": MessageLookupByLibrary.simpleMessage(
            "Código de verificação (6 dígitos)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Verificar"),
        "viaWallet": MessageLookupByLibrary.simpleMessage("Via carteira"),
        "video": MessageLookupByLibrary.simpleMessage("Vídeo"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamita"),
        "view": MessageLookupByLibrary.simpleMessage("Visão"),
        "viewCart": MessageLookupByLibrary.simpleMessage("Ver Carrinho"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("VER DETALHES"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Veja mais"),
        "viewOnGoogleMaps":
            MessageLookupByLibrary.simpleMessage("Ver no Google Maps"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Exibir pedido"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Exibir transações recentes"),
        "visible": MessageLookupByLibrary.simpleMessage("Visível"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Visite a Loja"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Aguardando o carregamento da imagem"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Aguardando pós produto"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Aguardando confirmação"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Saldo da carteira"),
        "walletBalanceWithValue": m51,
        "walletName": MessageLookupByLibrary.simpleMessage("Nome da carteira"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Encontramos blog(s)"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "Precisamos de acesso à câmera para escanear código QR ou código de barras."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Um código de autenticação foi enviado para"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Enviaremos notificações quando novos produtos estiverem disponíveis ou ofertas estiverem disponíveis. Você sempre pode desativá-lo nas configurações."),
        "webView": MessageLookupByLibrary.simpleMessage("Visualização da Web"),
        "website":
            MessageLookupByLibrary.simpleMessage("Local na rede Internet"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Quarta-feira"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Bem-vindo"),
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
            MessageLookupByLibrary.simpleMessage("Coleções Femininas"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Escreva seu comentário"),
        "writeYourNote":
            MessageLookupByLibrary.simpleMessage("Escreva sua nota"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Sim"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Você só pode comprar em uma única loja."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Você só pode comprar"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Você não tem permissão para criar uma postagem"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal": MessageLookupByLibrary.simpleMessage(
            "Você salvou o endereço em seu arquivo local com sucesso!"),
        "youHaveNoPost":
            MessageLookupByLibrary.simpleMessage("Você não tem postagens"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("Você tem \$point pontos"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Você também pode gostar"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Você precisa fazer login para finalizar a compra"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Você não será perguntado da próxima vez após a conclusão"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Sua conta está em revisão. Entre em contato com o administrador se precisar de ajuda."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Seu endereço existe em seu local"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "O endereço foi salvo no armazenamento local"),
        "yourApplicationIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "A sua candidatura está em análise."),
        "yourBagIsEmpty":
            MessageLookupByLibrary.simpleMessage("Seu carrinho está vazio"),
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
        "yourOrders": MessageLookupByLibrary.simpleMessage("Seus Pedidos"),
        "yourProductIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Seu produto está sob revisão"),
        "yourUsernameEmail": MessageLookupByLibrary.simpleMessage(
            "Seu nome de usuário ou e-mail"),
        "zipCode": MessageLookupByLibrary.simpleMessage("CEP"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("O campo CEP é obrigatório")
      };
}
