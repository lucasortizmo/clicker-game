void options () {
  
// visuals
  background(lava);
  
// background
  imageMode(CENTER);
  image(trainer, 500, 400, 995, 995);
 
  
// title text
  textMode(CENTER);
  fill(lava);
  textSize(50);
  text("CHOOSE YOUR CHARACTER", 500, 200);
  textFont(Bernard);
  
  
// electrik
  tactilepokemon(150, 300, 100, 100, electrik);
  
// zacian
  tactilepokemon(450, 300, 100, 100, zacian);
  
// cobalion
  tactilepokemon(750, 300, 100, 100, cobalion);

// back button to INTRO
  tactileback(800, 50, 100, 100);
  
  // slider
  fill(lava);
  stroke(lava);
  strokeWeight(5);
  line(350, 600, 650, 600);
  
// indicator
if (cob == true) {
    pokemonswitch(cobalion, sliderX-d/2, 600-d/2, d);
    zac = false;
    elec = false;
  } else if (zac == true) {
    pokemonswitch(zacian, sliderX-d/2, 600-d/2, d);
    cob = false;
    elec = false;
  } else if (elec == true) {
    pokemonswitch(electrik, sliderX-d/2, 600-d/2, d);
    cob = false;
    zac = false;
  } 
  
  fill(sea);
  rect(335, 680, 325, 40);
  fill(lava);
  text("Possible points per click: " + addscore, width/2, 700);
}
