class AdditionalPaymentInfo {
  const AdditionalPaymentInfo({
    this.ppPayerId,
    this.ppPaymentToken,
    this.transactionId,
    this.ppPaymentId,
  });

  final String? ppPayerId;
  final String? ppPaymentToken;
  final String? transactionId;
  final String? ppPaymentId;
}
