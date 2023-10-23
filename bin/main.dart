void main() {
  final dino = Animal(weight: 10000, name: "Птеродактиль");
  dino.out();
  final dog = Dog(weight: 10, breed: 'чихуахуа', name: "Дмитрий");
  final cat = Cat(weight: 10, name: "Дмитрий", type: KotKakoy.polosatiy);
  dog.out();
  cat.out();
}

class Animal {
  Animal({
    required this.weight,
    required this.name,
  });
  final double weight;
  final String name;

  void out() => print("Вес:$weight, Имя:$name");
}

class Dog extends Animal {
  final String breed;
  Dog({
    required super.weight,
    required this.breed,
    required super.name,
  });

  @override
  void out() => print("Вес:$weight, Имя:$name, Порода: $breed");
}

class Cat extends Animal {
  final KotKakoy type;
  Cat({
    required super.weight,
    required super.name,
    required this.type,
  });

  @override
  void out() => print("Вес:$weight, Имя:$name, Порода: ${_prepareEnum()}");

  String _prepareEnum() {
    late final label;
    switch (type) {
      case KotKakoy.polosatiy:
        label = "Полосатый";
      case KotKakoy.volosatiy:
        label = "Волосатый";
      case KotKakoy.lisiy:
        label = "Лысый";
    }
    return label;
  }
}

enum KotKakoy { polosatiy, volosatiy, lisiy }
