abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount baht by Credit Card');
  }
}

class PromptPay implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount baht by PromptPay');
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount baht by Cash on Delivery');
  }
}

void main() {
  List<PaymentMethod> methods = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery(),
  ];

  for (var m in methods) {
    m.pay(678);
  }
}
//เลือกใช้ implements เพราะ PaymentMethod เป็นแค่ตัวกำหนดว่าทุกคลาสต้องมีเมธอด pay() 
//ส่วนวิธีการจ่ายเงินของ CreditCard, PromptPay และ CashOnDelivery ไม่เหมือนกัน จึงให้แต่ละคลาสเขียนการทำงานของตัวเอง