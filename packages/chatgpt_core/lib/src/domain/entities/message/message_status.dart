enum MessageStatus {
  loading,
  success,
  error;

  bool get isLoading => this == MessageStatus.loading;

  bool get isSuccess => this == MessageStatus.success;

  bool get isError => this == MessageStatus.error;
}
