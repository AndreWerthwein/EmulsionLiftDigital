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
  originalImage = loadImage("test.jpg");
  image(originalImage, smallFrameSize, smallFrameSize);
  noLoop();
}

void draw() {
 checkForSquareFormat(originalImage); 
 drawPolaroidFrame(smallFrameSize, bigFrameSize);
 saveFrame("new.jpg");
}

void checkForSquareFormat(PImage originalImage) {
  if (originalImage.width != originalImage.height) {
    println("[ERROR]: 'Emulsion Lifts' are limited to square format, due to its roots in Polaroid- or Instant-Photography.");
    exit();
  } else {
    println("Beginning 'Emulsion Lift'.");
  }
}

void drawPolaroidFrame(int smallFrameSize, int bigFrameSize) {
  fill(255);
  noStroke();
  
  // frame: top
  rect(0, 0, width, smallFrameSize);
  
  // frame: left
  rect(0, smallFrameSize, smallFrameSize, (height - (305 + smallFrameSize)));
  
  // frame: right
  rect((width - smallFrameSize), smallFrameSize, smallFrameSize, (height - (bigFrameSize + smallFrameSize)));
  
  // frame: bottom
  rect(0, (height - bigFrameSize), width, height);
}
