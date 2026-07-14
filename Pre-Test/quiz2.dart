enum CupSize {
  small,
  medium,
  large
}


abstract class Beverage {

  String name;

  static int totalCups = 0;


  Beverage(this.name) {
    totalCups++;
  }


  double price();


  void printLabel() {
    print("$name : ${price()} บาท");
  }

}



class Coffee extends Beverage {

  CupSize size;


  Coffee(String name, this.size) : super(name);


  @override
  double price() {

    int sizePrice = 0;


    switch(size) {

      case CupSize.small:
        sizePrice = 0;
        break;

      case CupSize.medium:
        sizePrice = 10;
        break;

      case CupSize.large:
        sizePrice = 20;
        break;

    }


    return 50.0 + sizePrice;

  }

}



class Tea extends Beverage {


  Tea(String name) : super(name);


  @override
  double price() {

    return 40;

  }

}



class Cashier {

  double _cash = 0;


  double get cash {

    return _cash;

  }


  void sell(Beverage b) {

    _cash += b.price();

    b.printLabel();

  }

}



void main() {


  List<Beverage> drinks = [

    Coffee("Latte", CupSize.medium),

    Coffee("Americano", CupSize.large),

    Tea("Thai Tea")

  ];


  Cashier cashier = Cashier();


  for (Beverage drink in drinks) {

    cashier.sell(drink);

  }


  print("----------------");

  print("Total money: ${cashier.cash}");

  print("Total cups: ${Beverage.totalCups}");

}