// Lucas Ortiz Molina
// DATE

// colors
color watermelon = #FF0092;
color lava = #FFCA1B;
color sea = #228DFF;
color purple = #BA01FF;
color lime = #B6FF00;

// pictures
PImage charizard;
PImage fireBall;
PImage electrik;
PImage zacian;
PImage cobalion;
PImage trainer;

// Mode variables ==============================
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

// fonts
PFont DemiBold;
PFont Bernard;

// fireball variables
float fx, fy, fs;

// start to game transition
 boolean fireball;

// mode transitions
 boolean options;
 boolean game; 


// end of variables ============================

void setup () {
  // setup visuals
  size(1000, 800);
  textAlign(CENTER, CENTER);

  // initialize mode
  mode = INTRO;

  // font
  DemiBold = loadFont("AvenirNextCondensed-DemiBold-48.vlw");
  Bernard = loadFont("CopperplateGothic-Bold-48.vlw");

  // initialize charizard
  charizard = loadImage("charizard.jpg");

  // initialize fireBall
  fireBall = loadImage("fireball.png");

  // initialize electrik
  electrik = loadImage("electrik.png");

  // initialize blissey
  zacian = loadImage("zacian.png");

  // initialize cobalion
  cobalion = loadImage("cobalion.png");

  // initialize trainer
  trainer = loadImage("trainer.jpg");

  // initialize fireball variables
  fx = 205;
  fy = 205;
  fs = 1;
  fireball = false;

  // initialize mode transitions
  options = false;
  game = false;
}

// end setup ===================================

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) { 
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: mode = " + mode);
  }
}

// end draw ====================================
