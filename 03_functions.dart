String sayHello(String name) {
  return "Hello $name nice to meet you!";
}
String sayHello2(String name) => "Hello $name nice to meet you!";

num plus(num a, num b) => a + b;

String namedSayHello({
  String name = 'anon',
  int age = 99,
  required String country
}) {
  return "Hello $name, you are $age years old and from $country.";
}

String optionalPositionalSayHello(
  String name,
  int age,
  [String? country = 'korea']
) => "Hello $name, you are $age years old and from $country.";

// String capitalizeName(String? name) => name != null ? name.toUpperCase() : 'ANON';
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  return list.reversed.toList();
}

void main() {
  print(sayHello('kanziw'));
  print(sayHello2('kanziw'));

  print(namedSayHello(
    name: 'kanziw',
    country: 'korea',
  ));
  print(namedSayHello(
    country: 'korea',
  ));

  print(optionalPositionalSayHello('kanziw', 20));

  print(capitalizeName('kanziw'));
  print(capitalizeName(null));

  String? mightBeNull;
  mightBeNull ??= 'kanziw';
  print(mightBeNull);
}
