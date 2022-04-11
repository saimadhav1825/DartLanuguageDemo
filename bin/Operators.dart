import 'dart:io';

void arithmeticOperators(){
  int a = 2;
  int b = 3;

  // Adding a and b
  var c = a + b;
  print("Sum of a and b is $c");

  // Subtracting a and b
  var d = a - b;
  print("The difference between a and b is $d");

  // Using unary minus
  var e = -d;
  print("The negation of difference between a and b is $e");

  // Multiplication of a and b
  var f = a * b;
  print("The product of a and b is $f");

  // Division of a and b
  var g = b / a;
  print("The quotient of a and b is $g");

  // Using ~/ to divide a and b
  var h = b ~/ a;
  print("The quotient of a and b is $h");

  // Remainder of a and b
  var i = b % a;
  print("The remainder of a and b is $i");

  relationOperators();
}

void relationOperators(){
  int a = 2;
  int b = 3;

  // Greater between a and b
  var c = a > b;
  print("a is greater than b is $c");

  // Smaller between a and b
  var d = a < b;
  print("a is smaller than b is $d");

  // Greater than or equal to between a and b
  var e = a >= b;
  print("a is greater than b is $e");

  // Less than or equal to between a and b
  var f = a <= b;
  print("a is smaller than b is $f");

  // Equality between a and b
  var g = b == a;
  print("a and b are equal is $g");

  // Unequality between a and b
  var h = b != a;
  print("a and b are not equal is $h");

  typeTestOperators();
}

void typeTestOperators(){
    var s=10;
    print(s is int);
    print(s is! String);

    conditionalOperators();

}

void conditionalOperators(){
  var s=10;
  print(s);

  var k;
  var z=k??"null";
  print(z);
  cascadeOperator();
}

void cascadeOperator(){
  var s=10;
  print(s..isEven);
  inputOutPutType();

}

void inputOutPutType(){
  var a=stdin.readLineSync();
  var  b=stdin.readLineSync();
  print(a!+b!);
  stdout.write(a+b);
}