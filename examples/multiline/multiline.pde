void setup() {
  size(displayWidth, displayHeight);
}

void draw() {
  background(255);
  for (int i = 0; i < touches.length; i++) {
    for (int j = i+1; j < touches.length; j++) {
      line(touches[i].x, touches[i].y, touches[j].x, touches[j].y);
    }
  }
}
