void main() {
  print("Hello world");
  dataTypes();
}

void dataTypes() {
  //Data Types
  // Number
  // Strings
  // Boolean
  // Lists
  // Maps
  // Runes
  // Symbols

  //Dart Number
  //int and double
  int a = 10;
  print(a);
  double b = 20.1;
  print(b);

  //Dart String
  String s = "Sai";
  print(s);

  //Dart Boolean
  bool bo = true;
  print(bo);

  //Dart MAP
  var map = [1, 2, 3];
  print(map);

  //Runes
  var heart_symbol = '\u2665';
  var laugh_symbol = '\u{1f600}';
  print(heart_symbol);
  print(laugh_symbol);

  //var,final,constant
  var v = 10;
  print(v);
  //we cannot use 'var' for final keyword
  // and also we can declare or not declare data type is not compulsorily for 'final' after
  //final is initialized at the runtime.
  final int finals = 20;
  print(finals);
  //we cannot use 'var' for const keyword
  // and also we can declare or not declare data type is not compulsorily for 'const' after
  //The const variable will be initialized at compile-time.
  //It cannot be assigned to any function or any class constructor.
  const consts = 10;
  print(consts);
}

String returnIt() {
  return "sai";
}
