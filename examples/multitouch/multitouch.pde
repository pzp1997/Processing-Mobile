void setup() {
  size(displayWidth, displayHeight);
  fill(255);
  noStroke();
  textSize(40);
  textAlign(CENTER);
}

void draw() {
  background(60);
  if (touch) {
    for (int i = 0; i < touches.length; i++) {
      ellipse(touches[i].x, touches[i].y, 100, 100);
    }
  }
}
