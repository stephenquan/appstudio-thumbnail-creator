# appstudio-thumbnail-creator

This AppStudio App demonstrates how you can use one of ESRI Calcuite UI Icons as a 200x133 thumbnail or a 128x128 appicon.

 1. Navigate to https://esri.github.io/calcite-ui-icons/
 2. Pick an icon and view it at 32x32, e.g. applications-32.svg
 3. Copy it's raw.githubusercontent.com URL, e.g. https://raw.githubusercontent.com/Esri/calcite-ui-icons/master/icons/applications-32.svg
 4. Replace the URL in both `thumbnailCreator` and `appiconCreator` sections of the app
 5. Run the app and click on thumbnail and appicon sections which will replace thumbnail.png and appicon.png files

Explanation

SVG are scalable vector graphics that can be rendered at any resolution.

To make a 200x133 thumbnail we render the SVG as the thumbnail with an arbitrary padding.
96x96 was chosen so that it leaves 18 pixel (14%) margin.

To make a 128x128 appicon we render the SVG as the appicon with an arbitrary padding.
96x96 was chosen so that it is similar to the thumbnail.
The margin is 16 pixel or (12%).

A grey color is chosen for both icons so that it renders well in either light or dark themes.
