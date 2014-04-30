GameState
=========

Game state machine in Dart.
I tried to make it look like the Phaser state machine.
State Machine Depends on the Dart's Stream class and so it's event driven.

New test case has 3 state: Init, Menu and Play.
Each state has 1 sec delay before switching.
    Run order: 1: Init
               2: Menu
               3: Play
               4: Menu
               5: Play
