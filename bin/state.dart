import 'dart:async';

abstract class State extends Stream<String>{

	static const String PAUSE = "PAUSE";

	StreamController<String> _controller;
	String _name;
  String _nextState;
  
  State(this._name,[String nextState = null]): _nextState = nextState {
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
  
  void _onListen(){
	  print("Constructing");
    run();
  }
  
  void _onPause(){
	  print("Pause");
  }
  
  void _onResume(){
	  print("Resume");
	  run();
  }
  
  void _onCancel(){
	  print("Deconstructing");
  }
  
  run(){}
  
  String get name => _name;

	String get nextState => _nextState;
  
  set nextState(state) => _nextState=state;
  
  void addMessage(message){
    _controller.add(message);
  }

	void pauseStream(){
		_controller.add(PAUSE);
	}
  
  void closeStream(){
    _controller.close();
  }
  
  
}
