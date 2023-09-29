// global
float g = 9.81;


void setup() { //m, h, v
  println(getTotalEnergy(5.0, 100, 20));
  println(getTotalEnergy(2.8, -5, -10));
  println(getTotalEnergy(-9, 3, 5));
}


float getTotalEnergy(float m, float h, float v) {
  if (m<0 || h<0) {
    return 0;
  } else {
    return m*g*h + 0.5*m*v*v; //+0.5*m*pow(v, 2)
  }
}
