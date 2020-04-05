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
color backgroundWhite = color(255,255,255);
color blackTheme = color(0,0,0);

color backgroundBlack = color(0,0,0);
color whiteTheme = color(255,255,255);

color backgroundColorTheme1 = color(1,11,64);
color[] colorTheme1 = { color(2,8,115), color(4,13,191), color(4,15,217), color(242,231,75) };

color backgroundColorTheme2 = color(1,11,64);
color[] colorTheme2 = { color(242,94,61), color(242,211,53), color(37,217,151), color(217,26,150) };

int backgroundColorTheme3 = color(255,255,255);
color[] colorTheme3 = { color(242,78,41), color(242, 174,48), color(120,191,171), color(217,59,132) };
/* -------------- */


int posX = 0;
int posY = 0;
int size = 50;
int border = 100;
int numberRect = 500 ;

int backgroundColor = backgroundWhite;

String pdfName = "exports/shapes-4-bonus-" + numberRect + "-OP.pdf";

void setup() {
  size(1748, 2480, PDF, pdfName);
  background(backgroundColor);
  frameRate(20);

  for (int i=0; i <= numberRect; i+=1) {
    drawRect();
  }
  
  // Exit the program 
  println("Finished.");
  exit();
}

boolean randomBool() {
  return random(1) > .5;
}


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
  /*
  BONUS PARAMS:
    posX,
    posY,
    width,
    height,
    radius top-left,
    radius top-right,
    radius bottom-right,
    radius bottom-left,   
  */
  rect(int(random(-width/5,width/5)),int(random(-height/4,height/4)),randS,randS, int(random(0,18)), int(random(0,18)), int(random(0,18)), int(random(0,18)));
  popMatrix();
}
