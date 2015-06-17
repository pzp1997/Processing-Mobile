void setuo() {
  size(displayWidth, displayHeight);
  fill(255);
  textSize(40);
  textAlign(CENTER);
}

void draw() {
  if (proximitySupport) {
    background(map(proximity, proximityMin, proximityMax, 0, 255));
    text(proximity, width/2, height/2);
  } else {
    background(60);
    text("Proximity not supported on this device/browser.\nProximity Events only work in Firefox at the moment.", width/2, height/2);
  }
}
