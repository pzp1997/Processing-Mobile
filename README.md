# Processing Mobile
### A library that adds features to [Processing.js](http://processingjs.org) to make it more mobile friendly.


## Getting Started

### Short answer:
Just add ``<script src="http://pzp1997.github.io/cdn/processing-mobile/processing-mobile-1.0.0.js"></script>`` to the bottom of the ``<body>`` in your index.html!

### Long answer:
**Making the HTML file**
 1. Copy and paste the [HTML Template](https://gist.github.com/pzp1997/958e15fe7bf048de0b10) into your favorite text editor. (If you do not have a text editor, I strongly recommend [Atom](https://atom.io)).
 2. Replace ``<!-- NAME OF YOUR PROCESSING SKETCH GOES HERE -->`` with the name of your Processing sketch.
 3. Copy and paste your Processing sketch below the line ``// YOUR PROCESSING CODE GOES HERE``.
 4. Save this file as ``[name of your sketch].html``.

**Hosting the HTML file**
 1. Go to [Google Drive](https://drive.google.com).
 2. Click on the **New** button on the left.
 3. Click on **File Upload** from the dropdown menu and choose the file you saved in Step 4 of Making the HTML file.
 4. Wait for the upload to complete, then click on the **Share** link in the bottom left.
 5. Click **Advanced** in the bottom right corner of the sharing box.
 6. Click **Change...**.
 7. Choose **On - Public on the web** and click **Save**.
 8. Before closing the sharing box, copy the document ID from the URL in the field below "Link to share". The document ID is a string of uppercase and lowercase letters and numbers between slashes in the URL.
 9. You can now access your sketch at ``www.googledrive.com/host/[doc id]`` where ``[doc id]`` is the document ID you copied in Step 8.

**Shortening the URL (Optional)**
 1. Go to [bitly.com](https://bitly.com)
 2. Paste the URL from Step 9 of Hosting the HTML file.
 3. Copy and share the shortened URL with your friends!

## Documentation

### [Touch Events](https://developer.mozilla.org/en-US/docs/Web/API/Touch_events)

###### ``touchX``
type: ``float``<br>
value: ``0`` to ``width``<br>
x-coordinate of the last touch.

###### ``touchY``
type: ``float``<br>
value: ``0`` to ``height``<br>
y-coordinate of the last touch.

###### ``touches``
type ``array``<br>
Each object in the array has the following properties:<br>
 - ``x``<br>
    type: ``float``<br>
    value: ``0`` to ``width``<br>
    x-coordinate of touch<br>
 - ``y``<br>
    type: ``float``<br>
    value: ``0`` to ``height``<br>
    y-coordinate of touch<br>
 - ``id``<br>
    type: ``int``<br>
    Unique id of the touch. Allows one to track a specific finger while it is on the screen.

###### ``touch``
type: ``boolean``<br>
value: ``false`` until the first Touch Event, ``true`` after that.<br>
Useful for checking if a device supports touch and setting up a fallback if it does not.

### [Device Orientation](https://developer.mozilla.org/en-US/docs/Web/API/Detecting_device_orientation)

###### ``tiltX``
type: ``float``<br>
value: ``0`` to ``360``<br>
Rotation about the x-axis.

###### ``tiltY``
type: ``float``<br>
value: ``0`` to ``360``<br>
Rotation about the y-axis.

###### ``tiltZ``
type: ``float``<br>
value: ``0`` to ``360``<br>
Rotation about the z-axis.

###### ``tilt``
type: ``boolean``<br>
value: ``false`` until the first Device Orientation Event, ``true`` after that.<br>
Useful for checking if a device supports orientation and setting up a fallback if it does not.

## Examples
 - [Background Tilt](pzp1997.github.io/Processing-Mobile/examples/bg-tilt)
 - [Easing](pzp1997.github.io/Processing-Mobile/examples/easing)
 - [Multitouch](pzp1997.github.io/Processing-Mobile/examples/multitouch)
 - [THE-SUN](pzp1997.github.io/Processing-Mobile/examples/)
   - Based off [eveka's code](https://github.com/eveka/the-sun)

## Bug Reports? Improvements?

Open a [New Issue](https://github.com/pzp1997/ProcessingJS-Touch/issues/new) on the GitHub repository. Make sure the report has a detailed description of the bug, including how it can be reproduced.

``||``

Fork this repository and submit a pull request with a fix.

``||``

Just drop me a line at [pzpaul2002@yahoo.com](mailto:pzpaul2002@yahoo.com?subject=Processing%20Mobile%20Bug) with the subject "Processing Mobile Bug" and a detailed description of the bug, including how I can reproduce it.


## Authors
[Palmer (pzp1997)](https://github.com/pzp1997)
