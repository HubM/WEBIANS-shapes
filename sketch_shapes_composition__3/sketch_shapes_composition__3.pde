int[] circleColors= {#D91A96, #25D997, #F2D335, #F25E3D};

void setup() {
  size(600, 600);
  background(#010B40);
  smooth();
  translate(width/2, height/2);
  factorialRectangle(int(random(500,2000)));
}

float factorialRectangle(float n) {
  rotate(radians(n));
  translate(int(random(-width/4,width/4)),int(random(-height/4,height/4)));
  strokeWeight(int(random(2,3)));
  stroke(circleColors[int(random(0,3))]);
  noFill();
  ellipse(0,0,n,n);
  if (n > 1) {   
    factorialRectangle(n*random(0.6, 1));
  }
  return 1;
}
