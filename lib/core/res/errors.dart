// Common Errors
class NetworkError extends Error {}

class UnknownError extends Error {}

class ResponseException implements Exception {
  final String message;

  ResponseException(this.message);
}

class ValidationError extends Error {
  final String description;

  ValidationError(this.description);
}
