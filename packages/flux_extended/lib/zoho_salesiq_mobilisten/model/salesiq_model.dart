import 'package:fstore/common/config.dart';

SalesIQ get salesiqConfig =>
    SalesIQ.fromMap(Configurations.salesiqConfig ?? {});

class SalesIQ {
  final bool enable;

  /// [useNativeButton] Default is false because this button always shows on every screen
  final bool useNativeButton;
  final String androidAppKey;
  final String androidAccessKey;
  final String iosAppKey;
  final String iosAccessKey;
  final String defaultChatTitle;
  final String defaultChatQuestion;
  final bool showOfflineMessage;
  final bool enableRating;
  final bool enableFeedback;
  final bool autoFillLoggedUserInfor;
  final String iosPrimaryColor;
  final bool disablePreChatForms;
  final bool showConversationList;
  final bool showFAQ;

  /// Use the `ic_stat_onesignal_default` icon as we have used this as the default
  /// notification icon for both Firebase and OneSignal.
  final String notificationIconForAndroid;

  SalesIQ({
    this.enable = false,
    this.useNativeButton = false,
    this.androidAppKey = '',
    this.androidAccessKey = '',
    this.iosAppKey = '',
    this.iosAccessKey = '',
    this.defaultChatTitle = '',
    this.defaultChatQuestion = '',
    this.showOfflineMessage = false,
    this.enableRating = true,
    this.enableFeedback = true,
    this.autoFillLoggedUserInfor = true,
    this.iosPrimaryColor = '',
    this.disablePreChatForms = false,
    this.showConversationList = true,
    this.showFAQ = true,
    this.notificationIconForAndroid = 'ic_stat_onesignal_default',
  });

  factory SalesIQ.fromMap(Map map) => SalesIQ(
        enable: map['enable'] ?? false,
        useNativeButton: map['useNativeButton'] ?? false,
        androidAppKey: map['androidAppKey'] ?? '',
        androidAccessKey: map['androidAccessKey'] ?? '',
        iosAppKey: map['iosAppKey'] ?? '',
        iosAccessKey: map['iosAccessKey'] ?? '',
        defaultChatTitle: map['defaultChatTitle'] ?? '',
        defaultChatQuestion: map['defaultChatQuestion'] ?? '',
        showOfflineMessage: map['showOfflineMessage'] ?? false,
        enableRating: map['enableRating'] ?? true,
        enableFeedback: map['enableFeedback'] ?? true,
        autoFillLoggedUserInfor: map['autoFillLoggedUserInfor'] ?? true,
        iosPrimaryColor: map['iosPrimaryColor'] ?? '',
        disablePreChatForms: map['disablePreChatForms'] ?? false,
        showConversationList: map['showConversationList'] ?? true,
        showFAQ: map['showFAQ'] ?? true,
        notificationIconForAndroid:
            map['notificationIconForAndroid'] ?? 'ic_stat_onesignal_default',
      );

  Map<String, dynamic> toMap() => {
        'enable': enable,
        'useNativeButton': useNativeButton,
        'androidAppKey': androidAppKey,
        'androidAccessKey': androidAccessKey,
        'iosAppKey': iosAppKey,
        'iosAccessKey': iosAccessKey,
        'defaultChatTitle': defaultChatTitle,
        'defaultChatQuestion': defaultChatQuestion,
        'showOfflineMessage': showOfflineMessage,
        'enableRating': enableRating,
        'enableFeedback': enableFeedback,
        'autoFillLoggedUserInfor': autoFillLoggedUserInfor,
        'iosPrimaryColor': iosPrimaryColor,
        'disablePreChatForms': disablePreChatForms,
        'showConversationList': showConversationList,
        'showFAQ': showFAQ,
        'notificationIconForAndroid': notificationIconForAndroid,
      };
}
