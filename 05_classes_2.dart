abstract class Human {
  void walk();
}

enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hello, my name is $name.");
  }

  void walk() {
    print("I'm walking.");
  }
}

void main() {
  var jimmy = Player(name: 'jimmy', xp: XPLevel.beginner, team: Team.red)
    ..name = 'jung'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}
