void readingImageInformation(PImage originalImage) {
  image(originalImage, 0, 0);
  int pixelCounter = 0;
  
  for (int i = 0; i < originalImage.height; i++) {
    for (int j = 0; j < originalImage.width; j++) {
      // saving x- and y-position of current pixel
      positionX.append(j);
      positionY.append(i);
      
      color currentPixel = get(j, i);
      // saving colors (per channel) of current pixel
      red.append(red(currentPixel));
      green.append(green(currentPixel));
      blue.append(blue(currentPixel));
      
      pixelCounter++;
    }
    pixelCounter++;
  }
  // draw background to get rid of original image
  background(255);
 
  /* checking functionality by printing to console: 
  for (int i = 0; i < positionX.size(); i++) {
    println("Der Pixel an der Position: [" + positionX.get(i) + "," + positionY.get(i) + " hat die Farbe rgb(" + red.get(i) + "," + green.get(i) + "," + blue.get(i) + ").");
  } */
}

// getting color channels by bit-masking, for faster calculation

// red: float r2 = c >> 16 & 0xFF;
// green: float g2 = c >> 8 & 0xFF;
// blue: float b2 = c & 0xFF;
