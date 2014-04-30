import 'state.dart';
import 'dart:async';

class Play extends State{

	static bool runned = false;

	Play(String name, [String nextState]):super(name, nextState);

	run(){
		print("Play:running");
		if(runned){
			nextState=null;
			new Timer(new Duration(seconds:1),closeStream);
		}else{
			runned=true;
			new Timer(new Duration(seconds:1),pauseStream);
		}
	}
}
