void main() {
  
}

abstract class ICashOrder{
  void processCashOrder(){}
}

abstract class IOnlineOrder{
  void processOnlineOrder(){}
}

abstract class ICreditOrder{
  void processCreditOrder(){}
}

abstract class IOrder implements ICashOrder, ICreditOrder, IOnlineOrder{
  void newMethod(){}
}

class CashOrder implements ICashOrder{
  void processCashOrder() {}
}

class OnlineOrder implements IOnlineOrder{
  void processOnlineOrder() {}
}

class CreditOrder implements ICreditOrder{
  void processCreditOrder() {}
}
class Order implements IOrder{
  void processCashOrder() {
    // Write your code here
  }
  void processCreditOrder() {
    // Write your code here
  }
  void processOnlineOrder() {
    // Write your code here
  }
  void newMethod() {
    // Write your code here
  }
}
