// U/D arrows to inc/dec number the stroke weight (thickness) by 1
// L/R arrows to inc/dec number fps by 1
// t to toggle trails
// r to make a new drawing
// any other key to lower fps to 1

int n = 50;     // number of points (minimum 2)
int r = 10;    // radius of points
int rate = 1;  // rate the color decreases
int fps = 60;  // frame rate (frames per second)
int weight = 7; // thinkness of lines
boolean showTrail = true; // show trails

static int[] col = {0, 0, 255};
static boolean sw = true;
boolean pause = false;
boolean restart = false;

float[] xPos, yPos, xVel, yVel;


void setup() {
  size(700,700);
  background(255, 255, 255);
  xPos = new float[n];
  yPos = new float[n];
  xVel = new float[n];
  yVel = new float[n];
  for (int i=0; i<n; ++i) {    // assign dots random positions and velocities
    xPos[i] = random(0+r, width-r);
    yPos[i] = random(0+r, height-r);
    xVel[i] = random(-5,5);
    yVel[i] = random(-5,5);
  }
}


void draw() {
  // hide trails
  if (showTrail == false)
    background(255, 255, 255);
  for (int i=0; i<n; ++i) {
    // check if a point has collided with wall
    if ( (xPos[i]-r)<0 || (xPos[i]+r)>(width) )
      xVel[i] *= -rate;
    else if ( (yPos[i]-r)<0 || (yPos[i]+r)>height )
      yVel[i] *= -rate;
    // increment/decrement xPos & yPos
    xPos[i] += xVel[i];
    yPos[i] += yVel[i];
    // draw lines
    stroke(col[0], col[1], col[2]);
    strokeWeight(weight);
    if (0 < i)
      line(xPos[i], yPos[i], xPos[(i-1)%n], yPos[(i-1)%n]);
    // color of lines
    if (i%n == 0)
      colBlue();
  }
}
