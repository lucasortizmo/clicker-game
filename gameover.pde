void gameover () {
  background(255, 0, 0);

// fire ball
  imageMode(CENTER);
  image(fireBall, 500, 400, 700, 700);
  
  // game over text
  fill(sea);
  textSize(100);
  text("GAME OVER", 500, 300);
  
  // play again button
  tryagaintactile();
  
    // keep highscore
   if (score > highscore) {
   highscore = score;
   }
  
  theme.pause();
  
  text("High Score: " + highscore, width/2, 100);
  
}
