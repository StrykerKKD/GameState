import 'state.dart';
import 'dart:async';

class Menu extends State{

	static bool runned = false;

  Menu(String name, [String nextState]):super(name, nextState);
  
  run(){
      print("Menu:running");
      if(runned){
	      new Timer(new Duration(seconds:1),closeStream);
      }else{
	      runned=true;
	      new Timer(new Duration(seconds:1),pauseStream);
      }
  }
}