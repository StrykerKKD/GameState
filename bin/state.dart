import 'dart:async';

abstract class State extends Stream<String> {
  
  StreamController _controller;
  String _nextState;
  
  State([String nextState = null]): _nextState = nextState {        
    _controller = new StreamController<String>(
    onListen: _onListen,
    onPause: _onPause,
    onResume: _onResume,
    onCancel: _onCancel);
  }
  
  StreamSubscription<String> listen(void onData(String line),
                                    { void onError(Error error),
                                      void onDone(),
                                      bool cancelOnError }) {
    return _controller.stream.listen(onData,
                                     onError: onError,
                                     onDone: onDone,
                                     cancelOnError: cancelOnError);
  }
  
  _onListen(){
    preload();
    create();
    update();
               
  }
  
  _onPause(){}
  
  _onResume(){}
  
  _onCancel(){}
  
  preload(){}
  
  create(){}
  
  update(){}
  
  String get nextState => _nextState;
  
  set nextState(state) => _nextState=state;
  
  void addMessage(message){
    _controller.add(message);
  }
  
  void closeStream(){
    _controller.close();
  }
  
  
}
