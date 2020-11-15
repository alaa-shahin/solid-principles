abstract class User{
  
  bool login(String username, String password);
  bool register(String username, String password, String email);
}

abstract class Logger{
  
  void logError(String error);
}

abstract class Email{
  
  bool sendEmail(String emailContent);
}
