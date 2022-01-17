void checkForSquareFormat(PImage originalImage) {
  if (originalImage.width != originalImage.height) {
    println("[ERROR]: 'Emulsion Lifts' are limited to square format, due to its roots in Polaroid- or Instant-Photography.");
    exit();
  } else {
    println("Beginning 'Emulsion Lift'.");
  }
}
