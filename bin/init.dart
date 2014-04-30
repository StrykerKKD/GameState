import 'state.dart';
import 'dart:async';

class Init extends State{
  Init(String name, [String nextState]):super(name, nextState);

  run(){
    print("Init:running");
    
    new Timer(new Duration(seconds:1),closeStream);
  }
}