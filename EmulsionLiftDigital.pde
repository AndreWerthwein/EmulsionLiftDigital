PImage originalImage;

// frame-configuration
int imageSize = 1200;
int smallFrameSize = 66;
int bigFrameSize = 305;
int windowWidth, windowHeight;
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
  windowWidth = smallFrameSize + imageSize + smallFrameSize;
  windowHeight = smallFrameSize + imageSize + bigFrameSize;
  size(windowWidth, windowHeight);
}

void setup() {  
  background(255);
  originalImage = loadImage("test.jpg");
  
  noLoop();
}

void draw() {
 checkForSquareFormat(originalImage);
 readingImageInformation(originalImage);
 // saveFrame("new.jpg");
}
