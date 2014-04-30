import 'statemanager.dart';
import 'init.dart';
import 'menu.dart';
import 'play.dart';

void main() {
  StateManager manager = new StateManager();

  manager.addStateMap({"init":new Init("init","menu"),
		                   "menu":new Menu("menu","play"),
                       "play":new Play("play","menu")});
  manager.initState("init");
}
