import 'dart:math';

void ifElse() {
  if (1 < 2) {
    print("object");
  } else {
    print("data");
  }
  switchCase(1);
}

void switchCase(int a) {
  switch (a) {
    case 1:
      print(a);
      break;
    case 2:
      print(a);
      break;
    case 3:
      print(a);
      break;
  }
  forLoop();
}

void forLoop(){
  var set=<String>{"sai","madhav","koli"};

  //forLoop
  for( String s in set){
    print(s);
  }
  //for each
  set.forEach((element) {print(element);});
  doWhile();
}

void doWhile(){
  int s=1;
  do{
    s++;
    print(s);
  }
  while(s<10);{

  }
  whileLoop();
}

void whileLoop(){
  int i=1;
  while(i<4){
    i++;
    print(i);
  }

  labels();
}

void labels(){
  breakIt:for(int i=0; i<10; i++){
    if(i>5){
      print(i);
      break breakIt;
    }
  }
}


