void game () {
  
  theme.play();

  // visuals
  background(purple);
  
  // lives and score text
  text("Score: " + score, width/2, 100);
  text("Lives: " + lives, width/2, 150);
  
  // pause button
  pausebutton(100, 50, 100, 100);
  
  // back button
  tactileback(800, 50, 100, 100);
  
    if (cob == true) {
    pokemonswitch(cobalion, tx, ty, d);
    zac = false;
    elec = false;
  } else if (zac == true) {
    pokemonswitch(zacian, tx, ty, d);
    cob = false;
    elec = false;
  } else if (elec == true) {
    pokemonswitch(electrik, tx, ty, d);
    cob = false;
    zac = false;
  }
   
    // moving
    tx = tx + vx;
    ty = ty + vy;
    
    // bouncing
    if (tx < 0  || tx+d > 1000) {
      vx = vx *-1;
    }
    if (ty < 0  || ty+d > 800) {
      vy = vy *-1;
    }
  
  
}
