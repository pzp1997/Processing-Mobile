float pageX, pageY, ppageX, ppageY;

void setup() {
  size(displayWidth, displayHeight);
  background(255);
  noFill();
  stroke(0);
  strokeWeight(10);

  ppageX = width/2;
  ppageY = height/2;
}

void draw() {
  pageX = tilt ? map(tiltX, 0, 360, 0, width) : mouseX;
  pageY = tilt ? map(tiltY, 0, 360, 0, height) : mouseY;

  line(pageX, pageY, ppageX, ppageY);

  ppageX = pageX;
  ppageY = pageY;
}
