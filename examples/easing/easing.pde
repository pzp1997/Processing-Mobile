float x, y;
final float EASING = 0.05;
final float DIAM = 60;
float pageX, pageY;

void setup() {
  size(displayWidth, displayHeight);
  fill(255, 100);
  noStroke();
}

void draw() {
  pageX = touch ? touchX : mouseX;
  pageY = touch ? touchY : mouseY;

  background(60);
  ellipse(x, y, DIAM, DIAM);
  x += (pageX - x) * EASING;
  y += (pageY - y) * EASING;
}
