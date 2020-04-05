import processing.pdf.*;

/* FORMAT INFOS
 a4: {
   width: 2480,
   height: 3508
 }
 a5: {
   width: 1748,
   height: 2480
 },
 a6: {
   width: 1240,
   height: 1748
 }
*/

/* THEMES COLORS */
int backgroundColorTheme1 = #F2EAE4;
color[] colorTheme1 = { color(233,73,86), color(54,48,137), color(254,209,104) };

int backgroundColorTheme2 = #ED6879;
color[] colorTheme2 = { color(245,232,235), color(36,49,97), color(48,74,154), };

int backgroundColorTheme3 = #FFFFFF;
int[] colorTheme3 = { color(250,201,0), color(255,255,255), color(221,11,21), color(35,80,150) };
/* -------------- */


int posX = 0;
int posY = 0;
int size = 50;
int border = 100;

int numberRect = 10 ;

int selectedThemeBackground = backgroundColorTheme3;
color[] selectedThemeColor = colorTheme3;
String themeExport = "theme3";

String pdfName = "exports/shapes-4-" + themeExport + "-" + numberRect + "-OP.pdf";


void setup() {
  size(1748, 2480, PDF, pdfName);
  background(selectedThemeBackground);
  frameRate(20);

  for (int i=0; i <= numberRect; i+=1) {
    //newDrawRect();
    drawRectTheme3();
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
    rect(int(random(-width/5,width/5)),int(random(-height/4,height/4)),randS,randS);
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
    rect(int(random(-width/5,width/5)),int(random(-height/4,height/4)),randS,randS);
  popMatrix();
}

/*
void drawRect() {
  smooth();
  int randS = int(random(0,300));
  int randR = int(random(0,360));
  
  boolean isFilled = randomBool();
 
  //int colorScheme = colorTheme3[int(random(1,4))];
  int colorScheme = blackTheme;
  pushMatrix();
  translate(width/2,height/2);
  rotate(randR);
  
  strokeWeight(int(random(2,6)));
  
  if (!isFilled) {
    fill(backgroundColor, random(128,255));
    stroke(colorScheme, random(128,255));
  } else {
    noStroke();
    fill(colorScheme, random(200,255));
  }

  rect(int(random(-width/5,width/5)),int(random(-height/4,height/4)),randS,randS, int(random(0,18)), int(random(0,18)), int(random(0,18)), int(random(0,18)));
  popMatrix();
}
*/
