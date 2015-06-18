var touchColors = {};
final float DIAM;

void setup() {
  size(displayWidth, displayHeight);
  noStroke();

  DIAM = (width < height) ? width/3 : height/3;
}

void draw() {
  background(255);
  for (int i = 0; i < touches.length; i++) {
    var touch = touches[i];
    if (!touchColors[touch.id]) {
      touchColors[touch.id] = color(random(255), random(255), random(255), 127);
    }
    fill(touchColors[touch.id]);
    ellipse(touches[i].x, touches[i].y, DIAM, DIAM);
  }

  // Garbage collector
  if (touches.length == 0) {
    touchColors = {};
  }
}
