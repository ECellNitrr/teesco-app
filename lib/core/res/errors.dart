// Common Errors
class NetworkError extends Error {}

class UnknownError extends Error {}

// Login Specific Errors
class InvalidCredentialsError extends Error {}

class UserNotFoundError extends Error {}

class ValidationError extends Error {
  final String description;

  ValidationError(this.description);
}
