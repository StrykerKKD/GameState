import 'state.dart';
import 'dart:async';

class Menu extends State{
  
  Menu([String nextState]):super(nextState);
  
  create(){
      print("Menu:Creating");
      new Timer(new Duration(seconds:1),closeStream);
  }
}