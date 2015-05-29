void setup() {
  size(displayWidth, displayHeight);
  fill(0);
  textSize(40);
  textAlign(CENTER);
}

void draw() {
  background(255);
  text("Alpha: " + round(tiltZ) + "\nBeta: " + round(tiltX) + "\nGamma: " + round(tiltY), width/2, height/2);
}
