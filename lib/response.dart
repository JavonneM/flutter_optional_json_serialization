class Response {
  Response({
    this.errorCode,
    required this.success,
    this.errorMessage,
  });
  String? errorCode;
  bool success;
  String? errorMessage;
}
