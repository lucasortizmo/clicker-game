void options () {
  
  // visuals
  background(lava);
  
  // background
  imageMode(CENTER);
  image(trainer, 500, 400, 995, 995);
  
  // electrik
  tactilepokemon(200, 500, 105, 105, electrik);
  
  // zacian
  tactilepokemon(500, 500, 105, 105, zacian);
  
  // cobalion
  tactilepokemon(800, 500, 105, 105, cobalion);
  
  // title text
  textMode(CENTER);
  fill(lava);
  text("CHOOSE YOUR CHARACTER", 500, 200);
  textFont(Bernard);
}
