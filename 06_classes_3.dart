class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name.");
  }
}

mixin Strong {
  final double strenghtLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print("ruuuuuuuuuun!");
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { red, blue }

class Player extends Human with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(name: 'kanziw', team: Team.red);
  player.sayHello();
  player.runQuick();
}
