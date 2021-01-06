class S {
  S._();

  /// Application name
  static const String appName = "Teesco";

  /// Teesco Application Access Token
  static const String appAccessToken = "";

  //! Add common strings here...

  // urls
  static const String baseUrl = "http://159.65.158.103:5555/api/";
  static const String loginUrl = baseUrl + "users/login/";
  static const String registerUrl = baseUrl + "users/register/";

  // api keys
  static const String tokenKey = "token";
  static const String passwordKey = "password";
  static const String emailKey = "email";
  static const String usernameKey = "username";
  static const String nameKey = "name";
  static const String institutionKey = "institution";
  static const String countryCodeKey = "country_code";
  static const String phoneKey = "phone";

  // error strings
  static const String networkError = "Couldn't register. Is the device online?";
  static const String unknownError = "Something went wrong. Please try again later.";
}
