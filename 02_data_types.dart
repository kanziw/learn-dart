void main() {
  String name = "kanziw";
  bool alive = true;

  // int extends num
  int age = 20;
  // double extends num
  double money = 100.0;

  num x = 12;
  x = 1.1;

  // var numbers = [1, 2, 3, 4];
  List<int> numbers = [
    1,
    2,
    3,
    4,
    if (alive) 5,
  ];
  if (alive) {
    numbers.add(6);
  }
  numbers.add(99);

  var greeting = "Hello everyone, my name is $name. I'm $age years old.";
  var greeting2 = 'Hello everyone, my name is $name. I\'m ${age + 2} years old.';

  var oldFriends = ['kanziw'];
  var newFriends = [
    'jimmy',
    'rease',
    for (var friend in oldFriends) " $friend",
  ];

  // Map<String, Object>
  var player = {
    'name': 'kanziw',
    'age': 20,
    'superpower': false,
  };

  // Set<int>
  var numSet = {1, 2, 3, 4};
}
