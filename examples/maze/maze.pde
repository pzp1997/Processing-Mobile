float x, y;
final float DIAM;

void setup() {
  size(displayWidth, displayHeight);
  fill(0);

  DIAM = (width < height) ? width/6 : height/6;
}

void draw() {
  if (tiltSupport) {
    x = map(constrain(tiltY, -90, 90), -90, 90, 0, width);
    y = map(constrain(tiltX, -90, 90), -90, 90, 0, height);
  }

  background(255);
  ellipse(x, y, DIAM, DIAM);
}

/*
class Wall {
  float x, y, wid, hgt;

  Wall(float x_, float y_, float wid_, float hgt_) {
    x = x_;
    y = y_;
    wid = wid_;
    hgt = hgt_;
  }

  void display() {
    rect(x, y, wid, hgt);
  }

  boolean touchedWall(float otherX, float otherY) {
  }
}
*/
