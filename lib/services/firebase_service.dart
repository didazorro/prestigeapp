import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flux_firebase/index.dart';

import '../common/config.dart';
import '../common/constants.dart';
import '../common/tools.dart';
import '../models/entities/firebase_error_exception.dart';
import '../models/entities/product.dart';
import '../models/entities/user.dart';
import 'firebase/index.dart';
import 'index.dart';

class FirebaseServices extends BaseFirebaseServices {
  static final FirebaseServices _instance = FirebaseServices._internal();

  factory FirebaseServices() => _instance;

  FirebaseServices._internal();

  bool _isEnabled = false;

  @override
  bool get isEnabled => _isEnabled;

  @override
  Future<void> init() async {
    var startTime = DateTime.now();
    await Firebase.initializeApp();
    _isEnabled = kAdvanceConfig.enableFirebase;

    /// Not require Play Services
    /// https://firebase.google.com/docs/android/android-play-services
    _auth = FirebaseServiceFactory.create<FirebaseAuthService>();

    _firestore = FirebaseFirestore.instance;

    if (Configurations.enableFirebaseAnalytics) {
      _firebaseAnalytics =
          FirebaseServiceFactory.create<FirebaseAnalyticsService>()!..init();
    } else {
      _firebaseAnalytics = FirebaseAnalyticsService()..init();
    }

    if (!kIsWeb) {
      _remoteConfig = FirebaseServiceFactory.create<FirebaseRemoteServices>();
    }

    /// Require Play Services
    const message = '[FirebaseServices] Init successfully';
    if (GmsCheck().isGmsAvailable) {
      _messaging = FirebaseMessaging.instance;
      printLog(message, startTime);
    } else {
      printLog('$message (without Google Play Services)', startTime);
    }
  }

  /// Firebase Auth
  FirebaseAuthService? _auth;

  FirebaseAuthService? get auth => _auth;

  /// Firebase Cloud Firestore
  FirebaseFirestore? _firestore;

  FirebaseFirestore? get firestore => _firestore;

  /// Firebase Remote Config
  FirebaseRemoteServices? _remoteConfig;

  FirebaseRemoteServices? get remoteConfig => _remoteConfig;

  /// Firebase Messaging
  FirebaseMessaging? _messaging;

  FirebaseMessaging? get messaging => _messaging;

  /// Firebase Analytics
  FirebaseAnalyticsService? _firebaseAnalytics;

  FirebaseAnalyticsService? get firebaseAnalytics => _firebaseAnalytics;

  @override
  void deleteAccount() {
    _messaging?.deleteToken();
    _auth?.deleteAccount();
  }

  @override
  void loginFirebaseApple({authorizationCode, identityToken}) {
    if (FirebaseServices().isEnabled) {
      _auth?.loginFirebaseApple(
          authorizationCode: authorizationCode, identityToken: identityToken);
    }
  }

  @override
  void loginFirebaseFacebook({token}) async {
    if (FirebaseServices().isEnabled) {
      _auth?.loginFirebaseFacebook(token: token);
    }
  }

  @override
  void loginFirebaseGoogle({token}) async {
    if (FirebaseServices().isEnabled) {
      _auth?.loginFirebaseGoogle(token: token);
    }
  }

  @override
  void loginFirebaseEmail({email, password}) async {
    if (FirebaseServices().isEnabled) {
      _auth?.loginFirebaseEmail(email: email, password: password);
    }
  }

  @override
  Future<User?>? loginFirebaseCredential({credential}) {
    return _auth!.loginFirebaseCredential(credential: credential);
  }

  @override
  void saveUserToFirestore({User? user}) async {
    final token = await FirebaseServices().messaging?.getToken();
    printLog('token: $token');
    final docPath = (user?.email?.isNotEmpty ?? false) ? user?.email : user?.id;
    await FirebaseServices().firestore?.collection('users').doc(docPath).set(
      {'deviceToken': token, 'isOnline': true},
      SetOptions(merge: true),
    );
    if (GmsCheck().isGmsAvailable) {
      try {
        await Services()
            .api
            .updateUserInfo({'deviceToken': token}, user!.cookie);
      } catch (err, trace) {
        printError(err, trace);
      }
    }
  }

  @override
  dynamic getFirebaseCredential({verificationId, smsCode}) {
    return _auth?.getFirebaseCredential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
  }

  @override
  StreamController<String?>? getFirebaseStream() {
    return _auth!.getFirebaseStream();
  }

  @override
  Future<void> verifyPhoneNumber({
    phoneNumber,
    codeAutoRetrievalTimeout,
    codeSent,
    required void Function(String?) verificationCompleted,
    void Function(FirebaseErrorException error)? verificationFailed,
    forceResendingToken,
    Duration? timeout,
  }) async {
    await _auth!.verifyPhoneNumber(
      phoneNumber: phoneNumber!,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      codeSent: codeSent,
      timeout: timeout ?? const Duration(seconds: 120),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      forceResendingToken: forceResendingToken,
    );
  }

  @override
  Widget renderChatAuthScreen() {
    return const ChatAuth();
  }

  @override
  Widget renderListChatScreen({String? email}) {
    if (email == null) {
      return const ChatAuth();
    }

    final isMvApp =
        ServerConfig().isVendorType() || ServerConfig().isVendorManagerType();
    if (isMvApp) {
      return RealtimeChat(
        userEmail: email,
        type: RealtimeChatType.userToUsers,
      );
    }

    return RealtimeChat(
      userEmail: email,
      type: RealtimeChatType.customerToAdmin,
    );
  }

  @override
  Widget renderChatScreen({
    User? senderUser,
    String? receiverEmail,
    String? receiverName,
    Product? product,
  }) {
    final isMvApp =
        ServerConfig().isVendorType() || ServerConfig().isVendorManagerType();

    final email = senderUser?.email;
    if (senderUser == null || email == null) {
      return const ChatAuth();
    }

    /// MV: Customer to Vendor.
    if (isMvApp &&
        email != receiverEmail &&
        receiverEmail != null &&
        receiverName != null) {
      var initMessage;
      if (product != null) {
        initMessage = product.name ?? '';
        initMessage += '\n';
        initMessage += product.permalink ?? '';
      }
      return RealtimeChat(
        type: RealtimeChatType.customerToVendor,
        vendorName: receiverName,
        vendorEmail: receiverEmail,
        userEmail: email,
        initMessage: initMessage,
      );
    }

    /// MV: Vendor to self or Vendor to Customer.
    final isVendorChatToSelf = email == receiverEmail;
    if (isMvApp &&
        senderUser.isVender &&
        (isVendorChatToSelf || email != receiverEmail)) {
      return RealtimeChat(
        userEmail: email,
        type: RealtimeChatType.vendorToCustomers,
      );
    }

    /// Admin to Customers.
    if (!isMvApp && email == kConfigChat.realtimeChatConfig.adminEmail) {
      return RealtimeChat(
        userEmail: email,
        type: RealtimeChatType.adminToCustomers,
      );
    }

    /// Customer to Admin.
    if (receiverEmail == kConfigChat.realtimeChatConfig.adminEmail) {
      return RealtimeChat(
        userEmail: email,
        type: RealtimeChatType.customerToAdmin,
      );
    }

    /// Default: User to Users.
    return RealtimeChat(
      userEmail: email,
      type: RealtimeChatType.userToUsers,
    );
  }

  @override
  void createUserWithEmailAndPassword({email, password}) {
    if (isEnabled) {
      _auth?.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    }
  }

  // @override
  // User? getCurrentUser() {
  //   try {
  //     return FirebaseServices().auth?.currentUser;
  //   } catch (e) {
  //     printLog('[Tabbar] getCurrentUser error ${e.toString()}');
  //   }
  // }

  @override
  Future<String?> getMessagingToken() async {
    return await messaging!.getToken();
  }

  @override
  Future<bool> loadRemoteConfig() {
    return _remoteConfig?.loadRemoteConfig() ?? Future.value(false);
  }

  @override
  Future<List<String>> getRemoteKeys() async {
    return await _remoteConfig?.getKeys() ?? [];
  }

  @override
  String getRemoteConfigString(String key) {
    return _remoteConfig?.getString(key) ?? '';
  }

  @override
  Future<void> signOut() async {
    if (isEnabled) {
      _auth?.signOut();
    }
  }

  @override
  List<NavigatorObserver> getMNavigatorObservers() {
    return firebaseAnalytics?.getMNavigatorObservers() ?? <NavigatorObserver>[];
  }

  @override
  Future<String?>? getIdToken() {
    return _auth?.getIdToken();
  }
}
