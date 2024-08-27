// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(x) => "Aktif ${x}";

  static String m1(attribute) => "Herhangi bir ${attribute}";

  static String m2(point) => "Mevcut noktalarınız: ${point}";

  static String m3(state) => "Bluetooth Adaptörü: ${state}";

  static String m4(author) => "Yazar: ${author}";

  static String m5(currency) => "Para birimi ${currency}olarak değiştirildi";

  static String m6(number) => "${number} karakter kaldı";

  static String m7(priceRate, pointRate) => "${priceRate} = ${pointRate} Puan";

  static String m8(count) => "${count} öğe";

  static String m9(count) => "${count} öğe";

  static String m10(count) => "${count} öğe";

  static String m11(count) => "${count} ürün";

  static String m12(country) => "${country} ülke desteklenmiyor";

  static String m13(currency) => "${currency} desteklenmiyor";

  static String m14(day) => "${day} Gün önce";

  static String m15(total) => "~${total} km";

  static String m16(timeLeft) => "Ends in ${timeLeft}";

  static String m17(captcha) => "Onaylamak için ${captcha} girin:";

  static String m18(message) => "Hata: ${message}";

  static String m19(message) => "Hata: ${message}";

  static String m20(time) => " ${time}içinde süresi doluyor";

  static String m21(total) => ">${total} km";

  static String m22(hour) => "${hour} Saat önce";

  static String m23(currentBalance) =>
      "Cüzdanınızda yalnızca ${currentBalance} kaldı";

  static String m24(count) =>
      " ${Intl.plural(count, one: '${count} item', other: '${count} items')}";

  static String m25(message) =>
      "There is an issue with the app during request the data, please contact admin for fixing the issues: ${message}";

  static String m26(currency, amount) =>
      "Bu ödemeyi kullanmak için maksimum tutar ${currency} ${amount}";

  static String m27(size) => "Maksimum dosya boyutu: ${size} MB";

  static String m28(currency, amount) =>
      "Bu ödemeyi kullanmak için minimum tutar ${currency} ${amount}";

  static String m29(minute) => "${minute} Dakika önce";

  static String m30(month) => "${month} ay önce";

  static String m31(store) => " ${store}\'dan daha fazlası";

  static String m32(number) =>
      " ${number}kişilik gruplar halinde satın alınmalıdır";

  static String m33(itemCount) => "${itemCount} ürün";

  static String m34(price) => "Toplam seçenek: ${price}";

  static String m35(amount) => " ${amount}öde";

  static String m36(name) => "${name} başarıyla sepete eklendi";

  static String m37(total) => "Adet: ${total}";

  static String m38(name) => " ${name}\'dan para alındı";

  static String m39(percent) => "% ${percent} İndirim ";

  static String m40(keyword) => "Şunun için arama sonuçları: \'${keyword}\'";

  static String m41(keyword, count) => "${keyword} (${count} öğe)";

  static String m42(keyword, count) => "${keyword} (${count} öğe)";

  static String m43(second) => "${second} Saniye önce";

  static String m44(totalCartQuantity) => "${totalCartQuantity} ürün, Sepette";

  static String m45(numberOfUnitsSold) => "Sold: ${numberOfUnitsSold}";

  static String m46(fieldName) => " ${fieldName} alanı zorunludur";

  static String m47(total) => "${total} ürün";

  static String m48(name) => " ${name}\'a para transferi yapın";

  static String m49(maxPointDiscount, maxPriceDiscount) =>
      "Bu siparişte ${maxPriceDiscount} indirim için maksimum ${maxPointDiscount} Puan kullanın!";

  static String m50(date) => " ${date}tarihine kadar geçerlidir";

  static String m51(balance) => "Cüzdan bakiyesi: ${balance}";

  static String m52(message) => "Hata: ${message}";

  static String m53(defaultCurrency) =>
      "Şu anda seçili para birimi Cüzdan özelliği için kullanılamıyor, lütfen bunu ${defaultCurrency}olarak değiştirin";

  static String m54(length) => " \$${length} Ürün Bulundu";

  static String m55(week) => " ${week}haftası";

  static String m56(name) => "Hoş geldiniz ${name}";

  static String m57(year) => "${year} yıl önce";

  static String m58(total) => "#${total}numaralı siparişe atadınız";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Hakkımızda"),
        "account": MessageLookupByLibrary.simpleMessage("hesap"),
        "accountApprovalTitle":
            MessageLookupByLibrary.simpleMessage("Onay Altında"),
        "accountDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Hesabınızı silmek, kişisel bilgileri veritabanımızdan kaldırır. E-postanız kalıcı olarak rezerve edilir ve aynı e-posta yeni bir hesap açmak için yeniden kullanılamaz."),
        "accountIsPendingApproval":
            MessageLookupByLibrary.simpleMessage("Hesap onay bekliyor."),
        "accountNumber": MessageLookupByLibrary.simpleMessage("Hesap numarası"),
        "accountSetup": MessageLookupByLibrary.simpleMessage("Hesap kurulumu"),
        "active": MessageLookupByLibrary.simpleMessage("Aktif"),
        "activeFor": m0,
        "activeLongAgo":
            MessageLookupByLibrary.simpleMessage("uzun zaman önce aktif"),
        "activeNow": MessageLookupByLibrary.simpleMessage("Şimdi aktif"),
        "addAName": MessageLookupByLibrary.simpleMessage("Bir isim ekleyin"),
        "addANewPost": MessageLookupByLibrary.simpleMessage("Yeni Mesaj Ekle"),
        "addASlug": MessageLookupByLibrary.simpleMessage("Kısa ad ekleyin"),
        "addAnAttr":
            MessageLookupByLibrary.simpleMessage("Bir öznitelik ekleyin"),
        "addListing": MessageLookupByLibrary.simpleMessage("İlan Ekle"),
        "addMessage": MessageLookupByLibrary.simpleMessage("Mesaj ekle"),
        "addNew": MessageLookupByLibrary.simpleMessage("Yeni ekle"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Yeni adres ekleyin"),
        "addNewBlog": MessageLookupByLibrary.simpleMessage("Yeni Blog Ekle"),
        "addNewPost":
            MessageLookupByLibrary.simpleMessage("Yeni Gönderi Oluştur"),
        "addProduct": MessageLookupByLibrary.simpleMessage("Ürün ekle"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Sepete ekle"),
        "addToCartMaximum":
            MessageLookupByLibrary.simpleMessage("Maksimum miktar aşıldı"),
        "addToCartSuccessfully":
            MessageLookupByLibrary.simpleMessage("Sepete başarıyla eklendi"),
        "addToOrder": MessageLookupByLibrary.simpleMessage("Siparişe ekle"),
        "addToQuoteRequest":
            MessageLookupByLibrary.simpleMessage("Teklif isteğine ekle"),
        "addToWishlist":
            MessageLookupByLibrary.simpleMessage("İstek listesine ekle"),
        "added": MessageLookupByLibrary.simpleMessage("Katma"),
        "addedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Başarıyla eklendi"),
        "addingYourImage":
            MessageLookupByLibrary.simpleMessage("Resminizi eklemek"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Ek bilgi"),
        "additionalServices":
            MessageLookupByLibrary.simpleMessage("Ek hizmetler"),
        "address": MessageLookupByLibrary.simpleMessage("Adres"),
        "adults": MessageLookupByLibrary.simpleMessage("Yetişkinler"),
        "afternoon": MessageLookupByLibrary.simpleMessage("öğleden sonra"),
        "agree": MessageLookupByLibrary.simpleMessage("anlaşmak"),
        "agreeWithPrivacy":
            MessageLookupByLibrary.simpleMessage("Gizlilik Ve Koşul Poliçesi"),
        "albanian": MessageLookupByLibrary.simpleMessage("Arnavutça"),
        "all": MessageLookupByLibrary.simpleMessage("Tümü"),
        "allBrands": MessageLookupByLibrary.simpleMessage("Tüm markalar"),
        "allDeliveryOrders":
            MessageLookupByLibrary.simpleMessage("Tüm siparişler"),
        "allOrders": MessageLookupByLibrary.simpleMessage("Son Satışlar"),
        "allProducts": MessageLookupByLibrary.simpleMessage("Tüm ürünler"),
        "allow": MessageLookupByLibrary.simpleMessage("İzin vermek"),
        "allowCameraAccess": MessageLookupByLibrary.simpleMessage(
            "Kamera erişimine izin verilsin mi?"),
        "almostSoldOut":
            MessageLookupByLibrary.simpleMessage("Neredeyse tükenmiş"),
        "amazing": MessageLookupByLibrary.simpleMessage("İnanılmaz"),
        "amount": MessageLookupByLibrary.simpleMessage("Miktar"),
        "anyAttr": m1,
        "appearance": MessageLookupByLibrary.simpleMessage("Görünüm"),
        "apply": MessageLookupByLibrary.simpleMessage("Uygula"),
        "approve": MessageLookupByLibrary.simpleMessage("Onaylamak"),
        "approved": MessageLookupByLibrary.simpleMessage("onaylı"),
        "approvedRequests":
            MessageLookupByLibrary.simpleMessage("Onaylanan İstekler"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arapça"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Eminmisin?"),
        "areYouSureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Hesabınızı silmek istediğinizden emin misiniz?"),
        "areYouSureLogOut": MessageLookupByLibrary.simpleMessage(
            "Oturumu kapatmak istediğinizden emin misiniz?"),
        "areYouWantToExit": MessageLookupByLibrary.simpleMessage(
            "Çıkmak istediğine emin misin?"),
        "assigned": MessageLookupByLibrary.simpleMessage("atanmış"),
        "atLeastThreeCharacters":
            MessageLookupByLibrary.simpleMessage("En az 3 karakter..."),
        "attribute": MessageLookupByLibrary.simpleMessage("Bağlanmak"),
        "attributeAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Özellik zaten var"),
        "attributes": MessageLookupByLibrary.simpleMessage("Özellikler"),
        "audioDetected": MessageLookupByLibrary.simpleMessage(
            "Ses öğeleri algılandı. Audio Player\'a eklemek istiyor musunuz?"),
        "availability": MessageLookupByLibrary.simpleMessage("Stok Durumu"),
        "availabilityProduct":
            MessageLookupByLibrary.simpleMessage("Mevcutluk:"),
        "availablePoints": m2,
        "averageRating": MessageLookupByLibrary.simpleMessage("Ortalama puanı"),
        "back": MessageLookupByLibrary.simpleMessage("Geri"),
        "backOrder": MessageLookupByLibrary.simpleMessage("Ön siparişte"),
        "backToShop": MessageLookupByLibrary.simpleMessage("Mağazaya geri dön"),
        "backToWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan\'a Geri Dön"),
        "bagsCollections":
            MessageLookupByLibrary.simpleMessage("Çanta Koleksiyonları"),
        "balance": MessageLookupByLibrary.simpleMessage("Bakiye"),
        "bank": MessageLookupByLibrary.simpleMessage("Banka"),
        "bannerListType":
            MessageLookupByLibrary.simpleMessage("Banner Listesi Türü"),
        "bannerType": MessageLookupByLibrary.simpleMessage("Banner Tipi"),
        "bannerYoutubeURL":
            MessageLookupByLibrary.simpleMessage("Banner Youtube URL\'si"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Temel bilgiler"),
        "becomeAVendor": MessageLookupByLibrary.simpleMessage("Satıcı Olun"),
        "bengali": MessageLookupByLibrary.simpleMessage("Bengal"),
        "billingAddress": MessageLookupByLibrary.simpleMessage("Fatura adresi"),
        "bleHasNotBeenEnabled":
            MessageLookupByLibrary.simpleMessage("Bluetooth etkinleştirilmedi"),
        "bleState": m3,
        "block": MessageLookupByLibrary.simpleMessage("Engellemek"),
        "blockUser":
            MessageLookupByLibrary.simpleMessage("Kullanıcıyı engelle"),
        "blog": MessageLookupByLibrary.simpleMessage("Blog"),
        "booked":
            MessageLookupByLibrary.simpleMessage("Önceden rezerve edilmiş"),
        "booking": MessageLookupByLibrary.simpleMessage("Rezervasyon"),
        "bookingCancelled":
            MessageLookupByLibrary.simpleMessage("Rezervasyon iptal edildi"),
        "bookingConfirm": MessageLookupByLibrary.simpleMessage("Onaylanmış"),
        "bookingError": MessageLookupByLibrary.simpleMessage(
            "Yanlış birşey var. Lütfen daha sonra tekrar deneyiniz."),
        "bookingHistory":
            MessageLookupByLibrary.simpleMessage("Rezervasyon Geçmişi"),
        "bookingNow": MessageLookupByLibrary.simpleMessage("Rezervasyon"),
        "bookingSuccess":
            MessageLookupByLibrary.simpleMessage("Başarıyla Rezerve Edildi"),
        "bookingSummary":
            MessageLookupByLibrary.simpleMessage("Rezervasyon özeti"),
        "bookingUnavailable":
            MessageLookupByLibrary.simpleMessage("Rezervasyon yapılamıyor"),
        "bosnian": MessageLookupByLibrary.simpleMessage("Boşnakça"),
        "branch": MessageLookupByLibrary.simpleMessage("Şube"),
        "branchChangeWarning": MessageLookupByLibrary.simpleMessage(
            "Üzgünüz, bölge değişikliği nedeniyle alışveriş sepeti boşalacaktır. Yardıma ihtiyacınız olursa sizinle iletişime geçmekten mutluluk duyarız."),
        "brand": MessageLookupByLibrary.simpleMessage("Marka"),
        "brands": MessageLookupByLibrary.simpleMessage("Markalar"),
        "brazil": MessageLookupByLibrary.simpleMessage("Portekizce"),
        "burmese": MessageLookupByLibrary.simpleMessage("Birmanyalı"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Şimdi Satın al"),
        "by": MessageLookupByLibrary.simpleMessage("Tarafından"),
        "byAppointmentOnly":
            MessageLookupByLibrary.simpleMessage("Sadece randevuyla"),
        "byAuthor": m4,
        "byBrand": MessageLookupByLibrary.simpleMessage("Markaya göre"),
        "byCategory": MessageLookupByLibrary.simpleMessage("Kategoriye Göre"),
        "byPrice": MessageLookupByLibrary.simpleMessage("Fiyata Göre"),
        "bySignup": MessageLookupByLibrary.simpleMessage("Kaydolarak, bizim"),
        "byTag": MessageLookupByLibrary.simpleMessage("Etikete göre"),
        "call": MessageLookupByLibrary.simpleMessage("Telefon etmek"),
        "callTo": MessageLookupByLibrary.simpleMessage("Çağrı Yap"),
        "callToVendor":
            MessageLookupByLibrary.simpleMessage("Mağaza Sahibine Çağrı"),
        "canNotCreateOrder":
            MessageLookupByLibrary.simpleMessage("Sipariş oluşturulamıyor"),
        "canNotCreateUser":
            MessageLookupByLibrary.simpleMessage("Kullanıcı oluşturulamıyor."),
        "canNotGetPayments":
            MessageLookupByLibrary.simpleMessage("Ödeme yöntemleri alınamıyor"),
        "canNotGetShipping": MessageLookupByLibrary.simpleMessage(
            "Nakliye yöntemleri alınamıyor"),
        "canNotGetToken": MessageLookupByLibrary.simpleMessage(
            "Belirteç Bilgisi alınamıyor."),
        "canNotLaunch": MessageLookupByLibrary.simpleMessage(
            "Uygulama başlatılamadı. Lütfen mağaza ile iletişime geçin."),
        "canNotLoadThisLink":
            MessageLookupByLibrary.simpleMessage("Bu bağlantı yüklenemiyor"),
        "canNotPlayVideo": MessageLookupByLibrary.simpleMessage(
            "Üzgünüz, bu video oynatılamıyor."),
        "canNotSaveOrder": MessageLookupByLibrary.simpleMessage(
            "Sipariş web sitesine kaydedilemiyor"),
        "canNotUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Kullanıcı bilgileri güncellenemiyor."),
        "cancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("İptal etmek"),
        "cancelled": MessageLookupByLibrary.simpleMessage("İptal Edildi"),
        "cancelledRequests":
            MessageLookupByLibrary.simpleMessage("İptal Edilen İstekler"),
        "cannotDeleteAccount":
            MessageLookupByLibrary.simpleMessage("Bu hesap silinemez"),
        "cannotSendMessage": MessageLookupByLibrary.simpleMessage(
            "Bu kullanıcıya mesaj gönderemezsiniz"),
        "cantFindThisOrderId": MessageLookupByLibrary.simpleMessage(
            "Bu sipariş kimliğini bulamıyorum"),
        "cantPickDateInThePast": MessageLookupByLibrary.simpleMessage(
            "Geçmişteki tarihe izin verilmiyor"),
        "cardHolder": MessageLookupByLibrary.simpleMessage("Kart sahibi"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Kart Numarası"),
        "cart": MessageLookupByLibrary.simpleMessage("Sepet"),
        "cartDiscount": MessageLookupByLibrary.simpleMessage("Cart Discount"),
        "cash": MessageLookupByLibrary.simpleMessage("Nakit"),
        "categories": MessageLookupByLibrary.simpleMessage("Kategoriler"),
        "category": MessageLookupByLibrary.simpleMessage("Kategori"),
        "change": MessageLookupByLibrary.simpleMessage("Değiştir"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Dili Değiştir"),
        "changePrinter":
            MessageLookupByLibrary.simpleMessage("Yazıcıyı Değiştir"),
        "changedCurrencyTo": m5,
        "characterRemain": m6,
        "chat": MessageLookupByLibrary.simpleMessage("Sohbet"),
        "chatGPT": MessageLookupByLibrary.simpleMessage("Sohbet GPT\'si"),
        "chatListScreen":
            MessageLookupByLibrary.simpleMessage("Sohbet Listesi Ekranı"),
        "chatViaFacebook": MessageLookupByLibrary.simpleMessage(
            "Facebook Messenger ile sohbet edin"),
        "chatViaWhatApp": MessageLookupByLibrary.simpleMessage(
            "WhatsApp üzerinden sohbet edin"),
        "chatWithBot": MessageLookupByLibrary.simpleMessage("botla sohbet et"),
        "chatWithStoreOwner": MessageLookupByLibrary.simpleMessage(
            "Mağaza Sahibi ile Sohbet Edin"),
        "checkConfirmLink": MessageLookupByLibrary.simpleMessage(
            "Onay için E Posta adresini kontrol et"),
        "checking": MessageLookupByLibrary.simpleMessage("kontrol ediliyor..."),
        "checkout": MessageLookupByLibrary.simpleMessage("Ödeme"),
        "chinese": MessageLookupByLibrary.simpleMessage("Çince"),
        "chineseSimplified":
            MessageLookupByLibrary.simpleMessage("Basitleştirilmiş Çince)"),
        "chineseTraditional":
            MessageLookupByLibrary.simpleMessage("Çin geleneği)"),
        "chooseBranch": MessageLookupByLibrary.simpleMessage("Şubeyi seçin"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Kategori Seçin"),
        "chooseFromGallery":
            MessageLookupByLibrary.simpleMessage("Galeriden Seç"),
        "chooseFromServer":
            MessageLookupByLibrary.simpleMessage("Sunucudan Seçin"),
        "choosePlan": MessageLookupByLibrary.simpleMessage("Plan seçin"),
        "chooseStaff": MessageLookupByLibrary.simpleMessage("Personel Seçin"),
        "chooseType": MessageLookupByLibrary.simpleMessage("Tur seçin"),
        "chooseYourPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Ödeme Şeklini Seç"),
        "city": MessageLookupByLibrary.simpleMessage("ilçe"),
        "cityIsRequired":
            MessageLookupByLibrary.simpleMessage("il alanı zorunludur"),
        "clear": MessageLookupByLibrary.simpleMessage("Temizle"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Sepeti Temizle"),
        "clearConversation":
            MessageLookupByLibrary.simpleMessage("Temiz konuşma"),
        "close": MessageLookupByLibrary.simpleMessage("Kapat"),
        "closeNow": MessageLookupByLibrary.simpleMessage("Şimdi kapalı"),
        "closed": MessageLookupByLibrary.simpleMessage("kapalı"),
        "codExtraFee":
            MessageLookupByLibrary.simpleMessage("KOİ Ekstra Ücreti"),
        "color": MessageLookupByLibrary.simpleMessage("Renk"),
        "comment": MessageLookupByLibrary.simpleMessage("Yorum Yap"),
        "commentFirst":
            MessageLookupByLibrary.simpleMessage("Lütfen yorumunuzu yazınız"),
        "commentSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Yorum başarıyla gönderildi, lütfen yorumunuz onaylanana kadar bekleyin"),
        "complete": MessageLookupByLibrary.simpleMessage("Tamamlayınız"),
        "confirm": MessageLookupByLibrary.simpleMessage("Onaylamak"),
        "confirmAccountDeletion": MessageLookupByLibrary.simpleMessage(
            "Hesap silme işlemini onaylayın"),
        "confirmClearCartWhenTopUp": MessageLookupByLibrary.simpleMessage(
            "Yüklendiğinde sepet temizlenecektir."),
        "confirmClearTheCart": MessageLookupByLibrary.simpleMessage(
            "Sepeti temizlemek istediğinizden emin misiniz?"),
        "confirmDelete": MessageLookupByLibrary.simpleMessage(
            "Bunu silmek istediğinizden emin misiniz? Bu işlem geri alınamaz."),
        "confirmDeleteItem": MessageLookupByLibrary.simpleMessage(
            "Bu öğeyi silmek istediğinizden emin misiniz?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Şifreyi Onayla"),
        "confirmPasswordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Şifreyi onayla alanı zorunludur"),
        "confirmRemoveProductInCart": MessageLookupByLibrary.simpleMessage(
            "Bu ürünü kaldırmak istediğinizden emin misiniz?"),
        "connect": MessageLookupByLibrary.simpleMessage("bağlamak"),
        "contact": MessageLookupByLibrary.simpleMessage("Temas"),
        "content": MessageLookupByLibrary.simpleMessage("içerik"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("Alışverişe devam"),
        "continueToPayment": MessageLookupByLibrary.simpleMessage("Ödeme"),
        "continueToReview":
            MessageLookupByLibrary.simpleMessage("Gözden Geçir"),
        "continueToShipping":
            MessageLookupByLibrary.simpleMessage("Gönderime Devam Et"),
        "continues": MessageLookupByLibrary.simpleMessage("Devam et"),
        "conversations": MessageLookupByLibrary.simpleMessage("Konuşmalar"),
        "convertPoint": m7,
        "copied": MessageLookupByLibrary.simpleMessage("kopyalanan"),
        "copy": MessageLookupByLibrary.simpleMessage("kopya"),
        "copyright": MessageLookupByLibrary.simpleMessage(
            "© 2024 InspireUI Tüm hakları saklıdır."),
        "countItem": m8,
        "countItems": m9,
        "countProduct": m10,
        "countProducts": m11,
        "country": MessageLookupByLibrary.simpleMessage("Ülke"),
        "countryCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Ülke kodu gereklidir"),
        "countryIsNotSupported": m12,
        "countryIsRequired":
            MessageLookupByLibrary.simpleMessage("Ülke alanı zorunludur"),
        "couponCode": MessageLookupByLibrary.simpleMessage("Kupon Kodu"),
        "couponHasBeenSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Kupon başarıyla kaydedildi."),
        "couponInvalid":
            MessageLookupByLibrary.simpleMessage("Kupon Kodunuz geçersiz."),
        "couponMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "Tebrikler! Kupon başarıyla uygulandı"),
        "createAnAccount":
            MessageLookupByLibrary.simpleMessage("Hesap oluştur"),
        "createNewPostSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Yayınınız taslak olarak başarıyla oluşturuldu. Lütfen yönetici sitenize bir göz atın."),
        "createPost": MessageLookupByLibrary.simpleMessage("Gönderi Oluştur"),
        "createProduct": MessageLookupByLibrary.simpleMessage("Ürün Yarat"),
        "createReviewSuccess": MessageLookupByLibrary.simpleMessage(
            "İncelemeniz için teşekkür ederiz"),
        "createReviewSuccessMsg": MessageLookupByLibrary.simpleMessage(
            "Katkılarınızı gerçekten takdir ediyoruz ve gelişmemize yardımcı olan katkınıza değer veriyoruz"),
        "createVariants":
            MessageLookupByLibrary.simpleMessage("Tüm varyantları oluştur"),
        "createdOn":
            MessageLookupByLibrary.simpleMessage("Oluşturulma tarihi:"),
        "currencies": MessageLookupByLibrary.simpleMessage("Para Birimleri"),
        "currencyIsNotSupported": m13,
        "currentPassword": MessageLookupByLibrary.simpleMessage("Mevcut Şifre"),
        "currentlyWeOnlyHave":
            MessageLookupByLibrary.simpleMessage("Currently we only have"),
        "customer": MessageLookupByLibrary.simpleMessage("Müşteri"),
        "customerDetail":
            MessageLookupByLibrary.simpleMessage("Müşteri Detayı"),
        "customerNote": MessageLookupByLibrary.simpleMessage("müşteri notu"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "czech": MessageLookupByLibrary.simpleMessage("Çek"),
        "danish": MessageLookupByLibrary.simpleMessage("Danimarkalı"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Koyu Tema"),
        "dashboard": MessageLookupByLibrary.simpleMessage("gösterge paneli"),
        "dataEmpty": MessageLookupByLibrary.simpleMessage("Veri yok"),
        "date": MessageLookupByLibrary.simpleMessage("Tarih"),
        "dateASC": MessageLookupByLibrary.simpleMessage("Artan tarih"),
        "dateBooking": MessageLookupByLibrary.simpleMessage("Rezervasyon yap"),
        "dateDESC": MessageLookupByLibrary.simpleMessage("Tarih azalan"),
        "dateEnd": MessageLookupByLibrary.simpleMessage("Tarih Bitiş"),
        "dateLatest": MessageLookupByLibrary.simpleMessage("Tarih: En son"),
        "dateOldest": MessageLookupByLibrary.simpleMessage("Tarih: En eski"),
        "dateStart": MessageLookupByLibrary.simpleMessage("Başlangıç tarihi"),
        "dateTime": MessageLookupByLibrary.simpleMessage("Tarih Saat"),
        "dateWiseClose":
            MessageLookupByLibrary.simpleMessage("Tarih akıllıca yakın"),
        "daysAgo": m14,
        "debit": MessageLookupByLibrary.simpleMessage("Borç"),
        "decline": MessageLookupByLibrary.simpleMessage("düşüş"),
        "delete": MessageLookupByLibrary.simpleMessage("silmek"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Hesabı sil"),
        "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
            "Hesabınızı silmek istediğinizden emin misiniz? Lütfen hesap silme işleminin nasıl etkileyeceğini okuyun."),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "Hesap başarıyla silindi. Oturumunuz sona erdi."),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Hepsini sil"),
        "deleteConversation":
            MessageLookupByLibrary.simpleMessage("Konuşmayı sil"),
        "delivered": MessageLookupByLibrary.simpleMessage("teslim"),
        "deliveredTo": MessageLookupByLibrary.simpleMessage("Teslim edildi"),
        "delivering": MessageLookupByLibrary.simpleMessage("Teslim etmek"),
        "deliveryBoy": MessageLookupByLibrary.simpleMessage("Kurye:"),
        "deliveryDate": MessageLookupByLibrary.simpleMessage("Teslim tarihi"),
        "deliveryDetails":
            MessageLookupByLibrary.simpleMessage("Teslimat Detayları"),
        "deliveryManagement": MessageLookupByLibrary.simpleMessage("teslim"),
        "deliveryNotificationError": MessageLookupByLibrary.simpleMessage(
            "Veri yok.\nBu sipariş kaldırıldı."),
        "description": MessageLookupByLibrary.simpleMessage("Açıklama"),
        "descriptionEnterVoucher": MessageLookupByLibrary.simpleMessage(
            "Lütfen siparişiniz için kuponu girin veya seçin."),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Sms kodu sana ulaşmadı mı? "),
        "direction": MessageLookupByLibrary.simpleMessage("yön"),
        "disablePurchase": MessageLookupByLibrary.simpleMessage(
            "Satın almayı devre dışı bırak"),
        "discount": MessageLookupByLibrary.simpleMessage("İndirim"),
        "displayName": MessageLookupByLibrary.simpleMessage("İsim - Soyisim"),
        "distance": m15,
        "doNotAnyTransactions":
            MessageLookupByLibrary.simpleMessage("Henüz bir işleminiz yok"),
        "doYouWantToExitApp": MessageLookupByLibrary.simpleMessage(
            "Uygulamadan çıkmak mı istiyorsun?"),
        "doYouWantToLeaveWithoutSubmit": MessageLookupByLibrary.simpleMessage(
            "Yorumunuzu göndermeden ayrılmak mı istiyorsunuz?"),
        "doYouWantToLogout": MessageLookupByLibrary.simpleMessage(
            "Oturumu kapatmak istiyor musunuz?"),
        "doYouWantToUnblock": MessageLookupByLibrary.simpleMessage(
            "Bu kullanıcının engellemesini kaldırmak istiyor musunuz?"),
        "doesNotSupportApplePay": MessageLookupByLibrary.simpleMessage(
            "ApplePay desteklenmiyor. Lütfen cüzdanınızı ve kartınızı kontrol edin"),
        "done": MessageLookupByLibrary.simpleMessage("Tamam"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Hesabın yok mu?"),
        "download": MessageLookupByLibrary.simpleMessage("İndir"),
        "downloadApp": MessageLookupByLibrary.simpleMessage("İndir uygulaması"),
        "draft": MessageLookupByLibrary.simpleMessage("taslak"),
        "driverAssigned": MessageLookupByLibrary.simpleMessage("Sürücü Atandı"),
        "duration": MessageLookupByLibrary.simpleMessage("Süre"),
        "dutch": MessageLookupByLibrary.simpleMessage("Flemenkçe"),
        "earnings": MessageLookupByLibrary.simpleMessage("Kazanç"),
        "edit": MessageLookupByLibrary.simpleMessage("Düzenle:"),
        "editProductInfo":
            MessageLookupByLibrary.simpleMessage("Ürün Bilgilerini Düzenle"),
        "editWithoutColon": MessageLookupByLibrary.simpleMessage("Düzenle"),
        "egypt": MessageLookupByLibrary.simpleMessage("Mısır"),
        "email": MessageLookupByLibrary.simpleMessage("E-Posta"),
        "emailAddressInvalid":
            MessageLookupByLibrary.simpleMessage("E-posta adresi geçersiz"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-posta zaten kullanımda!"),
        "emailDeleteDescription": MessageLookupByLibrary.simpleMessage(
            "Hesabınızı silmek, tüm posta listelerinden çıkmanıza neden olacaktır."),
        "emailDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "Girdiğiniz e-posta hesabı mevcut değil. Lütfen tekrar deneyin."),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("E-posta alanı zorunludur"),
        "emailSubscription":
            MessageLookupByLibrary.simpleMessage("E-Posta Aboneliği"),
        "emptyBookingHistoryMsg": MessageLookupByLibrary.simpleMessage(
            "Henüz rezervasyon yapmamışsınız gibi görünüyor.\nKeşfetmeye başlayın ve ilk rezervasyonunuzu yapın!"),
        "emptyCart": MessageLookupByLibrary.simpleMessage("Boş sepet"),
        "emptyCartSubtitle": MessageLookupByLibrary.simpleMessage(
            "Görünüşe göre çantaya henüz bir ürün eklemediniz. Eklemek için alışverişe başlayın."),
        "emptyCartSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Hata! Sepetiniz biraz hafiflemiş gibi görünüyor.\n\nMuhteşem bir şey için alışveriş yapmaya hazır mısınız?"),
        "emptyComment":
            MessageLookupByLibrary.simpleMessage("Yorumunuz boş olamaz"),
        "emptySearch": MessageLookupByLibrary.simpleMessage(
            "Henüz öğe aramadınız. Şimdi başlayalım - size yardım edeceğiz."),
        "emptyShippingMsg": MessageLookupByLibrary.simpleMessage(
            "Gönderim seçeneği bulunmamaktadır. Lütfen adresinizin doğru girildiğinden emin olun veya herhangi bir yardıma ihtiyacınız olursa bizimle iletişime geçin."),
        "emptyUsername":
            MessageLookupByLibrary.simpleMessage("E-Posta adresi geçersiz"),
        "emptyWishlist":
            MessageLookupByLibrary.simpleMessage("İstek listesini boşalt"),
        "emptyWishlistSubtitle": MessageLookupByLibrary.simpleMessage(
            "İstek Listesine eklemek için bir ürünün yanındaki kalp ikonuna dokunun. Onları sizin için burada tutacağız!"),
        "emptyWishlistSubtitle02": MessageLookupByLibrary.simpleMessage(
            "Dilek listeniz şuanda boş.\nŞimdi ürün eklemeye başlayın!"),
        "enableForCheckout":
            MessageLookupByLibrary.simpleMessage("Checkout için Etkinleştir"),
        "enableForLogin":
            MessageLookupByLibrary.simpleMessage("Giriş için Etkinleştir"),
        "enableForWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan için etkinleştir"),
        "enableVacationMode":
            MessageLookupByLibrary.simpleMessage("Tatil modunu etkinleştir"),
        "endDateCantBeAfterFirstDate": MessageLookupByLibrary.simpleMessage(
            "Lütfen ilk tarihten sonra bir tarih seçin"),
        "endsIn": m16,
        "english": MessageLookupByLibrary.simpleMessage("İngilizce"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Miktarı girin"),
        "enterCaptcha": m17,
        "enterEmailEachRecipient": MessageLookupByLibrary.simpleMessage(
            "Her alıcı için bir e-posta adresi girin"),
        "enterSentCode": MessageLookupByLibrary.simpleMessage(
            "Size gönderilen kodu giriniz."),
        "enterVoucherCode":
            MessageLookupByLibrary.simpleMessage("Kupon kodunu girin"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("E-Posta adresi"),
        "enterYourEmailOrUsername": MessageLookupByLibrary.simpleMessage(
            "E-posta adresinizi veya kullanıcı adınızı girin"),
        "enterYourFirstName":
            MessageLookupByLibrary.simpleMessage("İlk adınızı girin"),
        "enterYourLastName":
            MessageLookupByLibrary.simpleMessage("Soyadınızı giriniz"),
        "enterYourMobile": MessageLookupByLibrary.simpleMessage(
            "Lütfen telefon numaranızı giriniz"),
        "enterYourPassword": MessageLookupByLibrary.simpleMessage("Şifre"),
        "enterYourPhone": MessageLookupByLibrary.simpleMessage(
            "Başlamak için telefon numaranızı girin."),
        "enterYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefon numaranızı girin"),
        "enterYourUsername":
            MessageLookupByLibrary.simpleMessage("Kullanıcı adınızı girin"),
        "error": m18,
        "errorAmountTransfer": MessageLookupByLibrary.simpleMessage(
            "Girilen miktar, mevcut cüzdan miktarından fazla. Lütfen tekrar deneyin!"),
        "errorEmailFormat":
            MessageLookupByLibrary.simpleMessage("Geçerli bir e."),
        "errorMsg": m19,
        "errorOnGettingPost": MessageLookupByLibrary.simpleMessage(
            "Gönderi alınırken hata oluştu!"),
        "errorPasswordFormat": MessageLookupByLibrary.simpleMessage(
            "Lütfen en az 8 karakterden oluşan bir şifre girin"),
        "errorTitle": MessageLookupByLibrary.simpleMessage("Hata"),
        "evening": MessageLookupByLibrary.simpleMessage("akşam"),
        "events": MessageLookupByLibrary.simpleMessage("Etkinlikler"),
        "expectedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Beklenen Teslim Tarihi"),
        "expired": MessageLookupByLibrary.simpleMessage("Süresi doldu"),
        "expiredDate":
            MessageLookupByLibrary.simpleMessage("Son kullanma tarihi geçmiş"),
        "expiredDateHint": MessageLookupByLibrary.simpleMessage("AA / YY"),
        "expiringInTime": m20,
        "exploreNow": MessageLookupByLibrary.simpleMessage("Şimdi keşfet"),
        "external": MessageLookupByLibrary.simpleMessage("dış"),
        "extraServices":
            MessageLookupByLibrary.simpleMessage("Ekstra Hizmetler"),
        "failToAssign":
            MessageLookupByLibrary.simpleMessage("Kullanıcı atanamadı"),
        "failedToGenerateLink":
            MessageLookupByLibrary.simpleMessage("Bağlantı oluşturulamadı"),
        "failedToLoadAppConfig": MessageLookupByLibrary.simpleMessage(
            "Uygulama yapılandırması yüklenemedi. Lütfen tekrar deneyin veya uygulamanızı yeniden başlatın."),
        "failedToLoadImage":
            MessageLookupByLibrary.simpleMessage("Resim yüklenemedi"),
        "fair": MessageLookupByLibrary.simpleMessage("adil"),
        "favorite": MessageLookupByLibrary.simpleMessage("Favori"),
        "fax": MessageLookupByLibrary.simpleMessage("Faks"),
        "featureNotAvailable":
            MessageLookupByLibrary.simpleMessage("Özellik mevcut değil"),
        "featureProducts":
            MessageLookupByLibrary.simpleMessage("Öne Çıkan Ürünler"),
        "featured": MessageLookupByLibrary.simpleMessage("Öne Çıkan"),
        "features": MessageLookupByLibrary.simpleMessage("Özellikler"),
        "fileIsTooBig": MessageLookupByLibrary.simpleMessage(
            "Dosya çok büyük. Lütfen daha küçük bir dosya seçin!"),
        "fileUploadFailed": MessageLookupByLibrary.simpleMessage(
            "Dosya yükleme başarısız oldu!"),
        "files": MessageLookupByLibrary.simpleMessage("Dosyalar"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtre"),
        "fingerprintsTouchID": MessageLookupByLibrary.simpleMessage(
            "Parmak izleri, Dokunmatik Kimlik"),
        "finishSetup": MessageLookupByLibrary.simpleMessage("Kurulumu tamamla"),
        "finnish": MessageLookupByLibrary.simpleMessage("Fince"),
        "firstComment": MessageLookupByLibrary.simpleMessage(
            "Bu gönderiye ilk yorum yapan siz olun!"),
        "firstName": MessageLookupByLibrary.simpleMessage("Ad"),
        "firstNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Ad alanı zorunludur"),
        "firstRenewal": MessageLookupByLibrary.simpleMessage("İlk Yenileme"),
        "fixedCartDiscount":
            MessageLookupByLibrary.simpleMessage("Sabit Sepet İndirimi"),
        "fixedProductDiscount":
            MessageLookupByLibrary.simpleMessage("Sabit Ürün İndirimi"),
        "forThisProduct":
            MessageLookupByLibrary.simpleMessage("for this product"),
        "free": MessageLookupByLibrary.simpleMessage("Özgür"),
        "freeOfCharge": MessageLookupByLibrary.simpleMessage("ücretsiz"),
        "french": MessageLookupByLibrary.simpleMessage("French"),
        "friday": MessageLookupByLibrary.simpleMessage("Cuma"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fullName": MessageLookupByLibrary.simpleMessage("Ad Soyad"),
        "gallery": MessageLookupByLibrary.simpleMessage("galeri"),
        "generalSetting": MessageLookupByLibrary.simpleMessage("Genel ayarlar"),
        "generatingLink":
            MessageLookupByLibrary.simpleMessage("Bağlantı oluşturuluyor..."),
        "german": MessageLookupByLibrary.simpleMessage("Almanca"),
        "getNotification":
            MessageLookupByLibrary.simpleMessage("Bildirimleri al"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Haberdar ol!"),
        "getPasswordLink":
            MessageLookupByLibrary.simpleMessage("Şifre bağlantısı oluştur"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Başlamak"),
        "goBack": MessageLookupByLibrary.simpleMessage("Geri Dön"),
        "goBackHomePage":
            MessageLookupByLibrary.simpleMessage("Ana sayfaya dön"),
        "goBackToAddress":
            MessageLookupByLibrary.simpleMessage("Adrese geri dön"),
        "goBackToReview":
            MessageLookupByLibrary.simpleMessage("Gözden geçirmeye dön"),
        "goBackToShipping":
            MessageLookupByLibrary.simpleMessage("Gönderime Geri Dön"),
        "good": MessageLookupByLibrary.simpleMessage("İyi"),
        "greaterDistance": m21,
        "greek": MessageLookupByLibrary.simpleMessage("Yunan"),
        "grossSales": MessageLookupByLibrary.simpleMessage("Brüt satış"),
        "grouped": MessageLookupByLibrary.simpleMessage("gruplanmış"),
        "guests": MessageLookupByLibrary.simpleMessage("Misafirler"),
        "hasBeenDeleted": MessageLookupByLibrary.simpleMessage("Silindi"),
        "hebrew": MessageLookupByLibrary.simpleMessage("Hebrew"),
        "hideAbout": MessageLookupByLibrary.simpleMessage("Hakkında Gizle"),
        "hideAddress": MessageLookupByLibrary.simpleMessage("Adresi gizle"),
        "hideEmail": MessageLookupByLibrary.simpleMessage("E-mail\'i gizle"),
        "hideMap": MessageLookupByLibrary.simpleMessage("Haritayı Gizle"),
        "hidePhone": MessageLookupByLibrary.simpleMessage("Telefonu Gizle"),
        "hidePolicy": MessageLookupByLibrary.simpleMessage("Politikayı Gizle"),
        "hindi": MessageLookupByLibrary.simpleMessage("Hintçe"),
        "history": MessageLookupByLibrary.simpleMessage("Tarihçe"),
        "historyTransaction": MessageLookupByLibrary.simpleMessage("Tarihçe"),
        "home": MessageLookupByLibrary.simpleMessage("Ev"),
        "hour": MessageLookupByLibrary.simpleMessage("Saat"),
        "hoursAgo": m22,
        "hungarian": MessageLookupByLibrary.simpleMessage("Macarca"),
        "hungary": MessageLookupByLibrary.simpleMessage("Hungary"),
        "iAgree": MessageLookupByLibrary.simpleMessage("Onaylıyorum"),
        "imIn": MessageLookupByLibrary.simpleMessage("Varım"),
        "imageFeature":
            MessageLookupByLibrary.simpleMessage("Görüntü Özelliği"),
        "imageGallery": MessageLookupByLibrary.simpleMessage("Resim Galerisi"),
        "imageGenerate":
            MessageLookupByLibrary.simpleMessage("görüntü oluşturma"),
        "imageNetwork": MessageLookupByLibrary.simpleMessage("Görüntü Ağı"),
        "inStock": MessageLookupByLibrary.simpleMessage("Stokta var"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("yanlış parola"),
        "india": MessageLookupByLibrary.simpleMessage("Hintçe"),
        "indonesian": MessageLookupByLibrary.simpleMessage("Endonezce"),
        "informationTable":
            MessageLookupByLibrary.simpleMessage("Bilgi Tablosu"),
        "installDigitsPlugin": MessageLookupByLibrary.simpleMessage(
            "Lütfen DIGITS: Wordpress Mobil Numara Kayıt ve Giriş eklentisini kurun"),
        "instantlyClose": MessageLookupByLibrary.simpleMessage("anında kapat"),
        "insufficientBalanceMessage": m23,
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Geçersiz telefon numarası"),
        "invalidSMSCode":
            MessageLookupByLibrary.simpleMessage("Geçersiz SMS Doğrulama kodu"),
        "invalidYearOfBirth":
            MessageLookupByLibrary.simpleMessage("Geçersiz Doğum Yılı"),
        "invoice": MessageLookupByLibrary.simpleMessage("fatura"),
        "isEverythingSet":
            MessageLookupByLibrary.simpleMessage("Her şey hazır mı...?"),
        "isTyping": MessageLookupByLibrary.simpleMessage("yazıyor..."),
        "italian": MessageLookupByLibrary.simpleMessage("İtalyan"),
        "item": MessageLookupByLibrary.simpleMessage("madde"),
        "itemQuantity": m24,
        "itemTotal": MessageLookupByLibrary.simpleMessage("Öğe toplamı:"),
        "items": MessageLookupByLibrary.simpleMessage("Ürünler"),
        "itsOrdered":
            MessageLookupByLibrary.simpleMessage("Siparişiniz verildi!"),
        "iwantToCreateAccount": MessageLookupByLibrary.simpleMessage(
            "Gizlilik Poliçesini Onaylıyorum"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japonca"),
        "kannada": MessageLookupByLibrary.simpleMessage("Kannada"),
        "keep": MessageLookupByLibrary.simpleMessage("Tut"),
        "khmer": MessageLookupByLibrary.simpleMessage("Kmer"),
        "korean": MessageLookupByLibrary.simpleMessage("Koreli"),
        "kurdish": MessageLookupByLibrary.simpleMessage("Kurdish"),
        "language": MessageLookupByLibrary.simpleMessage("diller"),
        "languageSuccess":
            MessageLookupByLibrary.simpleMessage("Dil başarıyla değiştirildi"),
        "lao": MessageLookupByLibrary.simpleMessage("Lao"),
        "lastName": MessageLookupByLibrary.simpleMessage("Soyad"),
        "lastNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Soyad alanı zorunludur"),
        "lastTransactions":
            MessageLookupByLibrary.simpleMessage("Son İşlemler"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("En son ürünler"),
        "layout": MessageLookupByLibrary.simpleMessage("Düzen"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Işık teması"),
        "link": MessageLookupByLibrary.simpleMessage("Bağlantı"),
        "listBannerType":
            MessageLookupByLibrary.simpleMessage("Liste Başlığı Türü"),
        "listBannerVideo":
            MessageLookupByLibrary.simpleMessage("Banner Videosu Listesi"),
        "listMessages":
            MessageLookupByLibrary.simpleMessage("Gelen Bildirimler"),
        "listening": MessageLookupByLibrary.simpleMessage("Dinleme..."),
        "loadFail": MessageLookupByLibrary.simpleMessage("Yükleme başarısız!"),
        "loading": MessageLookupByLibrary.simpleMessage("Yükleniyor..."),
        "loadingLink":
            MessageLookupByLibrary.simpleMessage("Bağlantı yükleniyor..."),
        "location": MessageLookupByLibrary.simpleMessage("yer"),
        "lockScreenAndSecurity":
            MessageLookupByLibrary.simpleMessage("Kilit ekranı ve güvenlik"),
        "login": MessageLookupByLibrary.simpleMessage("Giriş Yap"),
        "loginCanceled":
            MessageLookupByLibrary.simpleMessage("The login was canceled"),
        "loginErrorServiceProvider": m25,
        "loginFailed": MessageLookupByLibrary.simpleMessage("Giriş başarısız!"),
        "loginInvalid": MessageLookupByLibrary.simpleMessage(
            "Bu uygulamayı kullanma izniniz yok."),
        "loginSuccess": MessageLookupByLibrary.simpleMessage("Giriş başarılı!"),
        "loginToComment": MessageLookupByLibrary.simpleMessage(
            "Lütfen yorum yapmak için giriş yapın"),
        "loginToContinue": MessageLookupByLibrary.simpleMessage(
            "Devam etmek için lütfen giriş yapınız"),
        "loginToReview": MessageLookupByLibrary.simpleMessage(
            "İncelemek için lütfen giriş yapın"),
        "loginToYourAccount":
            MessageLookupByLibrary.simpleMessage("Hesabınıza giriş yapın"),
        "logout": MessageLookupByLibrary.simpleMessage("Çıkış Yap"),
        "malay": MessageLookupByLibrary.simpleMessage("Malaya"),
        "manCollections":
            MessageLookupByLibrary.simpleMessage("Erkek Koleksiyonları"),
        "manageApiKey":
            MessageLookupByLibrary.simpleMessage("API Anahtarını Yönet"),
        "manageStock": MessageLookupByLibrary.simpleMessage("Stokları Yönet"),
        "map": MessageLookupByLibrary.simpleMessage("harita"),
        "marathi": MessageLookupByLibrary.simpleMessage("Marathi"),
        "markAsRead":
            MessageLookupByLibrary.simpleMessage("Okundu olarak işaretle"),
        "markAsShipped":
            MessageLookupByLibrary.simpleMessage("Gönderildi olarak işaretle"),
        "markAsUnread":
            MessageLookupByLibrary.simpleMessage("Okunmamış olarak işaretle"),
        "maxAmountForPayment": m26,
        "maximumFileSizeMb": m27,
        "maybeLater": MessageLookupByLibrary.simpleMessage("Belki daha sonra"),
        "menuOrder": MessageLookupByLibrary.simpleMessage("Menü sırası"),
        "menus": MessageLookupByLibrary.simpleMessage("Menüler"),
        "message": MessageLookupByLibrary.simpleMessage("Mesaj"),
        "messageTo": MessageLookupByLibrary.simpleMessage("Mesajı gönder"),
        "minAmountForPayment": m28,
        "minimumQuantityIs":
            MessageLookupByLibrary.simpleMessage("Minimum quantity is"),
        "minutesAgo": m29,
        "mobile": MessageLookupByLibrary.simpleMessage("Mobil"),
        "mobileIsRequired":
            MessageLookupByLibrary.simpleMessage("Mobil gerekli"),
        "mobileNumberInUse": MessageLookupByLibrary.simpleMessage(
            "Cep Telefonu Numarası Zaten Kullanımda!"),
        "mobileVerification":
            MessageLookupByLibrary.simpleMessage("Mobil Doğrulama"),
        "momentAgo": MessageLookupByLibrary.simpleMessage("az önce"),
        "monday": MessageLookupByLibrary.simpleMessage("Pazartesi"),
        "monthsAgo": m30,
        "more": MessageLookupByLibrary.simpleMessage("...Daha"),
        "moreFromStore": m31,
        "moreInformation":
            MessageLookupByLibrary.simpleMessage("daha fazla bilgi"),
        "morning": MessageLookupByLibrary.simpleMessage("sabah"),
        "mustBeBoughtInGroupsOf": m32,
        "mustSelectOneItem":
            MessageLookupByLibrary.simpleMessage("1 öğe seçilmeli"),
        "myCart": MessageLookupByLibrary.simpleMessage("Sepetim"),
        "myOrder": MessageLookupByLibrary.simpleMessage("Benim siparişim"),
        "myPoints": MessageLookupByLibrary.simpleMessage("Puanlarım"),
        "myProducts": MessageLookupByLibrary.simpleMessage("Ürünlerim"),
        "myProductsEmpty": MessageLookupByLibrary.simpleMessage(
            "Ürününüz yok. Bir tane oluşturmaya çalışın!"),
        "myWallet": MessageLookupByLibrary.simpleMessage("Cüzdanım"),
        "myWishList": MessageLookupByLibrary.simpleMessage("İstek Listem"),
        "nItems": m33,
        "name": MessageLookupByLibrary.simpleMessage("isim"),
        "nameOnCard": MessageLookupByLibrary.simpleMessage("Karttaki İsim"),
        "nearbyPlaces": MessageLookupByLibrary.simpleMessage("Yakın adresler"),
        "needHelp": MessageLookupByLibrary.simpleMessage(
            "Yardıma mı ihtiyacınız var? "),
        "needToLoginAgain": MessageLookupByLibrary.simpleMessage(
            "Güncellemeyi gerçekleştirmek için tekrar giriş yapmanız gerekiyor"),
        "netherlands": MessageLookupByLibrary.simpleMessage("Hollanda"),
        "newAppConfig":
            MessageLookupByLibrary.simpleMessage("Yeni içerik mevcut!"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Yeni Şifre"),
        "newVariation": MessageLookupByLibrary.simpleMessage("Yeni varyasyon"),
        "next": MessageLookupByLibrary.simpleMessage("Sıradaki"),
        "niceName": MessageLookupByLibrary.simpleMessage("E-Posta"),
        "no": MessageLookupByLibrary.simpleMessage("Hayır"),
        "noAddressHaveBeenSaved":
            MessageLookupByLibrary.simpleMessage("Henüz kayıtlı adres yok."),
        "noBackHistoryItem":
            MessageLookupByLibrary.simpleMessage("Önceki veri yok"),
        "noBlog":
            MessageLookupByLibrary.simpleMessage("Opps, makale bulunamadı.."),
        "noCameraPermissionIsGranted": MessageLookupByLibrary.simpleMessage(
            "Kamera izni verilmez. Lütfen cihazınızın Ayarlarında verin."),
        "noComments": MessageLookupByLibrary.simpleMessage("Yorum yok"),
        "noConversation":
            MessageLookupByLibrary.simpleMessage("Henüz konuşma yok"),
        "noConversationDescription": MessageLookupByLibrary.simpleMessage(
            "Birisi sizinle sohbet etmeye başladığında görünecektir"),
        "noData": MessageLookupByLibrary.simpleMessage("Veri Yok"),
        "noFavoritesYet":
            MessageLookupByLibrary.simpleMessage("Henüz favoriniz yok."),
        "noFileToDownload":
            MessageLookupByLibrary.simpleMessage("İndirilecek dosya yok."),
        "noForwardHistoryItem":
            MessageLookupByLibrary.simpleMessage("Sonraki veri yok"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("İnternet bağlantısı yok"),
        "noListingNearby":
            MessageLookupByLibrary.simpleMessage("Yakınlarda kayıt yok!"),
        "noOrders": MessageLookupByLibrary.simpleMessage("Sipariş Yok"),
        "noPaymentMethodsAvailable":
            MessageLookupByLibrary.simpleMessage("Ödeme yöntemi mevcut değil."),
        "noPermissionForCurrentRole": MessageLookupByLibrary.simpleMessage(
            "Üzgünüz, bu ürüne mevcut rolünüz için erişilemiyor."),
        "noPermissionToViewProduct": MessageLookupByLibrary.simpleMessage(
            "Bu ürün, belirli rollere sahip kullanıcılar tarafından kullanılabilir. Lütfen bu ürüne erişmek için uygun kimlik bilgileriyle oturum açın veya daha fazla bilgi için bizimle iletişime geçin."),
        "noPermissionToViewProductMsg": MessageLookupByLibrary.simpleMessage(
            "Bu ürüne erişmek için lütfen uygun kimlik bilgileriyle oturum açın veya daha fazla bilgi için bizimle iletişime geçin."),
        "noPost": MessageLookupByLibrary.simpleMessage(
            "Opps, this page seems no longer exist!"),
        "noPrinters": MessageLookupByLibrary.simpleMessage("Yazıcı Yok"),
        "noProduct": MessageLookupByLibrary.simpleMessage("Ürün yok"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Sonuç Bulunamadı"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Yorum Yok"),
        "noSlotAvailable":
            MessageLookupByLibrary.simpleMessage("Kullanılabilir yuva yok"),
        "noStoreNearby":
            MessageLookupByLibrary.simpleMessage("Yakınlarda mağaza yok!"),
        "noSuggestionSearch":
            MessageLookupByLibrary.simpleMessage("Hiçbir öneri yok"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Hayır teşekkürler"),
        "noTransactionsMsg": MessageLookupByLibrary.simpleMessage(
            "Üzgünüz, hiçbir işlem bulunamadı!"),
        "noVideoFound":
            MessageLookupByLibrary.simpleMessage("Üzgünüz, video bulunamadı."),
        "none": MessageLookupByLibrary.simpleMessage("Yok"),
        "notFindResult": MessageLookupByLibrary.simpleMessage(
            "Üzgünüz, herhangi bir sonuç bulamadık."),
        "notFound": MessageLookupByLibrary.simpleMessage("Bulunamadı"),
        "notRated": MessageLookupByLibrary.simpleMessage("Oylanmamış"),
        "note": MessageLookupByLibrary.simpleMessage("Sipariş notları"),
        "noteMessage": MessageLookupByLibrary.simpleMessage("not"),
        "noteTransfer":
            MessageLookupByLibrary.simpleMessage("Not (isteğe bağlı)"),
        "notice": MessageLookupByLibrary.simpleMessage("ihbar"),
        "notifications": MessageLookupByLibrary.simpleMessage("Bildirimler"),
        "notifyLatestOffer": MessageLookupByLibrary.simpleMessage(
            "En son teklifleri ve ürün kullanılabilirliğini bildir"),
        "ofThisProduct":
            MessageLookupByLibrary.simpleMessage("of this product"),
        "ok": MessageLookupByLibrary.simpleMessage("Tamam"),
        "on": MessageLookupByLibrary.simpleMessage("üzerinde"),
        "onSale": MessageLookupByLibrary.simpleMessage("Kampanyalı"),
        "onVacation": MessageLookupByLibrary.simpleMessage("Tatilde"),
        "oneEachRecipient":
            MessageLookupByLibrary.simpleMessage("Her alıcıya 1"),
        "online": MessageLookupByLibrary.simpleMessage("İnternet üzerinden"),
        "open24Hours": MessageLookupByLibrary.simpleMessage("24 saat açık"),
        "openMap": MessageLookupByLibrary.simpleMessage("Haritayı Aç"),
        "openNow": MessageLookupByLibrary.simpleMessage("Şimdi aç"),
        "openingHours": MessageLookupByLibrary.simpleMessage("Açılış saatleri"),
        "optional": MessageLookupByLibrary.simpleMessage("İsteğe bağlı"),
        "options": MessageLookupByLibrary.simpleMessage("Seçenekler"),
        "optionsTotal": m34,
        "or": MessageLookupByLibrary.simpleMessage("Veya"),
        "orLoginWith":
            MessageLookupByLibrary.simpleMessage("veya ile giriş yapın"),
        "orderConfirmation":
            MessageLookupByLibrary.simpleMessage("sipariş onayı"),
        "orderConfirmationMsg": MessageLookupByLibrary.simpleMessage(
            "Siparişi oluşturduğunuzdan emin misiniz?"),
        "orderDate": MessageLookupByLibrary.simpleMessage("Sipariş tarihi"),
        "orderDetail":
            MessageLookupByLibrary.simpleMessage("Sipariş Detayları"),
        "orderHistory": MessageLookupByLibrary.simpleMessage("Sipariş Geçmişi"),
        "orderId": MessageLookupByLibrary.simpleMessage("Sipariş Kimliği:"),
        "orderIdWithoutColon":
            MessageLookupByLibrary.simpleMessage("Sipariş Kimliği"),
        "orderNo": MessageLookupByLibrary.simpleMessage("Sipariş numarası"),
        "orderNotes": MessageLookupByLibrary.simpleMessage("Sipariş Notları"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Sipariş numarası"),
        "orderStatusCanceledReversal":
            MessageLookupByLibrary.simpleMessage("iptal edilen sipariş"),
        "orderStatusCancelled":
            MessageLookupByLibrary.simpleMessage("İptal Edildi"),
        "orderStatusChargeBack":
            MessageLookupByLibrary.simpleMessage("GERİ ÇEKME"),
        "orderStatusCompleted":
            MessageLookupByLibrary.simpleMessage("Tamamlandı"),
        "orderStatusDenied": MessageLookupByLibrary.simpleMessage("Reddedildi"),
        "orderStatusExpired":
            MessageLookupByLibrary.simpleMessage("Süresi doldu"),
        "orderStatusFailed": MessageLookupByLibrary.simpleMessage("Başarısız"),
        "orderStatusOnHold": MessageLookupByLibrary.simpleMessage("Beklemede"),
        "orderStatusPending": MessageLookupByLibrary.simpleMessage("Kadar"),
        "orderStatusPendingPayment":
            MessageLookupByLibrary.simpleMessage("Ödeme Bekleniyor"),
        "orderStatusProcessed":
            MessageLookupByLibrary.simpleMessage("işlenmiş"),
        "orderStatusProcessing":
            MessageLookupByLibrary.simpleMessage("İşleniyor"),
        "orderStatusRefunded":
            MessageLookupByLibrary.simpleMessage("İade Edildi"),
        "orderStatusReversed": MessageLookupByLibrary.simpleMessage("ters"),
        "orderStatusShipped":
            MessageLookupByLibrary.simpleMessage("Gönderilen"),
        "orderStatusVoided":
            MessageLookupByLibrary.simpleMessage("Sipariş Durumu İptal Edildi"),
        "orderSuccessMsg1": MessageLookupByLibrary.simpleMessage(
            "Teslimat durumu özelliğimizi kullanarak siparişinizin durumunu kontrol edebilirsiniz. Siparişinizin ayrıntılarını ve ilerlemesini takip etmek için bir bağlantı içeren bir sipariş onay e-postası alacaksınız."),
        "orderSuccessMsg2": MessageLookupByLibrary.simpleMessage(
            "Daha önce tanımlanan e-posta ve şifreyi kullanarak hesabınıza giriş yapabilirsiniz. Hesap bölümünden bilgilerinizi güncelleyebilir, geçmiş siparişlerinizi görüntüleyebilirsiniz."),
        "orderSuccessTitle1": MessageLookupByLibrary.simpleMessage(
            "Siparişinizi başarıyla verdiniz"),
        "orderSuccessTitle2": MessageLookupByLibrary.simpleMessage("Hesabınız"),
        "orderSummary": MessageLookupByLibrary.simpleMessage("Sipariş Özeti"),
        "orderTotal": MessageLookupByLibrary.simpleMessage("sipariş toplamı"),
        "orderTracking": MessageLookupByLibrary.simpleMessage("Sipariş izleme"),
        "orders": MessageLookupByLibrary.simpleMessage("Emirler"),
        "otpVerification":
            MessageLookupByLibrary.simpleMessage("OTP Doğrulaması"),
        "ourBankDetails":
            MessageLookupByLibrary.simpleMessage("Banka bilgilerimiz"),
        "outOfStock": MessageLookupByLibrary.simpleMessage("Tükendi"),
        "pageView": MessageLookupByLibrary.simpleMessage("Sayfa görünümü"),
        "paid": MessageLookupByLibrary.simpleMessage("Ücretli"),
        "paidStatus": MessageLookupByLibrary.simpleMessage("Ücretli durum"),
        "password": MessageLookupByLibrary.simpleMessage("Parola"),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Şifre alanı zorunludur"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Parolalar uyuşmuyor"),
        "pasteYourImageUrl":
            MessageLookupByLibrary.simpleMessage("Resim URL\'nizi yapıştırın"),
        "payByWallet": MessageLookupByLibrary.simpleMessage("Cüzdanla öde"),
        "payNow": MessageLookupByLibrary.simpleMessage("Şimdi öde"),
        "payWithAmount": m35,
        "payment": MessageLookupByLibrary.simpleMessage("Ödeme"),
        "paymentDetailsChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ödeme ayrıntıları başarıyla değiştirildi."),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("Ödeme şekli"),
        "paymentMethodIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Bu ödeme yöntemi desteklenmiyor"),
        "paymentMethods": MessageLookupByLibrary.simpleMessage("Ödeme Şekli"),
        "paymentSettings":
            MessageLookupByLibrary.simpleMessage("Ödeme Ayarları"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Ödeme Başarılı"),
        "pending": MessageLookupByLibrary.simpleMessage("Kadar"),
        "persian": MessageLookupByLibrary.simpleMessage("Persian"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefon"),
        "phoneEmpty": MessageLookupByLibrary.simpleMessage("telefon boş"),
        "phoneHintFormat":
            MessageLookupByLibrary.simpleMessage("Biçim: +84123456789"),
        "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
            "Telefon numarası alanı zorunludur"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefon Numarası"),
        "phoneNumberVerification":
            MessageLookupByLibrary.simpleMessage("Telefon numarası doğrulama"),
        "pickADate":
            MessageLookupByLibrary.simpleMessage("Tarih ve saat seçin"),
        "picking": MessageLookupByLibrary.simpleMessage("Teslimat bekleniyor"),
        "placeMyOrder": MessageLookupByLibrary.simpleMessage("Sipariş Ver"),
        "playAll": MessageLookupByLibrary.simpleMessage("Hepsini Oynat"),
        "pleaseAddPrice":
            MessageLookupByLibrary.simpleMessage("lütfen fiyat ekleyin"),
        "pleaseAgreeTerms":
            MessageLookupByLibrary.simpleMessage("Lütfen poliçemizi onaylayın"),
        "pleaseAllowAccessCameraGallery": MessageLookupByLibrary.simpleMessage(
            "Lütfen kameraya ve galeriye erişime izin verin"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Lütfen internet bağlantını kontrol et!"),
        "pleaseChooseBranch":
            MessageLookupByLibrary.simpleMessage("Lütfen bir şube seçin"),
        "pleaseChooseCategory":
            MessageLookupByLibrary.simpleMessage("Lütfen kategori seçin"),
        "pleaseEnterProductName":
            MessageLookupByLibrary.simpleMessage("Lütfen ürün adını girin"),
        "pleaseFillCode":
            MessageLookupByLibrary.simpleMessage("Lütfen bir kod giriniz."),
        "pleaseFillUpAllCellsProperly": MessageLookupByLibrary.simpleMessage(
            "*Lütfen tüm alanları geçerli şekilde doldurun."),
        "pleaseIncreaseOrDecreaseTheQuantity":
            MessageLookupByLibrary.simpleMessage(
                "Devam etmek için lütfen miktarı artırın veya azaltın."),
        "pleaseInput": MessageLookupByLibrary.simpleMessage(
            "Lütfen tüm alanları doldurun"),
        "pleaseInputFillAllFields": MessageLookupByLibrary.simpleMessage(
            "Lütfen tüm alanları doldurun."),
        "pleaseSelectADate": MessageLookupByLibrary.simpleMessage(
            "Lütfen bir rezervasyon tarihi seçin"),
        "pleaseSelectALocation":
            MessageLookupByLibrary.simpleMessage("Lütfen bir yer seçin"),
        "pleaseSelectAllAttributes": MessageLookupByLibrary.simpleMessage(
            "Please choose an option for each attribute of the product"),
        "pleaseSelectAttr": MessageLookupByLibrary.simpleMessage(
            "Lütfen her etkin özellik için en az 1 seçenek belirleyin"),
        "pleaseSelectImages":
            MessageLookupByLibrary.simpleMessage("Lütfen resimleri seçin"),
        "pleaseSelectRequiredOptions": MessageLookupByLibrary.simpleMessage(
            "Lütfen gerekli seçenekleri seçin!"),
        "pleaseSignInBeforeUploading": MessageLookupByLibrary.simpleMessage(
            "Lütfen herhangi bir dosya yüklemeden önce hesabınızda oturum açın."),
        "point": MessageLookupByLibrary.simpleMessage("Puan"),
        "pointMsgConfigNotFound": MessageLookupByLibrary.simpleMessage(
            "Sunucuda indirim noktası yapılandırması bulunamadı"),
        "pointMsgEnter": MessageLookupByLibrary.simpleMessage(
            "Lütfen indirim noktasını girin"),
        "pointMsgMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage("Maksimum indirim noktası"),
        "pointMsgNotEnough": MessageLookupByLibrary.simpleMessage(
            "Yeterli indirim puanınız yok. Toplam indirim puanınız"),
        "pointMsgOverMaximumDiscountPoint":
            MessageLookupByLibrary.simpleMessage(
                "Maksimum indirim noktasına ulaştınız"),
        "pointMsgOverTotalBill": MessageLookupByLibrary.simpleMessage(
            "Toplam iskonto değeri fatura toplamının üzerinde"),
        "pointMsgRemove":
            MessageLookupByLibrary.simpleMessage("İndirim puanı kaldırıldı"),
        "pointMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "İndirim puanı başarıyla uygulandı"),
        "pointRewardMessage": MessageLookupByLibrary.simpleMessage(
            "There is the Discount Rule for applying your points to Cart"),
        "polish": MessageLookupByLibrary.simpleMessage("Lehçe"),
        "poor": MessageLookupByLibrary.simpleMessage("Yoksul"),
        "popular": MessageLookupByLibrary.simpleMessage("popüler"),
        "popularity": MessageLookupByLibrary.simpleMessage("Popülerlik"),
        "posAddressToolTip": MessageLookupByLibrary.simpleMessage(
            "Bu adres yerel cihazınıza kaydedilecektir. Kullanıcı adresi DEĞİLDİR."),
        "postContent": MessageLookupByLibrary.simpleMessage("içerik"),
        "postFail":
            MessageLookupByLibrary.simpleMessage("Gönderiniz oluşturulamadı"),
        "postImageFeature":
            MessageLookupByLibrary.simpleMessage("Görüntü Özelliği"),
        "postManagement": MessageLookupByLibrary.simpleMessage("Post Yönetimi"),
        "postProduct": MessageLookupByLibrary.simpleMessage("Ürün Gönder"),
        "postSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Gönderiniz başarıyla oluşturuldu"),
        "postTitle": MessageLookupByLibrary.simpleMessage("Başlık"),
        "prepaid": MessageLookupByLibrary.simpleMessage("ön ödemeli"),
        "prev": MessageLookupByLibrary.simpleMessage("Önceki"),
        "preview": MessageLookupByLibrary.simpleMessage("Ön izleme"),
        "price": MessageLookupByLibrary.simpleMessage("Fiyat"),
        "priceHighToLow": MessageLookupByLibrary.simpleMessage("Fiyat düşen"),
        "priceLowToHigh":
            MessageLookupByLibrary.simpleMessage("Fiyat yükselen"),
        "prices": MessageLookupByLibrary.simpleMessage("Menüler"),
        "printReceipt":
            MessageLookupByLibrary.simpleMessage("Makbuzu yazdırın"),
        "printer": MessageLookupByLibrary.simpleMessage("Yazıcı"),
        "printerNotFound":
            MessageLookupByLibrary.simpleMessage("Yazıcı bulunamadı"),
        "printerSelection":
            MessageLookupByLibrary.simpleMessage("Yazıcı Seçimi"),
        "printing": MessageLookupByLibrary.simpleMessage("Baskı..."),
        "privacyAndTerm":
            MessageLookupByLibrary.simpleMessage("Gizlilik Ve Koşul Poliçesi"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Gizlilik Politikası"),
        "privacyTerms":
            MessageLookupByLibrary.simpleMessage("Gizlilik ve Şartlar"),
        "private": MessageLookupByLibrary.simpleMessage("Özel"),
        "processing": MessageLookupByLibrary.simpleMessage("İşleme..."),
        "product": MessageLookupByLibrary.simpleMessage("Ürün"),
        "productAddToCart": m36,
        "productAdded": MessageLookupByLibrary.simpleMessage("Ürün eklendi"),
        "productCreateReview": MessageLookupByLibrary.simpleMessage(
            "Ürününüz incelendikten sonra görünecektir."),
        "productExpired": MessageLookupByLibrary.simpleMessage(
            "Üzgünüz, bu ürüne son kullanma tarihi geçtiği için erişilemiyor."),
        "productName": MessageLookupByLibrary.simpleMessage("Ürün adı"),
        "productNameCanNotEmpty":
            MessageLookupByLibrary.simpleMessage("Ürün adı boş olamaz"),
        "productNeedAtLeastOneVariation": MessageLookupByLibrary.simpleMessage(
            "Ürün türü değişkeninin en az bir değişkene ihtiyacı var"),
        "productNeedNameAndPrice": MessageLookupByLibrary.simpleMessage(
            "Ürün tipi basit, isim ve normal fiyat gerektirir"),
        "productOutOfStock":
            MessageLookupByLibrary.simpleMessage("Bu ürün stokta yoktur"),
        "productOverview":
            MessageLookupByLibrary.simpleMessage("Ürüne Genel Bakış"),
        "productRating":
            MessageLookupByLibrary.simpleMessage("Verdiğiniz Puan"),
        "productReview":
            MessageLookupByLibrary.simpleMessage("Ürün incelemesi"),
        "productType": MessageLookupByLibrary.simpleMessage("Ürün tipi"),
        "products": MessageLookupByLibrary.simpleMessage("Ürünler"),
        "promptPayID":
            MessageLookupByLibrary.simpleMessage("PromptPay Kimliği:"),
        "promptPayName": MessageLookupByLibrary.simpleMessage("PromptPay Adı:"),
        "promptPayType":
            MessageLookupByLibrary.simpleMessage("Hızlı Ödeme Türü:"),
        "publish": MessageLookupByLibrary.simpleMessage("Yayınla"),
        "pullToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Daha fazla yüklemek için kaydırın"),
        "qRCodeMsgSuccess": MessageLookupByLibrary.simpleMessage(
            "QR kodu başarıyla kaydedildi."),
        "qRCodeSaveFailure":
            MessageLookupByLibrary.simpleMessage("QR Kodu Kaydedilemedi"),
        "qty": MessageLookupByLibrary.simpleMessage("Adet"),
        "qtyTotal": m37,
        "quantity": MessageLookupByLibrary.simpleMessage("Miktar"),
        "quantityProductExceedInStock": MessageLookupByLibrary.simpleMessage(
            "Mevcut miktar, stoktaki miktardan fazla"),
        "random": MessageLookupByLibrary.simpleMessage("Rastgele"),
        "rate": MessageLookupByLibrary.simpleMessage("Oyla"),
        "rateProduct":
            MessageLookupByLibrary.simpleMessage("Ürünü Değerlendirin"),
        "rateTheApp": MessageLookupByLibrary.simpleMessage("Uygulamayı oyla"),
        "rateThisApp": MessageLookupByLibrary.simpleMessage("Uygulamayı Oyla"),
        "rateThisAppDescription": MessageLookupByLibrary.simpleMessage(
            "Eğer uygulamayı beğendiğiyseniz, sizlere daha iyi hizmet sağlayabilmemiz ve bizi desteklemeniz için uygulamayı oylayabilirsiniz.."),
        "rating": MessageLookupByLibrary.simpleMessage("Değerlendirme"),
        "ratingFirst": MessageLookupByLibrary.simpleMessage(
            "Yorumunuzu göndermeden önce lütfen puan verin"),
        "reOrder": MessageLookupByLibrary.simpleMessage("Yeniden Sipariş Ver"),
        "readReviews": MessageLookupByLibrary.simpleMessage("Yorumlar"),
        "readyToPick":
            MessageLookupByLibrary.simpleMessage("Teslimat bekleniyor"),
        "receivedMoney": MessageLookupByLibrary.simpleMessage("alınan para"),
        "receivedMoneyFrom": m38,
        "receiver": MessageLookupByLibrary.simpleMessage("alıcı"),
        "recent": MessageLookupByLibrary.simpleMessage("Güncel"),
        "recentSearches": MessageLookupByLibrary.simpleMessage("Arama Geçmişi"),
        "recentView":
            MessageLookupByLibrary.simpleMessage("Son Görüntüledikleriniz"),
        "recentlyViewed":
            MessageLookupByLibrary.simpleMessage("Son görüntülenen"),
        "recommended": MessageLookupByLibrary.simpleMessage("Tavsiye edilen"),
        "recurringTotals":
            MessageLookupByLibrary.simpleMessage("Yinelenen Toplamlar"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "refund": MessageLookupByLibrary.simpleMessage("Geri ödeme"),
        "refundOrderFailed": MessageLookupByLibrary.simpleMessage(
            "Sipariş için geri ödeme talebi başarısız oldu"),
        "refundOrderSuccess":
            MessageLookupByLibrary.simpleMessage("Geri ödeme isteği başarılı!"),
        "refundRequest": MessageLookupByLibrary.simpleMessage("iptal Talebi"),
        "refundRequested":
            MessageLookupByLibrary.simpleMessage("geri ödeme talep edildi"),
        "refunds": MessageLookupByLibrary.simpleMessage("Geri ödemeler"),
        "regenerateResponse":
            MessageLookupByLibrary.simpleMessage("Yanıtı yeniden oluştur"),
        "registerAs": MessageLookupByLibrary.simpleMessage("olarak kayıt ol"),
        "registerAsVendor":
            MessageLookupByLibrary.simpleMessage("Register as Vendor user"),
        "registerErrorSyncAccount": MessageLookupByLibrary.simpleMessage(
            "Hesap senkronize edilemiyor. Devam etmek için lütfen giriş yapın."),
        "registerFailed":
            MessageLookupByLibrary.simpleMessage("Kayıt başarısız"),
        "registerInvalid": MessageLookupByLibrary.simpleMessage(
            "İstek geçersiz veya süresi dolmuş. Lütfen tekrar deneyin"),
        "registerSuccess":
            MessageLookupByLibrary.simpleMessage("Başarıyla kaydolun"),
        "regularPrice": MessageLookupByLibrary.simpleMessage("Normal fiyat"),
        "relatedLayoutTitle":
            MessageLookupByLibrary.simpleMessage("Sevebileceğiniz Şeyler"),
        "releaseToLoadMore": MessageLookupByLibrary.simpleMessage(
            "Daha fazlasını yüklemek için bırakın"),
        "remove": MessageLookupByLibrary.simpleMessage("Kaldır"),
        "removeFromWishList":
            MessageLookupByLibrary.simpleMessage("İstek Listesine Kaldır"),
        "requestBooking":
            MessageLookupByLibrary.simpleMessage("Rezervasyon İste"),
        "requestTooMany": MessageLookupByLibrary.simpleMessage(
            "Kısa sürede çok fazla kod istediniz. Lütfen daha sonra tekrar deneyiniz."),
        "resend": MessageLookupByLibrary.simpleMessage(" TEKRAR GÖNDER"),
        "reset": MessageLookupByLibrary.simpleMessage("Sıfırla"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Şifre Sıfırla"),
        "resetYourPassword":
            MessageLookupByLibrary.simpleMessage("Şifreni Sıfırla"),
        "results": MessageLookupByLibrary.simpleMessage("Sonuçlar"),
        "retry": MessageLookupByLibrary.simpleMessage("Tekrar dene"),
        "review": MessageLookupByLibrary.simpleMessage("Gözden Geçir"),
        "reviewApproval":
            MessageLookupByLibrary.simpleMessage("İnceleme Onayı"),
        "reviewPendingApproval": MessageLookupByLibrary.simpleMessage(
            "İncelemeniz gönderildi ve onay bekliyor!"),
        "reviewSent":
            MessageLookupByLibrary.simpleMessage("Yorumunuz gönderildi!"),
        "reviews": MessageLookupByLibrary.simpleMessage("yorumlar"),
        "romanian": MessageLookupByLibrary.simpleMessage("Romen"),
        "russian": MessageLookupByLibrary.simpleMessage("Russian"),
        "sale": m39,
        "salePrice": MessageLookupByLibrary.simpleMessage("Satış ücreti"),
        "saturday": MessageLookupByLibrary.simpleMessage("Cumartesi"),
        "save": MessageLookupByLibrary.simpleMessage("Kayıt etmek"),
        "saveAddress": MessageLookupByLibrary.simpleMessage("Adresi Kaydet"),
        "saveAddressSuccess":
            MessageLookupByLibrary.simpleMessage("Adres cihazınızda kayıtlı"),
        "saveForLater": MessageLookupByLibrary.simpleMessage("Sonraya sakla"),
        "saveQRCode": MessageLookupByLibrary.simpleMessage("QR Kodunu Kaydet"),
        "saveToWishList":
            MessageLookupByLibrary.simpleMessage("İstek Listesine Ekle"),
        "scannerCannotScan":
            MessageLookupByLibrary.simpleMessage("Bu öğe taranamaz"),
        "scannerLoginFirst": MessageLookupByLibrary.simpleMessage(
            "Bir siparişi taramak için önce giriş yapmanız gerekir"),
        "scannerOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Bu sipariş hesabınız için mevcut değil"),
        "search": MessageLookupByLibrary.simpleMessage("Ara"),
        "searchByCountryNameOrDialCode": MessageLookupByLibrary.simpleMessage(
            "Ülke adına veya arama koduna göre arayın"),
        "searchByName": MessageLookupByLibrary.simpleMessage("İsimle Ara..."),
        "searchEmptyDataMessage": MessageLookupByLibrary.simpleMessage(
            "Hata! Görünüşe göre arama kriterlerinizle eşleşen sonuç yok"),
        "searchForItems": MessageLookupByLibrary.simpleMessage("Ürün Ara"),
        "searchInput": MessageLookupByLibrary.simpleMessage(
            "Lütfen arama alanına metin yazınız"),
        "searchOrderId":
            MessageLookupByLibrary.simpleMessage("Sipariş Kimliği Ara ..."),
        "searchPlace": MessageLookupByLibrary.simpleMessage("Adres ara"),
        "searchResultFor": m40,
        "searchResultItem": m41,
        "searchResultItems": m42,
        "searchingAddress": MessageLookupByLibrary.simpleMessage("Adres Arama"),
        "secondsAgo": m43,
        "seeAll": MessageLookupByLibrary.simpleMessage("Tümünü Gör"),
        "seeNewAppConfig": MessageLookupByLibrary.simpleMessage(
            "Uygulamanızda yeni içerik görmeye devam edin."),
        "seeOrder": MessageLookupByLibrary.simpleMessage("Siparişe Bakın"),
        "seeReviews":
            MessageLookupByLibrary.simpleMessage("İncelemelere bakın"),
        "select": MessageLookupByLibrary.simpleMessage("seçmek"),
        "selectAddress": MessageLookupByLibrary.simpleMessage("Adres Seçin"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Hepsini seç"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Tarihleri seçin"),
        "selectFileCancelled":
            MessageLookupByLibrary.simpleMessage("Dosya seçimi iptal edildi!"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Fotoğraf seç"),
        "selectNone": MessageLookupByLibrary.simpleMessage("Hiçbirini seçme"),
        "selectPrinter": MessageLookupByLibrary.simpleMessage("Yazıcı Seç"),
        "selectRole": MessageLookupByLibrary.simpleMessage("Rol Seç"),
        "selectStore": MessageLookupByLibrary.simpleMessage("Mağaza Seç"),
        "selectTheColor": MessageLookupByLibrary.simpleMessage("Renk seçin"),
        "selectTheFile": MessageLookupByLibrary.simpleMessage("Dosyayı seçin"),
        "selectThePoint":
            MessageLookupByLibrary.simpleMessage("Select the point"),
        "selectTheQuantity":
            MessageLookupByLibrary.simpleMessage("Miktar seçin"),
        "selectTheSize": MessageLookupByLibrary.simpleMessage("Ebat seçin"),
        "selectVoucher": MessageLookupByLibrary.simpleMessage("Kupon seçin"),
        "send": MessageLookupByLibrary.simpleMessage("göndermek"),
        "sendBack": MessageLookupByLibrary.simpleMessage("Geri göndermek"),
        "sendSMSCode": MessageLookupByLibrary.simpleMessage("Kodu al"),
        "sendSMStoVendor":
            MessageLookupByLibrary.simpleMessage("Mağaza Sahibine SMS Gönder"),
        "sendTo": MessageLookupByLibrary.simpleMessage(
            "Transfer etmek istediğiniz hesap (e-posta)"),
        "separateMultipleEmailWithComma": MessageLookupByLibrary.simpleMessage(
            "Birden fazla e-posta adresini virgülle ayırın."),
        "serbian": MessageLookupByLibrary.simpleMessage("Sırpça"),
        "sessionExpired":
            MessageLookupByLibrary.simpleMessage("Oturum süresi doldu"),
        "setAnAddressInSettingPage": MessageLookupByLibrary.simpleMessage(
            "Lütfen ayarlar sayfasında bir adres belirleyin"),
        "settings": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "setup": MessageLookupByLibrary.simpleMessage("kurmak"),
        "share": MessageLookupByLibrary.simpleMessage("Paylaş"),
        "shipped": MessageLookupByLibrary.simpleMessage("Gönderilen"),
        "shipping": MessageLookupByLibrary.simpleMessage("Gönderim"),
        "shippingAddress":
            MessageLookupByLibrary.simpleMessage("Gönderim Adresi"),
        "shippingFee": MessageLookupByLibrary.simpleMessage("Kargo Ücreti"),
        "shippingMethod":
            MessageLookupByLibrary.simpleMessage("Gönderim Şekli"),
        "shop": MessageLookupByLibrary.simpleMessage("Mağaza"),
        "shopEmail": MessageLookupByLibrary.simpleMessage("E-posta alışverişi"),
        "shopName": MessageLookupByLibrary.simpleMessage("Mağaza ismi"),
        "shopOrders":
            MessageLookupByLibrary.simpleMessage("Mağaza Siparişleri"),
        "shopPhone": MessageLookupByLibrary.simpleMessage("Telefon satın al"),
        "shopSlug": MessageLookupByLibrary.simpleMessage("Dükkan kısa adı"),
        "shoppingCartItems": m44,
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Kısa Açıklama"),
        "showAllMyOrdered":
            MessageLookupByLibrary.simpleMessage("Tüm Siparişlerimi Göster"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detayları göster"),
        "showGallery": MessageLookupByLibrary.simpleMessage("Galeriyi Göster"),
        "showLess": MessageLookupByLibrary.simpleMessage("Daha az göster"),
        "showMore": MessageLookupByLibrary.simpleMessage("Daha fazla göster"),
        "signIn": MessageLookupByLibrary.simpleMessage("Giriş Yap"),
        "signInWithEmail":
            MessageLookupByLibrary.simpleMessage("E-posta ile oturum açın"),
        "signUp": MessageLookupByLibrary.simpleMessage("Kayıt Ol"),
        "signup": MessageLookupByLibrary.simpleMessage("Kaydol"),
        "simple": MessageLookupByLibrary.simpleMessage("Basit"),
        "size": MessageLookupByLibrary.simpleMessage("Ebat"),
        "sizeGuide": MessageLookupByLibrary.simpleMessage("Ölçü Rehberi"),
        "skip": MessageLookupByLibrary.simpleMessage("Atla"),
        "sku": MessageLookupByLibrary.simpleMessage("sku"),
        "slovak": MessageLookupByLibrary.simpleMessage("Slovak"),
        "smsCodeExpired": MessageLookupByLibrary.simpleMessage(
            "SMS kodunun süresi dolmuştur. Tekrar denemek için lütfen doğrulama kodunu tekrar gönderin."),
        "sold": m45,
        "soldBy": MessageLookupByLibrary.simpleMessage("Sold by"),
        "somethingWrong": MessageLookupByLibrary.simpleMessage(
            "Bir şeyler yanlış gitti. Lütfen daha sonra tekrar deneyiniz."),
        "sortBy": MessageLookupByLibrary.simpleMessage("Göre sırala"),
        "sortCode": MessageLookupByLibrary.simpleMessage("Sıralama kodu"),
        "spanish": MessageLookupByLibrary.simpleMessage("İpsanyolca"),
        "speechNotAvailable":
            MessageLookupByLibrary.simpleMessage("Konuşma mevcut değil"),
        "startExploring":
            MessageLookupByLibrary.simpleMessage("Keşfetmeye Başlayın"),
        "startShopping":
            MessageLookupByLibrary.simpleMessage("Alışverişe başla"),
        "state": MessageLookupByLibrary.simpleMessage("durum"),
        "stateIsRequired":
            MessageLookupByLibrary.simpleMessage("ilçe alanı zorunludur"),
        "stateProvince": MessageLookupByLibrary.simpleMessage("il"),
        "status": MessageLookupByLibrary.simpleMessage("Durum"),
        "stock": MessageLookupByLibrary.simpleMessage("Stok"),
        "stockQuantity": MessageLookupByLibrary.simpleMessage("Stok miktarı"),
        "stop": MessageLookupByLibrary.simpleMessage("durdurmak"),
        "store": MessageLookupByLibrary.simpleMessage("mağaza"),
        "storeAddress": MessageLookupByLibrary.simpleMessage("Dükkan Adresi"),
        "storeBanner": MessageLookupByLibrary.simpleMessage("afiş"),
        "storeBrand": MessageLookupByLibrary.simpleMessage("Mağaza markası"),
        "storeClosed":
            MessageLookupByLibrary.simpleMessage("Mağaza şimdi kapalı"),
        "storeEmail":
            MessageLookupByLibrary.simpleMessage("E-posta alışverişi"),
        "storeInformation":
            MessageLookupByLibrary.simpleMessage("Bilgi depola"),
        "storeListBanner":
            MessageLookupByLibrary.simpleMessage("Mağaza Listesi Başlığı"),
        "storeLocation": MessageLookupByLibrary.simpleMessage("Mağaza Konumu"),
        "storeLocatorSearchPlaceholder":
            MessageLookupByLibrary.simpleMessage("Adresi / şehri girin"),
        "storeLogo": MessageLookupByLibrary.simpleMessage("Mağaza Logosu"),
        "storeMobileBanner":
            MessageLookupByLibrary.simpleMessage("Mağaza Mobil Afişi"),
        "storeSettings":
            MessageLookupByLibrary.simpleMessage("Mağaza Ayarları"),
        "storeSliderBanner":
            MessageLookupByLibrary.simpleMessage("Mağaza Kaydırıcı Banner"),
        "storeStaticBanner":
            MessageLookupByLibrary.simpleMessage("Statik Banner Mağazası"),
        "storeVacation": MessageLookupByLibrary.simpleMessage("Mağaza tatili"),
        "stores": MessageLookupByLibrary.simpleMessage("Mağazalar"),
        "street": MessageLookupByLibrary.simpleMessage("sokak"),
        "street2": MessageLookupByLibrary.simpleMessage("Sokak 2"),
        "streetIsRequired": MessageLookupByLibrary.simpleMessage(
            "Detaylı Adres adı alanı zorunludur"),
        "streetName": MessageLookupByLibrary.simpleMessage("Detaylı Adres"),
        "streetNameApartment":
            MessageLookupByLibrary.simpleMessage("Apartment"),
        "streetNameBlock": MessageLookupByLibrary.simpleMessage("Block"),
        "subTitleOrderConfirmed": MessageLookupByLibrary.simpleMessage(
            "Siparişiniz için teşekkürler. Siparişinizi işleme koymak için hızla çalışıyoruz. Kısa süre içinde bir onay e-postası için bizi takip etmeye devam edin"),
        "submit": MessageLookupByLibrary.simpleMessage("Gönder"),
        "submitYourPost":
            MessageLookupByLibrary.simpleMessage("Gönderinizi Gönderin"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Ara Toplam"),
        "sunday": MessageLookupByLibrary.simpleMessage("Pazar"),
        "support": MessageLookupByLibrary.simpleMessage("Destek"),
        "swahili": MessageLookupByLibrary.simpleMessage("Svahili"),
        "swedish": MessageLookupByLibrary.simpleMessage("İsveççe"),
        "tag": MessageLookupByLibrary.simpleMessage("Etiket"),
        "tagNotExist":
            MessageLookupByLibrary.simpleMessage("Bu etiket mevcut değil"),
        "tags": MessageLookupByLibrary.simpleMessage("Etiketler"),
        "takePicture": MessageLookupByLibrary.simpleMessage("Fotoğraf çek"),
        "tamil": MessageLookupByLibrary.simpleMessage("Tamilce"),
        "tapSelectLocation":
            MessageLookupByLibrary.simpleMessage("Bu adresi seçmek için dokun"),
        "tapTheMicToTalk": MessageLookupByLibrary.simpleMessage(
            "Konuşmak için mikrofona dokunun"),
        "tax": MessageLookupByLibrary.simpleMessage("Vergi"),
        "teraWallet": MessageLookupByLibrary.simpleMessage("TeraCüzdan"),
        "terrible": MessageLookupByLibrary.simpleMessage("Korkunç"),
        "thailand": MessageLookupByLibrary.simpleMessage("Thai"),
        "theFieldIsRequired": m46,
        "thisDateIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("Bu tarih mevcut değil"),
        "thisFeatureDoesNotSupportTheCurrentLanguage":
            MessageLookupByLibrary.simpleMessage(
                "Bu özellik mevcut dili desteklemiyor"),
        "thisIsCustomerRole":
            MessageLookupByLibrary.simpleMessage("Bu müşteri rolüdür"),
        "thisIsVendorRole":
            MessageLookupByLibrary.simpleMessage("Bu satıcı rolüdür"),
        "thisPlatformNotSupportWebview": MessageLookupByLibrary.simpleMessage(
            "Bu platform web tarayıcıyı desteklemiyor."),
        "thisProductNotSupport":
            MessageLookupByLibrary.simpleMessage("Bu ürün desteklenmiyor"),
        "thursday": MessageLookupByLibrary.simpleMessage("Perşembe"),
        "tickets": MessageLookupByLibrary.simpleMessage("Biletler"),
        "time": MessageLookupByLibrary.simpleMessage("zaman"),
        "title": MessageLookupByLibrary.simpleMessage("Başlık"),
        "titleAToZ":
            MessageLookupByLibrary.simpleMessage("Başlık: A\'dan Z\'ye"),
        "titleZToA":
            MessageLookupByLibrary.simpleMessage("Başlık: Z\'den A\'ya"),
        "to": MessageLookupByLibrary.simpleMessage("için"),
        "tooManyFailedLogin": MessageLookupByLibrary.simpleMessage(
            "Çok fazla başarısız oturum açma girişimi. Lütfen daha sonra tekrar deneyiniz."),
        "topUp": MessageLookupByLibrary.simpleMessage("Tamamla"),
        "topUpProductNotFound":
            MessageLookupByLibrary.simpleMessage("Doldurma ürünü bulunamadı"),
        "total": MessageLookupByLibrary.simpleMessage("Toplam"),
        "totalCartValue": MessageLookupByLibrary.simpleMessage(
            "Total order\'s value must be at least"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Toplam fiyat"),
        "totalProducts": m47,
        "totalTax": MessageLookupByLibrary.simpleMessage("Vergi"),
        "trackingNumberIs":
            MessageLookupByLibrary.simpleMessage("Takip Numarası"),
        "trackingPage": MessageLookupByLibrary.simpleMessage("Takip sayfası"),
        "transactionCancelled":
            MessageLookupByLibrary.simpleMessage("İşlem iptal edildi"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("İşlem Ayrıntısı"),
        "transactionFailded":
            MessageLookupByLibrary.simpleMessage("İşlem başarısız oldu"),
        "transactionFailed":
            MessageLookupByLibrary.simpleMessage("İşlem başarısız"),
        "transactionFee": MessageLookupByLibrary.simpleMessage("İşlem ücreti"),
        "transactionResult":
            MessageLookupByLibrary.simpleMessage("İşlem Sonucu"),
        "transfer": MessageLookupByLibrary.simpleMessage("Aktar"),
        "transferConfirm":
            MessageLookupByLibrary.simpleMessage("Transfer Onayı"),
        "transferErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bu kullanıcıya aktarım yapamazsınız"),
        "transferFailed":
            MessageLookupByLibrary.simpleMessage("Aktarım başarısız"),
        "transferMoneyTo": m48,
        "transferSuccess":
            MessageLookupByLibrary.simpleMessage("Transfer başarısı"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Salı"),
        "turkish": MessageLookupByLibrary.simpleMessage("Türkçe"),
        "turnOnBle": MessageLookupByLibrary.simpleMessage("BLUETOOTH\'U AÇIN"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Bir mesaj yazın ..."),
        "typeYourMessage":
            MessageLookupByLibrary.simpleMessage("Mesajınızı buraya yazın..."),
        "typing": MessageLookupByLibrary.simpleMessage("yazıyor..."),
        "ukrainian": MessageLookupByLibrary.simpleMessage("Ukrayna"),
        "unavailable": MessageLookupByLibrary.simpleMessage("Yok"),
        "unblock": MessageLookupByLibrary.simpleMessage("Engellemeyi kaldır"),
        "unblockUser": MessageLookupByLibrary.simpleMessage(
            "Kullanıcının engellemesini kaldır"),
        "undo": MessageLookupByLibrary.simpleMessage("Geri"),
        "unpaid": MessageLookupByLibrary.simpleMessage("ödenmemiş"),
        "update": MessageLookupByLibrary.simpleMessage("Güncelle"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Güncelleştirme başarısız!"),
        "updateInfo":
            MessageLookupByLibrary.simpleMessage("Güncelleme bilgisi"),
        "updatePassword":
            MessageLookupByLibrary.simpleMessage("Şifreyi güncelle"),
        "updateStatus":
            MessageLookupByLibrary.simpleMessage("Güncelleme durumu"),
        "updateSuccess":
            MessageLookupByLibrary.simpleMessage("Başarıyla güncellendi!"),
        "updateUserInfor":
            MessageLookupByLibrary.simpleMessage("Bilgileri Güncelle"),
        "uploadFile": MessageLookupByLibrary.simpleMessage("Dosya yükleme"),
        "uploadImage":
            MessageLookupByLibrary.simpleMessage("Fotoğraf yükleniyor"),
        "uploadProduct": MessageLookupByLibrary.simpleMessage("Ürün Yükle"),
        "uploading": MessageLookupByLibrary.simpleMessage("Yükleme"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "useMaximumPointDiscount": m49,
        "useNow": MessageLookupByLibrary.simpleMessage("Şimdi kullan"),
        "useThisImage": MessageLookupByLibrary.simpleMessage("Bu Resmi Kullan"),
        "userExists": MessageLookupByLibrary.simpleMessage(
            "Bu kullanıcı adı/e-posta mevcut değil."),
        "userHasBeenBlocked":
            MessageLookupByLibrary.simpleMessage("Kullanıcı engellendi"),
        "userNameInCorrect": MessageLookupByLibrary.simpleMessage(
            "Kullanıcı adı veya şifre yanlış."),
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("Kullanıcı bulunamadı"),
        "username": MessageLookupByLibrary.simpleMessage("E-Posta"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Kullanıcı adı zaten kullanımda!"),
        "usernameAndPasswordRequired": MessageLookupByLibrary.simpleMessage(
            "Kullanıcı adı ve şifre gerekli"),
        "usernameInvalid":
            MessageLookupByLibrary.simpleMessage("Kullanıcı adı geçersiz"),
        "usernameIsRequired":
            MessageLookupByLibrary.simpleMessage("Kullanıcı adı gerekli"),
        "vacationMessage": MessageLookupByLibrary.simpleMessage("tatil mesajı"),
        "vacationType": MessageLookupByLibrary.simpleMessage("tatil türü"),
        "validUntilDate": m50,
        "variable": MessageLookupByLibrary.simpleMessage("değişken"),
        "variation": MessageLookupByLibrary.simpleMessage("varyasyon"),
        "vendor": MessageLookupByLibrary.simpleMessage("satıcı"),
        "vendorAdmin": MessageLookupByLibrary.simpleMessage("Vendor Admin"),
        "vendorInfo": MessageLookupByLibrary.simpleMessage("Satıcı Bilgileri"),
        "verificationCode":
            MessageLookupByLibrary.simpleMessage("Doğrulama kodu (6 haneli)"),
        "verifySMSCode": MessageLookupByLibrary.simpleMessage("Doğrulayın"),
        "viaWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan aracılığıyla"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnam"),
        "view": MessageLookupByLibrary.simpleMessage("Görünüm"),
        "viewCart": MessageLookupByLibrary.simpleMessage("sepeti göster"),
        "viewDetail": MessageLookupByLibrary.simpleMessage("Ayrıntılara bakın"),
        "viewMore": MessageLookupByLibrary.simpleMessage("Daha fazla göster"),
        "viewOnGoogleMaps": MessageLookupByLibrary.simpleMessage(
            "Google Haritalar\'da Görüntüle"),
        "viewOrder": MessageLookupByLibrary.simpleMessage("Siparişi görüntüle"),
        "viewRecentTransactions":
            MessageLookupByLibrary.simpleMessage("Son işlemleri görüntüle"),
        "visible": MessageLookupByLibrary.simpleMessage("Gözle görülür"),
        "visitStore":
            MessageLookupByLibrary.simpleMessage("Mağazayı ziyaret et"),
        "waitForLoad": MessageLookupByLibrary.simpleMessage(
            "Resmin yüklenmesi bekleniyor"),
        "waitForPost":
            MessageLookupByLibrary.simpleMessage("Ürün sonrası bekleniyor"),
        "waitingForConfirmation":
            MessageLookupByLibrary.simpleMessage("Onay Bekliyor"),
        "walletBalance":
            MessageLookupByLibrary.simpleMessage("Cüzdan Bakiyesi"),
        "walletBalanceWithValue": m51,
        "walletName": MessageLookupByLibrary.simpleMessage("Cüzdan adı"),
        "warning": m52,
        "warningCurrencyMessageForWallet": m53,
        "weFoundBlogs":
            MessageLookupByLibrary.simpleMessage("Blog(lar) Bulduk"),
        "weFoundProducts": m54,
        "weNeedCameraAccessTo": MessageLookupByLibrary.simpleMessage(
            "QR kodunu veya Barkodu taramak için kamera erişimine ihtiyacımız var."),
        "weSentAnOTPTo": MessageLookupByLibrary.simpleMessage(
            "Bir kimlik doğrulama kodu gönderildi"),
        "weWillSendYouNotification": MessageLookupByLibrary.simpleMessage(
            "Yeni ürünler veya teklifler sunulduğunda size bildirim göndereceğiz. Bu ayarı her zaman ayarlarda değiştirebilirsiniz."),
        "webView": MessageLookupByLibrary.simpleMessage("Web Görünümü"),
        "website": MessageLookupByLibrary.simpleMessage("İnternet sitesi"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Çarşamba"),
        "week": m55,
        "welcome": MessageLookupByLibrary.simpleMessage("Hoşgeldiniz"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Tekrar hoşgeldiniz"),
        "welcomeRegister": MessageLookupByLibrary.simpleMessage(
            "Alışveriş yolculuğunuza şimdi bizimle başlayın"),
        "welcomeUser": m56,
        "whichLanguageDoYouPrefer":
            MessageLookupByLibrary.simpleMessage("Hangi dili tercih edersin?"),
        "wholesaleRegisterMsg": MessageLookupByLibrary.simpleMessage(
            "Kaydınızı onaylamak için lütfen yöneticiye ulaşın."),
        "willNotSendAndReceiveMessage": MessageLookupByLibrary.simpleMessage(
            "Bu kullanıcıdan mesaj gönderip alamayacaksınız."),
        "withdrawAmount":
            MessageLookupByLibrary.simpleMessage("Para çekme tutarı"),
        "withdrawRequest":
            MessageLookupByLibrary.simpleMessage("Geri çekme talebi"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Para Çekme"),
        "womanCollections":
            MessageLookupByLibrary.simpleMessage("Kadın Koleksiyonları"),
        "writeComment":
            MessageLookupByLibrary.simpleMessage("Yorumunuzu yazın"),
        "writeYourNote": MessageLookupByLibrary.simpleMessage("Notunuzu yazın"),
        "yearsAgo": m57,
        "yes": MessageLookupByLibrary.simpleMessage("Evet"),
        "youCanOnlyOrderSingleStore": MessageLookupByLibrary.simpleMessage(
            "Sadece tek bir mağazadan satın alabilirsiniz."),
        "youCanOnlyPurchase":
            MessageLookupByLibrary.simpleMessage("Sadece satın alabilirsin"),
        "youDontHavePermissionToCreatePost":
            MessageLookupByLibrary.simpleMessage(
                "Gönderi oluşturma izniniz yok"),
        "youHaveAssignedToOrder": m58,
        "youHaveBeenSaveAddressYourLocal":
            MessageLookupByLibrary.simpleMessage("Adres cihazına kaydedildi"),
        "youHaveNoPost":
            MessageLookupByLibrary.simpleMessage("Hiç gönderiniz yok"),
        "youHavePoints":
            MessageLookupByLibrary.simpleMessage("\$point Puanınız Var"),
        "youMightAlsoLike":
            MessageLookupByLibrary.simpleMessage("Bunu da beğenebilirsin"),
        "youNeedToLoginCheckout": MessageLookupByLibrary.simpleMessage(
            "Ödeme yapmak için giriş yapmalısınız"),
        "youNotBeAsked": MessageLookupByLibrary.simpleMessage(
            "Tamamlandıktan sonra bir dahaki sefere sorulmayacak"),
        "yourAccountIsUnderReview": MessageLookupByLibrary.simpleMessage(
            "Hesabınız inceleniyor. Herhangi bir yardıma ihtiyacınız varsa lütfen yönetici ile iletişime geçin."),
        "yourAddressExistYourLocal": MessageLookupByLibrary.simpleMessage(
            "Adres cihazınızda zaten mevcut"),
        "yourAddressHasBeenSaved": MessageLookupByLibrary.simpleMessage(
            "Adres yerel depolama alanınıza kaydedildi"),
        "yourApplicationIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Başvurunuz inceleniyor."),
        "yourBagIsEmpty": MessageLookupByLibrary.simpleMessage("Sepetin Boş"),
        "yourBookingDetail":
            MessageLookupByLibrary.simpleMessage("Rezervasyon detayınız"),
        "yourEarningsThisMonth":
            MessageLookupByLibrary.simpleMessage("Bu ayki kazançlarınız"),
        "yourNote": MessageLookupByLibrary.simpleMessage("Notunuz"),
        "yourOrderHasBeenAdded":
            MessageLookupByLibrary.simpleMessage("Siparişiniz eklendi"),
        "yourOrderIsConfirmed":
            MessageLookupByLibrary.simpleMessage("Siparişiniz Onaylandı!"),
        "yourOrderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Siparişiniz boş"),
        "yourOrderIsEmptyMsg": MessageLookupByLibrary.simpleMessage(
            "Hiçbir öğe eklememişsiniz gibi görünüyor.\nDoldurmak için alışverişe başlayın."),
        "yourOrders": MessageLookupByLibrary.simpleMessage("Senin emirlerin"),
        "yourProductIsUnderReview":
            MessageLookupByLibrary.simpleMessage("Ürününüz inceleniyor"),
        "yourUsernameEmail":
            MessageLookupByLibrary.simpleMessage("E-Posta adresin"),
        "zipCode": MessageLookupByLibrary.simpleMessage("Posta Kodu"),
        "zipCodeIsRequired":
            MessageLookupByLibrary.simpleMessage("Posta kodu alanı zorunludur")
      };
}
