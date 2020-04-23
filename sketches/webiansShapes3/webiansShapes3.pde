import processing.pdf.*;

int backgroundColorTheme = #ED6879;
color[] colorTheme = { color(245,232,235), color(36,49,97), color(48,74,154), };

int posX = 0;
int posY = 0;
int size = 50;
int border = 300;

int XXS = 10;
int XS = 30;
int S = 50;
int M = 75;
int L = 100;
int XL = 200;
int XXL = 300;

int numberRect = XXL ;

int selectedThemeBackground = backgroundColorTheme;
color[] selectedThemeColor = colorTheme;

String pdfName = "webiansShapes3XXL.pdf";


void setup() {
  size(2480, 3508, PDF, pdfName);
  background(selectedThemeBackground);
  frameRate(20);

  for (int i=0; i <= numberRect; i+=1) {
    newDrawRect();
    //drawRectTheme3();
  }
  
  // Exit the program 
  println("Finished.");
  exit();
}

boolean randomBool() {
  return random(1) > .5;
}

void newDrawRect() {
  float randS = int(random(0,300));
  float randR = int(random(0,360));
  
  int colorScheme = selectedThemeColor[int(random(0,selectedThemeColor.length))];
  int randomStrokeWeight = int(random(2,6));
   
  pushMatrix();
    translate(width/2,height/2);
    rotate(randR);
    strokeWeight(randomStrokeWeight);
    stroke(colorScheme, random(128,255));
    fill(colorScheme, random(200,255));
    rect(int(random(-width/5,width/5)),int(random(-height/2 - randS ,height/2 - randS)),randS,randS);
  popMatrix();
}

void drawRectTheme3() {
  float randS = int(random(0,300));
  
  float randR = int(random(0,360));
  
  int colorScheme = selectedThemeColor[int(random(0,selectedThemeColor.length))];
  int randomStrokeWeight = int(random(2,6));
   
  pushMatrix();
    translate(width/2,height/2);
    rotate(randR);
    strokeWeight(randomStrokeWeight);
    stroke(color(0,0,0), random(128,255));
    fill(colorScheme, random(200,255));
    rect(int(random(-width/5,width/5)),int(random(-height/2 - randS ,height/2 - randS)),randS,randS);
  popMatrix();
}
