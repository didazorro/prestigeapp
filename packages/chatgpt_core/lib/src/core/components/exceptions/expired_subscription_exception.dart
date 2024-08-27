class ExpiredSubscriptionException implements Exception {
  final String message;

  ExpiredSubscriptionException([this.message = 'Your subscription is expired']);
}
