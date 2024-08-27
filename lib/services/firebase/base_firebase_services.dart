import 'package:flutter/cupertino.dart';

import '../../models/entities/firebase_error_exception.dart';
import '../../models/entities/product.dart';
import '../../models/entities/user.dart';

class BaseFirebaseServices {
  /// check if the Firebase is enable or not
  bool get isEnabled => false;

  Future<void> init() async {}

  dynamic getCloudMessaging() {}

  dynamic getCurrentUser() => null;

  /// Login Firebase with social account
  void loginFirebaseApple({authorizationCode, identityToken}) {}

  void loginFirebaseFacebook({token}) {}

  void loginFirebaseGoogle({token}) {}

  void loginFirebaseEmail({email, password}) {}

  dynamic loginFirebaseCredential({credential}) {}

  dynamic getFirebaseCredential({verificationId, smsCode}) {}

  /// save user to firebase
  void saveUserToFirestore({User? user}) {}

  /// verify SMS login
  dynamic getFirebaseStream() {}

  Future<void> verifyPhoneNumber({
    phoneNumber,
    codeAutoRetrievalTimeout,
    codeSent,
    required void Function(String?) verificationCompleted,
    void Function(FirebaseErrorException error)? verificationFailed,
    forceResendingToken,
    Duration? timeout,
  }) async {}

  /// render Chat Screen
  Widget renderChatAuthScreen() => const SizedBox();

  Widget renderListChatScreen({String? email}) => const SizedBox();

  Widget renderChatScreen({
    User? senderUser,
    String? receiverEmail,
    String? receiverName,
    Product? product,
  }) =>
      const SizedBox();

  /// load firebase remote config
  Future<bool> loadRemoteConfig() async => false;

  String getRemoteConfigString(String key) => '';

  Future<List<String>> getRemoteKeys() async => [];

  /// register new user with email and password
  void createUserWithEmailAndPassword({email, password}) {}

  Future<void> signOut() async {}

  Future<String?> getMessagingToken() async => '';

  List<NavigatorObserver> getMNavigatorObservers() =>
      const <NavigatorObserver>[];

  void deleteAccount() {}

  Future<String?>? getIdToken() => null;
}
