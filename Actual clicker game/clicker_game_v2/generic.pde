void tactilestart(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    fill(lava);
    stroke(5);
    strokeWeight(3);
    circle(x, y, r*2);
    fill(purple);
    textFont(DemiBold);
    text("START", 300, 540);
    textSize(30);
  } else {
    fill(lava);
    stroke(lava);
    strokeWeight(0);
    circle(x, y, r*2);
    fill(purple);
    textFont(DemiBold);
    text("START", 300, 540);
    textSize(30);
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
    text("OPTIONS", 700, 540);
  } else {
    fill(lava);
    stroke(lava);
    strokeWeight(0);
    circle(x, y, r*2);
    fill(purple);
    textSize(20);
    textFont(DemiBold);
    text("OPTIONS", 700, 540);
  }
}

void tactilepokemon (int x, int y, int w, int h, PImage i) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(lava);
    stroke(purple);
    strokeWeight(3);
    rect(x, y, w, h);
    image(i, x+52, y+52, w-5, h-5);
  } else {
    fill(purple);
    stroke(0);
    strokeWeight(0);
    rect(x, y, w, h);
    image(i, x+52, y+52, w-5, h-5);
  }
}

void mode (int x, int y, int w, int h, boolean bol) {
  if (bol == true) {
  
  }
  
}
