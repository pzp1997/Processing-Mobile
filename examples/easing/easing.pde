float x, y;
final float EASING = 0.05;
final float DIAM = 60;
float pageX, pageY;

void setup() {
  size(displayWidth, displayHeight);
  fill(#ffffff);
  noStroke();
}

void draw() {
  pageX = touch ? touchX : mouseX;
  pageY = touch ? touchY : mouseY;

  background(#444444);
  ellipse(x, y, DIAM, DIAM);
  x += (pageX - x) * EASING;
  y += (pageY - y) * EASING;
}
