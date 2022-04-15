

import 'AdvancedConcepts.dart';
import 'ControlFlow.dart';
import 'DartUtilities.dart';
import 'Functions.dart';
import 'ObjectOrientation.dart';
import 'Operators.dart';

void main(){


  //Advanced Concepts
  tryCatchOnFinally();
  //AsyncTask
  mains();

  //Generators
  firstGenerator(10).forEach(print);
  geeksForGeeks(10).forEach(print);

  //enum
  for(WeekDays weekDays in WeekDays.values){
    print(weekDays.name);
  }

  //ObjectOrientation
  objectOrientation();

  //functions
  var so=add(10, 20);
  print(so);

  //condition flow
  ifElse();
  //operators
  arithmeticOperators();
  //variables
  variablesLearn();

}

void variablesLearn(){
  /*Integer
2. Double
3. String
4. Booleans
5. Lists
6. Maps*/

  int inta=10;
  bool boolb=true;
  double doubles=3.14;
  String string="sai";
  List<int> a=[12,3,4];
  Map map=Map();
  map[null]="sai";
  map.remove(1);
  map[2]="madhav";
  map.forEach((key, value) {print("Key :$key+Value $value");});
  print(inta);
  print(boolb);
  print(doubles);
  print(string);
  print(a);
  a.forEach((element) {print(element);});

  //dynamic variable
  variableDynamic();
}

void variableDynamic(){
  dynamic s=10;
  print(s);
  s="sai";
  print(s);
}

void keywordFinalAndConst(){
  final int a=10;
  print(a);

  const String s='10';
  print(s);
  final valueCheck=constantReturn();
  print(valueCheck);
}

String constantReturn(){
  return "sai";
}