import 'state.dart';


class Init extends State{
  Init([String nextState]):super(nextState);
  
  preload(){
    addMessage("Init:Preloading");
  }
  create(){
    addMessage("Init:Creating");
  }
  update(){
    addMessage("Init:Updating");
    
    for(var i=0;i < 5;i++){
      addMessage("Processing");
    }
    closeStream();
  }
}