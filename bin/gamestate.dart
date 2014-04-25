import "statemanager.dart";
import 'init.dart';
import 'menu.dart';

void main() {
  StateManager manager = new StateManager();
  
  Init initizer = new Init("menu");
  Menu menu = new Menu();    
  //manager.addState("init",initizer);
  //manager.addState("menu",menu);
  manager.addStateMap({"init":initizer,"menu":menu});
  manager.initState("init");
}
