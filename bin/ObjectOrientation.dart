class Alien{
  late String name;
  late int age;

  //Three Type Of Constructors
  //1.Default Constructor
  //2.Parameterized Constructor
  //3.Named Constructor

  //Default
  // Alien(){
  //   print("Default Constructor");
  // }

  //Parameterized Constructor
  // Alien(int age){
  //   this.age=age;
  //   print("Parameterized Constructor$age");
  // }

  //Named Constructor
  Alien.constructor1(){
    print("Named Constructor");
  }

  void display(){
    print(name);
  }
}

void objectOrientation(){
  Alien alien=Alien.constructor1();
  alien.name='root';
  alien.display();

   //Static
  SuperParent.b=10;
  SuperParent.showB();
  //Super Keyword
  SubChild subChild=new SubChild(100);
  subChild.display();
  subChild.mixit();

  //callable class
  print(CallableClass().call(1000, 20));
  CallableClass().checkIt();

}

class SuperParent extends AbstractClasses{
  /*SuperParent(){
    print("SuperParent");
  }*/
  late var a;
  static late var b;

  SuperParent(int a){
    this.a=a;
    print(a+b);
  }
  //class method
  static void showB(){
    print(b);
  }

  //instance method
  void display(){
    print("instance method : SuperParent");
  }

  @override
  void makeFree() {
    // TODO: implement makeFree
  }

  @override
  void makeUse() {
    // TODO: implement makeUse
  }
}
//Inheritance using extends Keyword
class SubChild extends SuperParent with temp{
  SubChild(a):super(a){
    print("SubChild");
  }
  //instance method
  @override
  void display(){
    print("instance method SubChild");
  }

  @override
  void mixit() {
    // TODO: implement mixit
    super.mixit();
  }
}
//abstract
abstract class AbstractClasses{

   void makeUse();
   void makeFree();
}
//callable class
class CallableClass implements InterfaceClass {

  int call(var a,var b)=>a+b;

  @override
  void checkIt() {
    // TODO: implement checkIt
    print("override method");
  }
}

//with
mixin temp{
  void mixit(){
    print("with mix");
  }
}

class InterfaceClass{
  void checkIt(){
    print("sample");
  }
}
