float x, y;
final float EASING = 0.05;
final float DIAM;
float pageX, pageY;

void setup() {
  size(displayWidth, displayHeight);
  fill(255);
  noStroke();

  DIAM = (width < height) ? width/8 : height/8;
}

void draw() {
  pageX = touchSupport ? touchX : mouseX;
  pageY = touchSupport ? touchY : mouseY;

  background(0, 170);
  ellipse(x, y, DIAM, DIAM);
  x += (pageX - x) * EASING;
  y += (pageY - y) * EASING;
}
