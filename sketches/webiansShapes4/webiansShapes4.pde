import processing.pdf.*;

randomShape[] randomShapes;

int backgroundWhite = #FFFFFF;
int backgroundColorTheme = #F2EAE4;
int[] colorTheme = { #E94956, #363089, #FED168 }; 

int sizeXXS = 10;
int sizeXS = 20;
int sizeS = 40;
int sizeM = 60;
int sizeL = 80;
int sizeXL = 100;
int sizeXXL = 110;
/* -------------- */

int levelPrecision = sizeXXL;

void setup() {
  size(2480, 3508, PDF, "../../render/webiansShapes5/webiansShapes4XXL.pdf");
  background(backgroundColorTheme);
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
  int filledColor= int(random(0,colorTheme.length));
  
  randomShape(int tmpPosX, int tmpPosY) {
    posX = tmpPosX;
    posY = tmpPosY;
  }
  
  void build() {
    fill(backgroundWhite);
    fill(colorTheme[filledColor]);
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
