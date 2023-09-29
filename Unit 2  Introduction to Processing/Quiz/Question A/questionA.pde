// global
float xC; 
float yC;
float r;
float green = 255;


void setup() {
  size(600,500);
  xC = width*0.5;
  yC = height*0.75;

}


void draw() {
  r = distance(xC, yC, mouseX, mouseY)*2;
  background(0, green, 0);
  fill(255, 0, 0);
  circle(xC, yC, r);
  green -= 1;
}


float distance(float x1, float y1, float x2, float y2) {
  return sqrt(pow(x1 - x2, 2)+pow(y1 - y2, 2));
}
