// Lucas Ortiz Molina
// DATE: April 3, 2021
// Block: 

// ---------------- GAME DESCRIPTION --------------------
// I added some features that were not in the original design (see *additonal* notes)

// OPEN: tactile botton to start and go to INTRO (*additional*)
// INTRO: tactile botton to OPTIONS
// OPTIONS: 3 characters to select (tactile bottons), one tactile to return to INTRO, slider
//     SLIDER: the indicator is in the slider
//     ADDSCORE: the score per click changes with the size of the target (smaller target -- more points) (*additional*)
//     SPEEDRATE: the speed changes with the size of the target (smaller target -- speeds up faster) (*additional*)
// GAME: clicker game with a PAUSE and BACK bottons. 
//     //BACK from game: returns to OPTION (*additional*)
// GAMEOVER: shows highest score and tactile botton to go back to INTRO
// END: if the score is greater than 25, the game stops with a "Congratulations" message and 
//      tactile botton to play again, back to OPEN. It doesn't retain the highest score, fresh start (*additional*)


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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
final int START = 1;
final int INTRO = 2;
final int OPTIONS = 3;
final int GAME = 4;
final int PAUSE = 5;
final int GAMEOVER = 7;
final int END = 6;


// target variables
float tx, ty, td, d;
float vx, vy; // target velocities
int score, lives;
int addscore, highscore;
float speedrate;

// slider variables
float sliderX;

// fonts
PFont DemiBold;
PFont Bernard;

// fireball variables
float fx, fy, fs;

// start to game transition
 boolean fireball;
 
 // target boolean
 boolean elec;
 boolean zac;
 boolean cob;
 
 // sound variables
 Minim minim;
 AudioPlayer theme, coin, bump, gameover;

// end of variables ============================

void setup () {
  // setup visuals
  size(1000, 800);
  textAlign(CENTER, CENTER);

  // initialize mode
  mode = START;

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

  
  // initialize pokemon booleans
  elec = false;
  zac = false;
  cob = true;
  
  // initialize target variables
  tx = 452;
  ty = 352;
  d = 50;
  vx = random(-2, 2);
  vy = random(-2, 2);
  score = 0;
  addscore = 5;
  lives = 3;
  speedrate = 0.3;
  
  // initialize slider variables
  sliderX = 350;
  
  // initialize highscore
  highscore = 0;
  
  
  // minim ======================================
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin =  minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  }

// end setup ===================================

void draw () {
  if (mode == START) {
    openscreen();
  } else if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pausescreen();
  } else if (mode == GAMEOVER) { 
    gameover();
  } else if (mode == END) { 
    endscreen();
  }  else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: mode = " + mode);
  }
}

// end draw ====================================
