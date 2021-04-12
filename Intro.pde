void intro () {

// visuals
  background(sea);
  
  
// intro text
  fill(lava);
  textSize(70);
  text("YOUR GOAL: SCORE 25 POINTS!!", 500, 200);
  textSize(50);
  text("DO NOT MISS THE TARGET!!", 500, 300);
  
// reset variables
  fs = 1;
  fireball = false;
  fx = 205;
  fy = 205;
  
  vx = random(-2, 2);
  vy = random(-2, 2);
  score = 0;
  lives = 3;
  
// circle button tactility
  tactileplay(300, 550, 100);
  tactileoptions(700, 550, 100);

}
