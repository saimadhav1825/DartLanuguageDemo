class ExceptionClass{
  void mainException(){
    try{
      var x=1 ~/ 0;
      print(x);
    }on IntegerDivisionByZeroException catch(E){
      print(E);
    }
  }
  void typeDefMethod(int a,int b,AddSubOperation addSubOperation){
    addSubOperation(a,b);
  }

}

typedef AddSubOperation(int a,int b);

Sum(int a,int b){
  print("${a+b}");
}
Sub(int a,int b){
  print("${a-b}");
}