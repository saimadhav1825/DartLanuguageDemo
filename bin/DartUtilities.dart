/*apiTask() async{
   print("Start");
   await delayPrint(2, "going").then((value) {
     print(value);
   });
   print("end");
}

Future delayPrint(int time,String message){
   final duration=Duration(seconds: time);
  return Future.delayed(duration).then((value) => message);
}*/

//async await
Future delayedPrint(int seconds, String msg) {
   final duration = Duration(milliseconds: seconds);
   return Future.delayed(duration).then((value) => msg);
}

void mains() async {
   print('Life');
   await delayedPrint(2, "Is").then((status){
      print(status);
   });
   print('Good');
}


//Generators in Dart
//Synchronous Generator: Returns an Iterable object.
// Asynchronous Generator: Returns a Stream object.

// sync* functions return an iterable,Synchronous Generator:
Iterable firstGenerator(int a) sync*{
   int number=a;
   while(number>=0){
      if(number%2==0){
         yield number;
      }
      number--;
   }
}

// async* function(s) return an stream,Asynchronous Generator:
Stream geeksForGeeks(int number) async* {
   int geek = 0;

   // Checking for every
   // geek less than number
   while (geek <= number) yield geek++;
   // Incrementing geek
   // after printing it
}

enum WeekDays{
   monday,tuesday,wednesday,thursday,friday,saturday,sunday
}