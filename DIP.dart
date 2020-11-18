void main() {
  Notification notification = Notification(WebMail());
  notification.sendMail(); 
}

class Notification {
  Message mailService;

  Notification(Message mailService) {
    this.mailService = mailService;
  }

  void sendMail() {mailService.send();}
}

abstract class Message {
  void send() {}
}
  
class Gmail implements Message {
  String address    = 'address';
  String from       = 'from mail';
  String toAddress  = 'toAddress';
  void send() {/* code */}
}

class HotMail implements Message {
  String address    = 'address';
  String from       = 'from mail';
  String toAddress  = 'toAddress';
  void send() {/* code */}
}

class WebMail implements Message {
  String address    = 'address';
  String from       = 'from mail';
  String toAddress  = 'toAddress';
  void send() {/* code */}
}
