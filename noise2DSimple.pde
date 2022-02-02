void noise2DSimple(PImage originalImage, IntList positionX, IntList positionY, FloatList red, FloatList green, FloatList blue) {
  println("Rendering: Image based on a simple 2D-Noise.");
  float xOffset = 0.0;
  float increment = 0.02;
  float pixelOffsetX = 0.0;
  float pixelOffsetY = 0.0;
  float noiseOffset = 0.0;
  int counter = 0;
  
  noiseDetail(8, 0.3);
  
  for (int i = 0; i < originalImage.height; i++) {
    xOffset += increment;
    float yOffset = 0.0;
    for (int j = 0; j < originalImage.width; j++) {
      yOffset += increment;
      
      noiseOffset =  noise(xOffset, yOffset) * 80;
      pixelOffsetX = noise(xOffset, yOffset) * noiseOffset;
      pixelOffsetY = noise(xOffset, yOffset) * 25;
      
      noStroke();
      fill(red.get(counter), blue.get(counter), green.get(counter), 250);
      rect(30 + positionX.get(counter) + pixelOffsetX, 40 + positionY.get(counter) + pixelOffsetY, 1, 1);
      
      counter++;
    }
  }
}
