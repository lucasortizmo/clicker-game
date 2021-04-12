void tactilestart(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    fill(lava);
    stroke(5);
    strokeWeight(3);
    circle(x, y, r*2);
    fill(purple);
    textFont(DemiBold);
    text("START", x, y);
    textSize(30);
  } else {
    fill(lava);
    stroke(lava);
    strokeWeight(0);
    circle(x, y, r*2);
    fill(purple);
    textFont(DemiBold);
    text("START", x, y);
    textSize(30);
  }
}

void tactileplay(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    fill(lava);
    stroke(5);
    strokeWeight(3);
    circle(x, y, r*2);
    fill(purple);
    triangle(x-12, y-28,x-12, y+28, x+30, y);
  } else {
    fill(lava);
    stroke(lava);
    strokeWeight(0);
    circle(x, y, r*2);
    fill(purple);
    triangle(x-12, y-28,x-12, y+28, x+30, y);
  }
}

void tactileoptions(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    fill(lava);
    stroke(5);
    strokeWeight(3);
    circle(x, y, r*2);
    fill(purple);
    textSize(20);
    textFont(DemiBold);
    text("OPTIONS", x, y);
  } else {
    fill(lava);
    stroke(lava);
    strokeWeight(0);
    circle(x, y, r*2);
    fill(purple);
    textFont(DemiBold);
    textSize(20);
    textFont(DemiBold);
    text("OPTIONS", x, y);
  }
}

void tactilepokemon (int x, int y, int w, int h, PImage i) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(lava);
    stroke(purple);
    strokeWeight(3);
    rect(x, y, w, h);
    imageMode(CORNER);
    image(i,x,y,w,h);
  } else {
    fill(purple);
    stroke(0);
    strokeWeight(0);
    rect(x, y, w, h);
    imageMode(CORNER);
    image(i,x,y,w,h);
  }
}

void tactileback (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(lava);
    stroke(lava);
    strokeWeight(0);
    rect(x, y, w, h);
    fill(purple);
    textSize(20);
    text("BACK", x+50, y+50);
  } else {
    fill(sea);
    stroke(lava);
    strokeWeight(3);
    rect(x, y, w, h);
    fill(lava);
    textFont(Bernard);
    textSize(20);
    text("BACK", x+50, y+50);
  }
}

void pausebutton (int x, int y, int w, int h) {
if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(lava);
    stroke(5);
    strokeWeight(3);
    rect(x, y, w, h);
    fill(purple);
    triangle(x+35, y+25,x+35, y+75, x+70, y+50);
  } else {
    fill(sea);
    stroke(lava);
    strokeWeight(3);
    rect(x, y, w, h);
    fill(lava);
    rect(x+30, y+25, 12, 50);
    rect(x+55, y+25, 12, 50);
  }
}

void playagaintactile () {
  if (dist(mouseX, mouseY, 500, 650) < 100) {
  fill(lava);
  circle(500, 650, 200);
  fill(sea);
  textFont(DemiBold);
  textSize(35);
  text("Play Again", 500, 650);
  } else {
  fill(lime);
  circle(500, 650, 200);
  fill(sea);
  textFont(DemiBold);
  textSize(35);
  text("Play Again", 500, 650);
  }
}

void tryagaintactile () {
  if (dist(mouseX, mouseY, 500, 650) < 100) {
  fill(lava);
  circle(500, 650, 200);
  fill(sea);
  textFont(DemiBold);
  textSize(35);
  text("Try Again", 500, 650);
  } else {
  fill(lime);
  circle(500, 650, 200);
  fill(sea);
  textFont(DemiBold);
  textSize(35);
  text("Try Again", 500, 650);
  }
}

void pokemonswitch(PImage i, float x, float y, float dp) {
    fill(lava);
    stroke(purple);
    strokeWeight(3);
    rect(x, y, dp, dp);
    imageMode(CORNER);
    image(i, x, y, dp, dp);
}


void startclicks () {
if ((dist(150, 650, mouseX, mouseY) < 100)) {
    fireball = true;
  }
}

void introclicks () {
if ((dist(300, 550, mouseX, mouseY) < 100) ) {
    mode = GAME;
  } else if (dist(700, 550, mouseX, mouseY) < 100) {
    mode = OPTIONS;
  }
}

void gameclicks () {
  if (mouseX > 100 && mouseX < 200 && mouseY > 50 && mouseY < 150) {  //pause-play botton
  mode = PAUSE;
   }  else if (mouseX > 800 && mouseX < 900 && mouseY > 50 && mouseY < 150) {  //back botton
  mode = INTRO;
  // stop music
  theme.pause();
   } else if (mouseX > tx && mouseX < tx+d && mouseY > ty && mouseY < ty+d) { //target
  score = score + addscore;
  vx = vx * (1 + speedrate); //speed changes at different rates (depends on size)
  vy = vy * (1 + speedrate);
  speedrate = map(d, 50, 100, 0.3, 0.1); //speed changes at different rates (depends on size)
  coin.rewind();
  coin.play();
  if (score >= 25) {
  mode = END;
  }
  } else {  //miss target
  lives = lives - 1;
  bump.rewind();
  bump.play();
  if (lives == 0) { 
  mode = GAMEOVER;
  gameover.rewind();
  gameover.play();
  } 
  }
}
 
  
void optionclicks() {
if ((mouseX > 150 && mouseX < 250 && mouseY > 300 && mouseY < 405)) {
    elec = true;
    zac = false;
    cob = false;
  }
  if ((mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 405)) {
    zac = true;
    elec = false;
    cob = false;
  }
  if ((mouseX > 750 && mouseX < 850 && mouseY > 300 && mouseY < 405)) {
    cob = true;
    elec = false;
    zac = false;
  }
  
   if (mouseX > 800 && mouseX < 900 && mouseY > 50 && mouseY < 150) { //back to INTRO
    mode = INTRO;
    theme.pause(); // stop music
   
  } 
  controlslider();
  
}

void gameoverclicks () {
  if (dist(mouseX, mouseY, 500, 650) < 100) {
  mode = INTRO;
  }
}

void newgameclicks () {
  if (dist(mouseX, mouseY, 500, 650) < 100) {
  mode = START;
  }
}

void controlslider () {
if (mouseX > 350 && mouseX < 650 && mouseY > 570 && mouseY < 620) {
  sliderX = mouseX;
}
d = map(sliderX, 350, 650, 50, 100);
addscore = round(map(d, 50, 100, 5, 1));
}
