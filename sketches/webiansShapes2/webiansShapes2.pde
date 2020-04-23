import processing.pdf.*;

int backgroundColorTheme = #010B40;
int[] colorTheme = {#D91A96, #25D997, #F2D335, #F25E3D};

String pdfName = "../../render/webiansShapes3/webiansShapes2XXL.pdf";

int XXS = 100;
int XS = 200;
int S = 400;
int M = 800;
int L = 1600;
int XL = 3200;
int XXL = 6400;

int size = XXL;

int randomClassic = int(random(0,10));

void setup() {
  size(2480, 3508, PDF, pdfName);
  background(backgroundColorTheme);
  smooth();
  noLoop();
  translate(width/2, height/2);
  factorialRectangle(size);
  
  // Exit the program 
  println("Finished.");
  exit();
}

float factorialRectangle(float n) {
  rotate(radians(n));
  translate(int(random(-width/4,width/4)),int(random(-height/4,height/4)));
  strokeWeight(randomClassic);
  stroke(colorTheme[int(random(0,4))]);
  noFill();
  ellipse(0,0,n,n);
  if (n > 1) {   
    factorialRectangle(n*random(0.6, 1));
  }
  return 1;
}
