PImage originalImage;

// frame-configuration
int imageSize = 1200;
int smallFrameSize = 66;
int bigFrameSize = 305;
int windowWidth, windowHeight;
  
void settings() {
  // calculate proper window sizes
  windowWidth = smallFrameSize + imageSize + smallFrameSize;
  windowHeight = smallFrameSize + imageSize + bigFrameSize;
  size(windowWidth, windowHeight);
}

void setup() {  
  background(255);
  originalImage = loadImage("test.jpg");
  image(originalImage, smallFrameSize, smallFrameSize);
  noLoop();
}

void draw() {
 checkForSquareFormat(originalImage); 
 saveFrame("new.jpg");
}
