float x, y, px, py;

void setup() {
  size(displayWidth, displayHeight);
  background(255);
  noFill();
  stroke(0);
  strokeWeight(10);

  px = width/2;
  py = height/2;
}

void draw() {
  if (tiltSupport) {
    x = map(constrain(tiltY, -90, 90), -90, 90, 0, width);
    y = map(constrain(tiltX, -90, 90), -90, 90, 0, height);
    px = map(constrain(ptiltY, -90, 90), -90, 90, 0, width);
    py = map(constrain(ptiltX, -90, 90), -90, 90, 0, height);
  } else {
    x = mouseX;
    y = mouseY;
    px = pmouseX;
    py = pmouseY;
  }
  line(x, y, px, py);
}
