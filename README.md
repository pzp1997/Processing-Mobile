# Processing Mobile
### A library that adds features to [Processing.js](http://processingjs.org) to make it more mobile friendly.


## About
Have you ever written an awesome [Processing](https://processing.org/) program that you wish you could use on your phone? Or did you create a great game that would be me so much more fun with a touch screen?

**_Yes!_**

Were you frustrated by Processing or Processing.js's lack of support for mobile devices?

**_Yes!_**

Well then today is your lucky day! Processing Mobile makes it easy to add support for mobile devices to your Processing code.
  - In as little as five minutes, you can write your first Processing Mobile program.
  - With naturally named variables, Processing Mobile's syntax is so similar to Processing that you'll forget you are even using it.
  - Designed with beginners in mind, Processing Mobile has a very mild learning curve.

## Your First Processing Mobile Program
Let's make a simple painting app...

```
void setup() {
  size(displayWidth, displayHeight);
  background(255);
  strokeWeight(5);
}

void draw() {
  line(mouseX, mouseY, pmouseX, pmouseY);
}
```
Now, this works great on a computer, but if we were to try it on a mobile device, we would see that tapping does nothing. We're going to edit this program a little bit to prepare it for mobile.

Let's add an `if...else` statement to `draw()` so that we can control what happens when a device has a touchscreen and set up a fallback for when it doesn't have one. We'll leave the `if` blank for now, and in the `else`, we'll paste our old `draw()`

```
void draw() {
  if (touchSupport) {

  } else {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
```

Now let's fill in that `if` with the following line of code:

```
line(touchX, touchY, ptouchX, ptouchY);
```

Looks familiar, right? That's the same code that we used to draw our ellipse in the original version of our code, aside from changing `mouseX` and `mouseY` to `touchX` and `touchY`. All together, our code now looks like this:

```
void setup() {
  size(displayWidth, displayHeight);
  background(255);
  strokeWeight(5);
}

void draw() {
  if (touchSupport) {
    line(touchX, touchY, ptouchX, ptouchY);
  } else {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
```

And that's all folks. Congratulations on writing your first Processing Mobile program! But this code won't run in the Processing IDE (you'll probably get an error like `Cannot find anything named "touchSupport"`). So how do you run it, you ask? Continue to Using Processing Mobile to find out.

## Using Processing Mobile
### Short answer:
Just add `<script src="https://pzp1997.github.io/cdn/processing-mobile/1.0.1/processing-mobile.min.js"></script>` to the bottom of the `<body>` in your index.html!

### Long answer:
[**Video  Tutorial**](https://www.youtube.com/watch?v=vjK7U9gMKGI)<br> [![](http://img.youtube.com/vi/vjK7U9gMKGI/0.jpg)](https://www.youtube.com/watch?v=vjK7U9gMKGI)<br>

**Making the HTML file**
  1. Copy and paste the [HTML Template](https://gist.github.com/pzp1997/958e15fe7bf048de0b10) into your favorite text editor. (If you do not have a text editor, I strongly recommend [Atom](https://atom.io)).
  2. Replace `<!-- NAME OF YOUR PROCESSING SKETCH GOES HERE -->` with the name of your Processing sketch.
  3. Copy and paste your Processing sketch below the line `// YOUR PROCESSING CODE GOES HERE`.
  4. Save this file as `[name of your sketch].html`.

**Hosting the HTML file**
  1. Go to [Google Drive](https://drive.google.com).
  2. Click on the **New** button on the left.
  3. Click on **File Upload** from the dropdown menu and choose the file you saved in Step 4 of Making the HTML file.
  4. Wait for the upload to complete, then click on the **Share** link at the bottom right of the screen.
  5. Click **Advanced** in the bottom right corner of the sharing box.
  6. Click **Change...**.
  7. Choose **On - Public on the web** and click **Save**.
  8. Before closing the sharing box, copy the document ID from the URL in the field below "Link to share". To do this, copy the entire link and paste it into the address bar, then copy the string of uppercase and lowercase letters and numbers between slashes in the URL. For example: "https:<span></span>//drive.google.com/file/d/**0B5_nVTEmLd-cNzFfUi1YNlVFdm8**/view?usp=sharing".
  9. You can now access your sketch at `www.googledrive.com/host/[doc id]` where `[doc id]` is the document ID you copied in Step 8.

**Shortening the URL (Optional)**
  1. Go to [bitly.com](https://bitly.com)
  2. Paste the URL from Step 9 of Hosting the HTML file.
  3. Copy and share the shortened URL with your friends!

## Examples
  - [Easing](https://pzp1997.github.io/Processing-Mobile/examples/easing)
    - Circle follows your finger using touch events.
  - [MultiLine](http://pzp1997.github.io/Processing-Mobile/examples/multiline/)
    - Uses multitouch to draw lines between all of your fingers.
  - [Multitouch](https://pzp1997.github.io/Processing-Mobile/examples/multitouch)
    - Demonstration of how to track individual touches when using multitouch.
  - [Background Tilt](https://pzp1997.github.io/Processing-Mobile/examples/bg-tilt)
    - Uses tilt to set the background color.
  - [Etch A Sketch](http://pzp1997.github.io/Processing-Mobile/examples/etch-a-sketch/)
    - The classic toy controlled by tilt.
  - [Maze](http://pzp1997.github.io/Processing-Mobile/examples/maze/)
    - Beginnings of a maze game. Ball is positioned based on tilt.
  - [THE-SUN](https://pzp1997.github.io/Processing-Mobile/examples/sun)
    - Based off [eveka's code](https://github.com/eveka/the-sun).

## Documentation
### [Touch Events](https://developer.mozilla.org/en-US/docs/Web/API/Touch_events)
###### ``touchX``
type: `float`<br> value: `0` to `width`<br> x-coordinate of the last touch.

###### ``touchY``
type: `float`<br> value: `0` to `height`<br> y-coordinate of the last touch.

###### ``ptouchX``
type: `float`<br> value: `0` to `width`<br> x-coordinate of the touch prior to the last touch.

###### ``ptouchY``
type: `float`<br> value: `0` to `height`<br> y-coordinate of the touch prior to the last touch.

###### ``touches``
type: `array`<br> Each object in the array has the following properties:<br>
  - `x`<br>
    type: `float`<br>
    value: `0` to `width`<br>
    x-coordinate of touch<br>
  - `y`<br>
    type: `float`<br>
    value: `0` to `height`<br>
    y-coordinate of touch<br>
  - `id`<br>
    type: `int`<br>
    Unique id of the touch. Allows one to track a specific finger while it is on the screen.

###### ``touchSupport``
type: `boolean`<br> value: `false` until the first Touch Event, `true` after that.<br> Useful for checking if a device supports touch and setting up a fallback if it does not. <br><br><br> **NOTE**: There is no(t yet an) equivalent for the mouse event handlers (i.e. `mousePressed()`, `mouseDragged()`, etc.). One possible workaround is to check the `length` of the `touches` array in `draw()`.

### [Device Orientation](https://developer.mozilla.org/en-US/docs/Web/API/Detecting_device_orientation)
###### ``tiltX``
type: `float`<br> value: `-180` to `180`<br> Rotation about the x-axis.

###### ``tiltY``
type: `float`<br> value: `-90` to `90`<br> Rotation about the y-axis.

###### ``tiltZ``
type: `float`<br> value: `0` to `360`<br> Rotation about the z-axis.

###### ``ptiltX``
type: `float`<br> value: `-180` to `180`<br> Rotation about the x-axis in the frame prior to the current frame.

###### ``ptiltY``
type: `float`<br> value: `-90` to `90`<br> Rotation about the y-axis in the frame prior to the current frame.

###### ``ptiltZ``
type: `float`<br> value: `0` to `360`<br> Rotation about the z-axis in the frame prior to the current frame.

###### ``tiltSupport``
type: `boolean`<br> value: `false` until the first Device Orientation Event, `true` after that.<br> Useful for checking if a device supports orientation and setting up a fallback if it does not.

<!---
## Some Common Uses
### Replacing mouse controls with touch controls (or tilt controls)
Just replace `mouseX` and `mouseY` with `touchX` and `touchY` (or `tiltX` and `tiltY`).

### Adding touch controls without breaking mouse controls
Declare two new variables `pageX` and `pageY`

```
float pageX;
float pageY;
```

At the top of `draw()`, place the following code:

```
if (touch) {
  pageX = touchX;
  pageY = touchY;
} else {
  pageX = mouseX;
  pageY = mouseY;
}
```

Or if you're feeling adventurous:

```
pageX = touch ? touchX : mouseX;
pageY = touch ? touchY : mouseY;
```

Now just use `pageX` and `pageY` wherever you would normally use `mouseX` and `mouseY`.
-->

## Bug Reports? Improvements?
Open a [New Issue](https://github.com/pzp1997/Processing-Mobile/issues/new) on the GitHub repository. Make sure the report has a detailed description of the bug, including how it can be reproduced.

`||`

Fork this repository and submit a pull request with a fix.

`||`

Just drop me a line at [pzpaul2002@yahoo.com](mailto:pzpaul2002@yahoo.com?subject=Processing%20Mobile%20Bug) with the subject "Processing Mobile Bug" and a detailed description of the bug, including how I can reproduce it.

## Authors
[Palmer Paul (pzp1997)](https://github.com/pzp1997)
