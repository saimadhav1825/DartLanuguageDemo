int add(int a,int b){
  var result=a+b;
  lambada();
  optionalParameters();
  myfunction();

  return result;
}
//Lambda function
void lambada()=>print("Lambda functon");


//Optional Parameters
void optionalParameters(){
  // 1.Optional Positional Parameter
  // 2.	Optional Named parameter
  // 3.	Optional parameter
  firstOne(10,10);
  secondOne(12,b: 10);
}

void firstOne(int a,[int b=1]){
  print(a+b);
}

void secondOne(int a,{int b=1,int c=10}){
print(a+b+c);
}

//function with no return type
myfunction(){
  print("no return type");

  collectionMethod();
}

//Common Collection Methods
void collectionMethod(){
  var lists=[1,2,3,4,5];
  print(lists.isEmpty);
  print(lists.isNotEmpty);

  bool isContain(int valu)=>valu==5;
  print(lists.any(isContain));
  print(!lists.every(isContain));

  //setter and getter
  Student student=new Student();
  student.set_name="sai";
  student.set_age=10;
  print(student.get_age);
  print(student.get_name);

}

class Student{
   late String name;
  late int age;

  set set_name(name){
    this.name=name;
  }

  String get get_name{
    return name;
  }

  set set_age(int age){
    this.age=age;
  }

  int get get_age{
    return age;
  }

}




