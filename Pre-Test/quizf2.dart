enum Zone {
  forest,
  sky
}
abstract class Animal {
  String name;
  static int population = 0;
  Animal(this.name) {
    population++;
  }
  // เมธอดนามธรรม
  void makeSound();
  // เมธอดปกติ
  void introduce() {
    print("I am $name");
    makeSound();
  }
}
class Lion extends Animal {
  Zone zone;
  Lion(String name, this.zone) : super(name);
  @override
  void makeSound() {
    print("Roar!");
  }
}
class Bird extends Animal {
  Zone zone;
  Bird(String name, this.zone) : super(name);
  @override
  void makeSound() {
    print("Tweet!");
  }
}
class Cage {
  int _capacity = 0;
  int get capacity {
    return _capacity;
  }
  set capacity(int value) {
    if(value >= 0) {
      _capacity = value;
    } else {
      print("Capacity cannot be negative");

    }
  }
}

void main() {
  List<Animal> animals = [
    Lion("Simba", Zone.forest),
    Bird("Eagle", Zone.sky)
  ];
  for(var animal in animals) {
    animal.introduce();
    switch(animal is Lion ? Zone.forest : Zone.sky) {
      case Zone.forest:
        print("Lives in forest");
        break;
      case Zone.sky:
        print("Lives in sky");
        break;
    }
    print("----------------");
  }
  Cage cage = Cage();
  cage.capacity = 10;
  print("Cage capacity: ${cage.capacity}");
  print("Total animals: ${Animal.population}");
}