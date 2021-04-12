void mouseReleased () {
  if (mode == START) {
  startclicks();
  } else if (mode == INTRO) {
  introclicks();
  } else if (mode == GAME) {
  gameclicks();
  } else if (mode == OPTIONS) {
  optionclicks();
  } else if (mode == GAMEOVER) {
  gameoverclicks();
  } else if (mode == END) {
  newgameclicks();
  } else if (mode == PAUSE) {
  pauseclicks();
  }
  
}

void mouseDragged() {
controlslider();
}

  
