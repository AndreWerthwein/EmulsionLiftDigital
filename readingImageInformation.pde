void readingImageInformation(PImage originalImage) {
  image(originalImage, 0, 0);
  
  for (int i = 0; i < originalImage.height; i++) {
    for (int j = 0; j < originalImage.width; j++) {
      // saving x- and y-position of current pixel
      positionX.append(j);
      positionY.append(i);
      
      // saving colors (per channel) of current pixel
      color currentPixel = get(j, i);
     
      // getting color channels by bit-masking, for faster processing
      float currentRed = currentPixel >> 16 & 0xFF;
      red.append(currentRed);
      
      float currentGreen = currentPixel >> 8 & 0xFF;
      green.append(currentGreen);
      
      float currentBlue = currentPixel & 0xFF;
      blue.append(currentBlue);
    }
  }
  // draw background to get rid of original image
  background(255);
 
  // checking functionality by printing to console: 
  /* for (int i = 0; i < positionX.size(); i++) {
    println("Der Pixel an der Position: [" + positionX.get(i) + "," + positionY.get(i) + " hat die Farbe rgb(" + red.get(i) + "," + green.get(i) + "," + blue.get(i) + ").");
  } */
}
