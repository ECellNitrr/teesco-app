class UserInformation {
  String name,
      emailAddress,
      instituteName,
      password,
      reEnterPassword,
      countryCode;
  int phoneNumber;

  void storeData(String s, String keyword) {
    if (keyword == 'Enter your name') name = s;
    if (keyword == 'Enter e-mail address') emailAddress = s;
    if (keyword == 'Institution name') instituteName = s;
    if (keyword == 'Phone Number') phoneNumber = s as int;
    if (keyword == 'Country Code') countryCode = s;
    if (keyword == 'Enter password') password = s;
    if (keyword == 'Re-enter Password') reEnterPassword = s;
  }
}
