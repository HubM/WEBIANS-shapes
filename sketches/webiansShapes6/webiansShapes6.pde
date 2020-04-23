import processing.pdf.*;

int backgroundColorTheme = #FFFFFF;
int[] colorTheme = { #F2A7B5, #5F3DD9, #558ED9, #F2CA50, #F26241 };

String pdfName = "../../../render/webiansShapes7/webiansShapes6XS.pdf";

int XXS = 1000;
int XS = 2000;
int S = 3000;
int M = 4000;
int L = 5000;
int XL = 6000;
int XXL = 7000;

int size = XS;

int randomLarge = int(random(size/6,size/2));

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
  strokeWeight(randomLarge);
  stroke(colorTheme[int(random(0,colorTheme.length))]);
  noFill();
  ellipse(0,0,n,n);
  if (n > 1) {   
    factorialRectangle(n*random(0.6, 1));
  }
  return 1;
}
