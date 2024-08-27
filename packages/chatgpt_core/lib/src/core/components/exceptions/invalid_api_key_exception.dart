class InvalidApiKeyException implements Exception {
  final String message;

  InvalidApiKeyException([this.message = 'Invalid API key']);
}
