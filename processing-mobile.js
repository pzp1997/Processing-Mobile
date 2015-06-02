// Get object with access to Processing vars and <canvas> element
var canvasElem = document.getElementById("sketch");

// Defines some default Processing variables in JavaScript
var displayWidth = window.innerWidth;
var displayHeight = window.innerHeight;

// Exposes TouchEvents to Processing via touchX, touchY and touches
var touchX = 0; // float of the x coordinate of last touch
var touchY = 0; // float of the y coordinate of last touch
var touches = []; // list of touch objects with attributes x, y, and id
var touch = false; // boolean value stating whether or not a touch event has occured. useful for checking if device supports touch

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
  touchHandler(event); // Pass the event to touchHandler to make touches array
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
  touch = true;
}, false);

canvasElem.addEventListener("touchmove", function(event) {
  touchHandler(event);
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
}, false);

canvasElem.addEventListener("touchend", function(event) {
  touchHandler(event);
}, false);

canvasElem.addEventListener("touchcancel", function(event) {
  touchHandler(event);
}, false);

// Exposes DeviceOrientationEvents to Processing via tiltX, tiltY, and tiltZ (values of 0-360)
var tiltX = 0;
var tiltY = 0;
var tiltZ = 0;
var tilt = false;

window.addEventListener("deviceorientation", function(event) {
  tiltX = event.beta; // default value from -180 to 180; normalize to 0 to 360
  tiltY = event.gamma; // default value from -90 to 90; normalize to 0 to 360
  tiltZ = event.alpha; // default value from 0 to 360; no normalization needed
  tilt = true;
}, false);