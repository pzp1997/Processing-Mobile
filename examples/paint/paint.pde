void setup() {
  size(displayWidth, displayHeight);
  background(255);
  strokeWeight(5);
}

void draw() {
  if (touchSupport) {
    line(touchX, touchY, ptouchX, ptouchY);
  } else {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
