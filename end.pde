void endscreen () {
  background(53, 119, 104);
  
  // reset variables
  fs = 1;
  fireball = false;
  fx = 205;
  fy = 205;
  
  vx = random(-2, 2);
  vy = random(-2, 2);
  score = 0;
  lives = 3;
  
  // congratulations over text
  fill(lava);
  textSize(100);
  text("CONGRATULATIONS!!", 500, 300);
  textSize(50);
  text("YOU HAVE REACHED THE TOP SCORE", 500, 450);
  
  // play again button
  playagaintactile();
 
  theme.pause();
  
  // keep highscore
   if (score > highscore) {
   highscore = score;
   }
}
