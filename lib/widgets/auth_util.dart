class AuthUtil {
  static String? _userEmail;
  static String? _userFirstName;

  static void storeUserEmail(String email) {
    _userEmail = email;
    _userFirstName = extractUserName(email);
  }

  static String? getUserEmail() {
    return _userEmail;
  }

  static String? getUserFirstName() {
    return _userFirstName;
  }

  static String extractUserName(String email) {
    List<String> parts = email.split('@');
    String userName = parts[0];

    // Remove any digits and non-letter characters at the end of the username
    userName = userName.replaceAll(RegExp(r'[^a-zA-Z]+$'), '');

    // Capitalize the first letter of the username
    userName = userName[0].toUpperCase() + userName.substring(1);

    return userName;
  }}
