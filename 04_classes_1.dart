class Player {
  // late final String name;
  // late int xp;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  ///////////////////////////////
  
  // final String name;
  // int xp;

  // Player(this.name, this.xp);

  ///////////////////////////////

  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createBluePlayer({
    required this.name,
    required this.age,
  }) : team = 'blue', xp = 3000;

  Player.createRedPlayer(String name, int age)
    : this.name = name,
      this.age = age,
      this.team = 'red',
      xp = 3000;

  Player.fromJson(Map<String, dynamic> playerJson)
    : name = playerJson['name'],
      xp = playerJson['xp'],
      age = 20,
      team = playerJson['team'];

  void sayHello() {
    print("Hello, my name is $name.");
  }
}

void main() {
  // not new Player()
  // var player1 = Player('kanziw', 1500);
  // player1.sayHello();
  // var player2 = Player('jimmy', 2000);
  // player2.sayHello();

  var player3 = Player(
    name: 'kanziw',
    xp: 1500,
    team: 'red',
    age: 20,
  );

  var player4 = Player.createBluePlayer(name: 'jimmy', age: 19);
  var player5 = Player.createRedPlayer('rease', 18);

  var apiData = [
    {
      "name": "kanziw",
      "team": "red",
      "xp": 1500,
    },
    {
      "name": "jimmy",
      "team": "red",
      "xp": 1500,
    },
    {
      "name": "rease",
      "team": "red",
      "xp": 1500,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
