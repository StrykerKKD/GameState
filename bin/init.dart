import 'state.dart';
import 'dart:async';

class Init extends State{
  Init([String nextState]):super(nextState);
  
  preload(){
    print("Init:Preloading");
  }
  create(){
    print("Init:Creating");
  }
  update(){
    print("Init:Updating");
    
    new Timer(new Duration(seconds:1),closeStream);
  }
}