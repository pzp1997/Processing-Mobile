void setup() {
  size(displayWidth, displayHeight);
  fill(255);
  textSize(40);
  textAlign(CENTER);
}

void draw() {
  if (tilt) {
    tiltX = abs((tiltX < 180) ? tiltX : 360 - tiltX);
    tiltY = abs((tiltY < 180) ? tiltY : 360 - tiltY);
    tiltZ = abs((tiltZ < 180) ? tiltZ : 360 - tiltZ);

    background(tiltX, tiltY, tiltZ);
    text("tiltX: " + tiltX + "\ntiltY: " + tiltY + "\ntiltZ: " + tiltZ, width/2, height/2);
  } else {
    background(60);
    text("Tilt not supported on this device.", width/2, height/2);
  }
}
