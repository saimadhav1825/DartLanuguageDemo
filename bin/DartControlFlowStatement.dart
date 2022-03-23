void ifElse(){
  var n=1;
  if(n<10){
    print(n);
  }
}

void ifElseIf(){
  var s=10;
  if(s<10){
    print(s);
  }else if(s>5){
    print(s);
    if(s<20){
      print(s);
    }else{
      print(s);
    }
  }
}

void switchCase(){
  var s=100;
  switch(s){
    case 1:
      print(s);
      break;
    case 2:
      print(s);
      break;
    case 10:
      print(s);
      break;
    default:
      print(s);
  }
}

void forLoop(){
  int i=1;
  for(i;i<=10;i++){
    print(i);
  }
}

void forInLoop(){
  var a= {1,2,3,4};
  for( var i in a){
    print(i);
  }
}

void  whileLoop(){
  int b=100;
  while(b>90){
    b--;
    print(b);
  }
}

void doWhile(){
  int z=1;
  do{
    print(z);
    z++;
  } while(z<5);{
    print(z);
  }
}