import 'dart:collection';

class CollectionExample{

  void callQueue(){
    //Duplicate Allowed
    Queue a=Queue();
    a.add(1);
    a.addAll([1,2,3,4]);
    Iterator iterator=a.iterator;
    while(iterator.moveNext()){
      print(iterator.current);
    }
  }

  void callHashMap(){
    HashMap map=HashMap();
    map[1]="sai";
    map[2]="siva";
    map[3]="sujith";
    map[4]="prakash";
    map.forEach((key, value) {print("key :$key The Value :$value");});
  }
}