void mouseReleased () {
  if (dist(300, 550, mouseX, mouseY) < 100) {
    fireball = true;
  }
  if (dist(700, 550, mouseX, mouseY) < 100) {
    options = true;
  }
}
