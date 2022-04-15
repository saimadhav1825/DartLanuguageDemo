import 'dart:async';
import 'dart:io';

import 'dart:isolate';

void tryCatchOnFinally(){
  try {
    var a = 10 ~/ 0;
    print(a);
  }on FormatException {
    print("FormatException");
  }
  catch(e){
    print(e);
  }finally{
    print("enter correct value");
  }
  fallThroughCondition(1);
}

void fallThroughCondition(var a){
  switch(a){
    case 1:{
      print(a);
    }continue next;
    next :case 2:
    case 3:{
      print(a);
      break;
    }
    case 4:{
      print(a);
      break;
    }
    case 5:{
      print(a);
      break;
    }
  }
  //isolateInsteadOfThread();
  typedefCall();
}

late Isolate geek;

void start_geek_process() async {

  // port for isolate to receive messages.
  ReceivePort geekReceive= ReceivePort();

  // Starting an isolate
  geek = await Isolate.spawn(gfg, geekReceive.sendPort);
}

void gfg(SendPort sendPort) {
  int counter = 0;

  // Printing Output message after every 2 sec.
  Timer.periodic(new Duration(seconds: 2), (Timer t) {
    // Increasing the counter
    counter++;

    //Printing the output message
    stdout.writeln('Welcome to GeeksForGeeks $counter');
  });
}

void stop_geek_process() {

  // Checking the isolate with null
  stdout.writeln('--------------Stopping Geek Isolate--------------');

  // Killing the isolate
  geek.kill(priority: Isolate.immediate);
}

// Main Function
void isolateInsteadOfThread() async {
  stdout.writeln('--------------Starting Geek Isolate--------------');

  // Starting the isolate with start_geek_process
  start_geek_process();
  stdout.writeln('Press enter key to quit');

  // Whenever enter is hit the program is stopped
  await stdin.first;

  // Calling the stop_geek_process
  stop_geek_process();

  // Printing the goodbye message
  stdout.writeln('GoodBye Geek!');

  // Exiting the program.
  exit(0);
}

//TypeDef Is Like Alias
typedef MainMethodTOCall(int a,int b);

firstMethod(int a,int b){
  print(a+b);
}

secondMethod(int a,int b){
  print(a+b);
}

void typedefCall(){
  MainMethodTOCall mainMethodTOCall=firstMethod;
  mainMethodTOCall(10,20);

  mainMethodTOCall=secondMethod;
  mainMethodTOCall(100,200);
}
