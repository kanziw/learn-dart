void main() {
  print("Hello World!");

  var name = "kanziw";

  String str = "str";
  int i = 1;

  var dynamicVar;
  dynamicVar = "str";
  dynamicVar = 1;

  dynamic dynamicVar2 = "str";
  dynamicVar2 = 2;

  if (dynamicVar2 is int) {
    print("int");
  } else if (dynamicVar2 is String) {
    print("String");
  }

  String? nullableStr = "str";
  nullableStr = null;
  if (nullableStr != null) {
    print(nullableStr.length);
  }
  nullableStr?.length;

  final String finalStr1 = "str";
  final finalStr2 = "str";

  late final String fromApi;
  // api
  fromApi = "str";

  const mustBeKnownStrBeforeCompile = "str";
}
