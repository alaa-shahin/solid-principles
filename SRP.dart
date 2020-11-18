abstract class User {
  bool login(String userName, String password);
  bool register(String userName, String password, String email);
}

abstract class Logger {
  void logError(String error);
}

abstract class Email {
  bool sendEmail(String emailContent);
}
