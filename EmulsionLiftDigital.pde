PImage originalImage;

// frame-configuration
int imageSize = 1200;
int borderSize = 50;
int windowSize;
int pixelArrayLength = imageSize * imageSize;

// pixel positions
IntList positionX = new IntList();
IntList positionY = new IntList();

// colors per channel
FloatList red = new FloatList();
FloatList green = new FloatList();
FloatList blue = new FloatList();
  
void settings() {
  // calculate proper window sizes
  windowSize = (borderSize * 2) + imageSize;
  size(windowSize, windowSize);
}

void setup() {  
  background(255);
  originalImage = loadImage("portrait.jpg");
  
  noLoop();
}

void draw() {
 checkForSquareFormat(originalImage);
 readingImageInformation(originalImage);
 noise2DSimple(originalImage, positionX, positionY, red, green, blue);
 saveFrame("new.jpg");
}
