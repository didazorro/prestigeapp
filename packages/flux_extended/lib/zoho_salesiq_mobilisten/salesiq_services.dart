// // Zoho SalesIQ Mobilisten
// import 'dart:async';

// import 'package:fstore/common/constants.dart';
// import 'package:fstore/common/events.dart';
// import 'package:fstore/data/boxes.dart';
// import 'package:fstore/services/chat/chat_service.dart';
// import 'package:salesiq_mobilisten/launcher.dart';
// import 'package:salesiq_mobilisten/salesiq_knowledge_base.dart';
// import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';

// import 'constants/supported_languages.dart';
// import 'model/salesiq_model.dart';

// class SalesiqService extends ChatService {
//   bool _initialized = false;

//   static final SalesiqService _instance = SalesiqService._internal();

//   factory SalesiqService() => _instance;

//   SalesiqService._internal();

//   StreamSubscription? _subAppCookieExpiry;
//   StreamSubscription? _subLanguageChange;
//   StreamSubscription? _subLoggedIn;

//   @override
//   bool get enable => salesiqConfig.enable;

//   @override
//   Future<void> init() async {
//     String appKey;
//     String accessKey;

//     if (!salesiqConfig.enable) {
//       return;
//     }

//     if (isIos) {
//       appKey = salesiqConfig.iosAppKey;
//       accessKey = salesiqConfig.iosAccessKey;
//     } else if (isAndroid) {
//       appKey = salesiqConfig.androidAppKey;
//       accessKey = salesiqConfig.androidAccessKey;
//     } else {
//       // Do not support other platforms
//       return;
//     }

//     try {
//       if (appKey.isEmpty || accessKey.isEmpty) {
//         return;
//       }

//       if (_initialized) {
//         return;
//       }

//       await ZohoSalesIQ.init(appKey, accessKey).then((value) {
//         _initialized = true;
//         return true;
//       }).onError((error, stackTrace) {
//         printError(error, stackTrace);
//         return false;
//       });

//       // It will not depend on your app language
//       if (salesiqConfig.defaultChatTitle.isNotEmpty) {
//         unawaited(ZohoSalesIQ.setChatTitle(salesiqConfig.defaultChatTitle));
//       }

//       // It will not depend on your app language
//       if (salesiqConfig.defaultChatQuestion.isNotEmpty) {
//         unawaited(ZohoSalesIQ.setQuestion(salesiqConfig.defaultChatQuestion));
//       }

//       unawaited(
//           ZohoSalesIQ.showOfflineMessage(salesiqConfig.showOfflineMessage));

//       unawaited(ZohoSalesIQ.setRatingVisibility(salesiqConfig.enableRating));

//       // Will be hidden if rating is disable
//       unawaited(ZohoSalesIQ.setFeedbackVisibility(salesiqConfig.enableRating));

//       // Currently only support for iOS
//       if (isIos && salesiqConfig.iosPrimaryColor.isNotEmpty) {
//         unawaited(
//             ZohoSalesIQ.setThemeColorForiOS(salesiqConfig.iosPrimaryColor));
//       }

//       if (isAndroid) {
//         if (salesiqConfig.useNativeButton) {
//           var launcherProperties = LauncherProperties(LauncherMode.floating);
//           launcherProperties.horizontalDirection = Horizontal.right;
//           launcherProperties.verticalDirection = Vertical.bottom;

//           // Add the icon into the drawable folder of your project's resources (res/drawable). And use name of this icon without extension.
//           // Set icon for native button
//           // launcherProperties.icon = 'ic_stat_onesignal_default';

//           ZohoSalesIQ.setLauncherPropertiesForAndroid(launcherProperties);
//         }

//         if (salesiqConfig.notificationIconForAndroid.isNotEmpty) {
//           // Add your icon into the drawable folder of your project's resources (res/drawable). And use name of this icon without extension.
//           ZohoSalesIQ.setNotificationIconForAndroid(
//               salesiqConfig.notificationIconForAndroid);
//         }
//       }

//       if (salesiqConfig.disablePreChatForms) {
//         unawaited(ZohoSalesIQ.disablePreChatForms());
//       }

//       unawaited(ZohoSalesIQ.setConversationVisibility(
//           salesiqConfig.showConversationList));

//       unawaited(ZohoSalesIQ.knowledgeBase
//           .setVisibility(ResourceType.articles, salesiqConfig.showFAQ));

//       unawaited(ZohoSalesIQ.showLauncher(salesiqConfig.useNativeButton));

//       // Set initial language same as app language
//       // If cannot set language, it will use the device language as default
//       var langCode = SettingsBox().languageCode;
//       if (supportedLanguages.contains(langCode)) {
//         unawaited(ZohoSalesIQ.setLanguage(langCode!));
//       }

//       // Clear any data after logout
//       _subAppCookieExpiry = eventBus.on<EventExpiredCookie>().listen((event) {
//         logout();
//       });

//       _subLanguageChange = eventBus.on<EventChangeLanguage>().listen((event) {
//         var langCode = SettingsBox().languageCode;

//         changeLanguage(langCode);
//       });

//       _subLoggedIn = eventBus.on<EventLoggedIn>().listen((event) async {
//         var userInfo = UserBox().userInfo;

//         unawaited(ZohoSalesIQ.registerVisitor(userInfo?.email ?? ''));

//         if (salesiqConfig.autoFillLoggedUserInfor && userInfo != null) {
//           var name = userInfo.name;
//           var phoneNumber = userInfo.phoneNumber;
//           var email = userInfo.email;

//           if (name != null) {
//             unawaited(ZohoSalesIQ.setVisitorName(name));
//           }
//           if (phoneNumber != null) {
//             unawaited(ZohoSalesIQ.setVisitorContactNumber(phoneNumber));
//           }
//           if (email != null) {
//             unawaited(ZohoSalesIQ.setVisitorEmail(email));
//           }
//         }
//       });
//     } catch (err, trace) {
//       printError(err, trace);
//     }
//   }

//   @override
//   void dispose() {
//     _subAppCookieExpiry?.cancel();
//     _subLanguageChange?.cancel();
//     _subLoggedIn?.cancel();
//   }

//   @override
//   Future<void> showChatScreen(context) async {
//     if (!salesiqConfig.enable) {
//       return;
//     }

//     if (!_initialized) {
//       printError('[ZohoSalesIQ] has not been initialized!');
//       return;
//     }

//     await ZohoSalesIQ.show();
//   }

//   @override
//   Future<void> changeLanguage(String? langCode) async {
//     if (!salesiqConfig.enable || !supportedLanguages.contains(langCode)) {
//       return;
//     }

//     if (!_initialized) {
//       printError('[ZohoSalesIQ] has not been initialized!');
//       return;
//     }

//     await ZohoSalesIQ.setLanguage(langCode!);
//   }

//   @override
//   Future<void> logout() async {
//     if (!salesiqConfig.enable) {
//       return;
//     }

//     if (!_initialized) {
//       printError('[ZohoSalesIQ] has not been initialized!');
//       return;
//     }

//     await ZohoSalesIQ.unregisterVisitor();
//   }
// }
