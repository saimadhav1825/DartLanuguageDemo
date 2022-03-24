

import 'Alien.dart';
import 'CollectionExample.dart';
import 'DartControlFlowStatement.dart';
import 'DartFunction.dart';
import 'ExceptionClasses.dart';
import 'enumdart.dart';

void main() {
  print("Hello world");
  callingDartControlFlowStatement();

  callingFunction();
  callingObjectOrientation();
  callingException();
 // dataTypes();
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

  //List are two types
  //Fixed Length List -> var list=new List(10);
  // Growable List   -> var list=new List();

  //Dart Set
  //var setName = <type>{};
  // Or
  // Set<type> setname = {};

  var sets=<String>{"sai","siva","sujith"};
  sets.forEach((element) {
    print(element);
  });

  Set<int> setInt={1,2,3,4};
  setInt.forEach((element) {print(element);});


  //Dart MAP
  //Dart Map can be defined in two methods.
  //
  // Using Map Literal-->var map = [1, 2, 3];
  // Using Map Constructor--->var student = new Map();
  var map = [1, 2, 3];
  print(map);

  var maps=new Map();
   maps["1"]='sai';
   maps.forEach((key, value) {print(key+" " +value);});

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
  //final const_name;
  // or
  // final data_type const_name


  final int finals = 20;
  final rersverd=10;
  print(finals);
  print(rersverd);


  //we cannot use 'var' for const keyword
  // and also we can declare or not declare data type is not compulsorily for 'const' after
  //The const variable will be initialized at compile-time.
  //It cannot be assigned to any function or any class constructor.
  //const const_name;
  //  or
  //  const data_type const_name
  const consts = 10;
  const int how=10;
  print(consts);
  print(how);
  Enumers.values.forEach((v) => print('value: $v, index: ${v.index}'));
}



String returnIt() {
  return "sai";
}

void callingDartControlFlowStatement(){
  ifElse();
  ifElseIf();
  switchCase();
  forLoop();
  forInLoop();
  whileLoop();
  doWhile();
}

void callingFunction(){
  functionHow();
  anonymousFunction();
}

void callingObjectOrientation(){

  Alien alien=Alien("KCR", "Dard World");
  print(alien.alien_name);
  Alien.secondaryConstructor("Dard World");
  alien.showData();
  Alien.staticMethod();
}
void callingException(){
  ExceptionClass().mainException();

  ExceptionClass().typeDefMethod(10, 20, Sum);
  ExceptionClass().typeDefMethod(10, 20, Sub);

  //Collection
  CollectionExample().callQueue();
  CollectionExample().callHashMap();
}

