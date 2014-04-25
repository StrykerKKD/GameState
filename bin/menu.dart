import 'state.dart';

class Menu extends State{
  
  Menu([String nextState]):super(nextState);
  
  create(){
      addMessage("Menu:Creating");
      closeStream();
  }
}