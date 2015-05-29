int counter;

void setup() {
  size(displayWidth, displayHeight);
  textSize(80);
  textAlign(CENTER);
}

void draw() {
  background(counter*17);
  (counter < 8) ? fill(255) : fill(0);
  text(touchX, 60, 60);
  text(counter, width/2, height/2);
}

void mousePressed() {
  counter = (counter + 1) % 16;
}

void touchStart() {
  text("touchStart", width/2, height/2);
  counter = (counter + 1) % 16;
}
