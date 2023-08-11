bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[\w\.-]+@([a-zA-Z\d-]+\.)+[a-zA-Z]{2,4}(?=\s*$)');
    return emailRegex.hasMatch(email);
  }