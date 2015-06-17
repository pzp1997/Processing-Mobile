var canvasElem;
var displayWidth, displayHeight;
var touchX, touchY, ptouchX, ptouchY, touches, touchSupport;
var tiltX, tiltY, tiltZ, ptiltX, ptiltY, ptiltZ, tiltSupport;
var ambientLight, ambientLightSupport;
var proximity, proximityMax, proximityMin, proximityNear, proximitySupport;

// Get object with access to Processing vars and <canvas> element
canvasElem = document.getElementById("sketch");

// Defines some default Processing variables in JavaScript
displayWidth = window.innerWidth;
displayHeight = window.innerHeight;

// Exposes TouchEvents via touchX, touchY and touches
touchX = 0; // float of the x coordinate of last touch
touchY = 0; // float of the y coordinate of last touch
touches = []; // list of touch objects with attributes x, y, and id
touchSupport = false; // boolean value stating whether or not a touch event has occured. useful for checking if device supports touch

var touchHandler = function(event) {
  event.preventDefault(); // overrides default browser behavior (i.e. scrolling and zooming)

  touches = [];
  for (var i = 0; i < event.touches.length; i++) {
    touch = event.touches[i];
    touches.push({
      id: touch.identifier,
      x: touch.pageX,
      y: touch.pageY
    });
  }
};

canvasElem.addEventListener("touchstart", function(event) {
  touchHandler(event);
  ptouchX = touchX;
  ptouchY = touchY;
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
  touchSupport = true;
}, false);

canvasElem.addEventListener("touchmove", function(event) {
  touchHandler(event);
  ptouchX = touchX;
  ptouchY = touchY;
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
}, false);

canvasElem.addEventListener("touchend", touchHandler, false);
canvasElem.addEventListener("touchcancel", touchHandler, false);

// Exposes DeviceOrientationEvents via tiltX, tiltY, and tiltZ
tiltX = 0;
tiltY = 0;
tiltZ = 0;
ptiltX = 0;
ptiltY = 0;
ptiltZ = 0;
tiltSupport = false;

window.addEventListener("deviceorientation", function(event) {
  ptiltX = tiltX;
  ptiltY = tiltY;
  ptiltZ = tiltZ;
  tiltX = event.beta; // default value from -180 to 180;
  tiltY = event.gamma; // default value from -90 to 90;
  tiltZ = event.alpha; // default value from 0 to 360;
  tiltSupport = true;
}, false);

// Exposes LightEvents (ambient light sensor) via ambientLight
ambientLight = 0; // unit is lux
ambientLightSupport = false;

window.addEventListener("devicelight", function(event) {
  ambientLight = event.value;
  ambientLightSupport = true;
}, false);

// Exposes ProximityEvents via proximity, proximityNear
proximity = 0;
proximityMax = 0;
proximityMin = 0;
proximityNear = false;
proximitySupport = false;

window.addEventListener("deviceproximity", function(event) {
  proximity = event.value;
  proximityMax = event.max;
  proximityMin = event.min;
  proximitySupport = true;
}, false);

window.addEventListener("userproximity", function(event) {
  proximityNear = event.near;
  proximitySupport = true;
}, false);
