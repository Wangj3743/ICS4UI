void colRGB(int n) {
  if (scratchLines.col[n] >= 255 || scratchLines.col[n] <= 75)
    scratchLines.sw = !scratchLines.sw;
  if (scratchLines.sw)
    scratchLines.col[n]++;
  else //(scratchLines.sw == false)
  scratchLines.col[n]-- ;
}

void colRed() {
  colRGB(0);
}

void colGreen() {
  colRGB(1);
}

void colBlue() {
  colRGB(2);
}
