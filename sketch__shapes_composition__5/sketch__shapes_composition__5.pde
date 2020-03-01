import processing.pdf.*;

randomShape[] randomShapes;

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
int backgroundWhite = #FFFFFF;
int blackTheme = #000000;

int backgroundBlack = #000000;
int whiteTheme = #FFFFFF;

int[] colorTheme1 = { #010B40, #020873, #040DBF, #040FD9, #F2E74B };

int[] colorTheme2 = { #010B40, #F25E3D, #F2D335, #25D997, #D91A96 };

int[] colorTheme3 = { #FFFFFF, #F24E29, #F2AE30, #78BFAB, #D93B84 };
/* -------------- */


int levelPrecision = 35;

void setup() {
  size(1748, 2480, PDF, "shapes-4-theme-1.pdf");
  background(backgroundWhite);
  randomShapes = new randomShape[20*20];

  smooth();
  for(int x = 0; x < randomShapes.length - 1; x++) {
    for (int y = 0; y < randomShapes.length - 1; y++) {
      randomShapes[x] = new randomShape(x*levelPrecision, y*levelPrecision);
      randomShapes[x].build();
    }
  }
  
  println("Finished.");
  exit();
}

class randomShape {
  int posX;
  int posY;
  int filledColor= int(random(0,colorTheme1.length));
  
  randomShape(int tmpPosX, int tmpPosY) {
    posX = tmpPosX;
    posY = tmpPosY;
  }
  
  void build() {
    fill(backgroundWhite);
    fill(colorTheme1[filledColor]);
    noStroke();
    rect(posX, posY, 100, 100);
    pushMatrix();
      translate(posX, posY);
      strokeWeight(int(random(1,3)));
     // stroke(blackTheme);
      noFill();
      rotate(TWO_PI/int(random(1,8  )));
      line(-levelPrecision/4, 0, levelPrecision/4, 0);
    popMatrix();
  }
}
