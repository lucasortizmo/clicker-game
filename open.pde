void openscreen() {
  // visuals
  background(lava);

  // charizard
  imageMode(CENTER);
  image(charizard, 500, 300);

  // circle button tactility
  tactilestart(150, 650, 100);

  // fire ball
  image(fireBall, fx, fy, fs, fs);

    if (fireball == true) {
    fx = fx + 1.4;
    fy = fy + 1.4;
    fs = fs + 4;
  }
  
  if (fs > 800) {
    mode = INTRO;
  }

}
