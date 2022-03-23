import 'DartInterface.dart';
import 'SuperClass.dart';

class Alien extends Predators implements Human{
  var name;
  var universe;

  //Three Types Of Constructor
  //Default Constructor or no-arg Constructor     Alien();
  // Parameter Constructor                        Alien(value);
  // Named Constructor              Alien.secondaryConstructor(var name)
  Alien(var name,var uni):super(uni){
    this.name=name;
    this.universe=uni;
    super.names="KTR";
  }

  void showData(){
    print(name+"  "+universe);
    super.showSuper();
  }

  Alien.secondaryConstructor(var name):super(name){
    print("name is :$name");
  }
  static staticMethod(){
    print("the static method");
  }
  void set alien_name(var names){
    this.name=names;
  }
  String get alien_name{
    return name;
}

  @override
  void dance() {
 print("dance");
  }

  @override
  void humanVision() {
    print("humanVision");
  }

}