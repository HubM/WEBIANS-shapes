randomShape[] randomTests;

/* THEMES COLORS */
int[] colorTheme1 = { #020873, #040DBF, #040FD9, #F2E74B };
int[] colorTheme2 = { #F25E3D, #F2D335, #25D997, #D91A96 };
int[] colorTheme3 = { #F24E29, #F2AE30, #78BFAB, #D93B84 };
int[] colorTheme4 = { #08348C, #BFAC4E, #D9D8D7, #F2A099};
/* -------------- */

void setup() {
  size(600,600);
  background(0);
  randomTests = new randomShape[width/100*height/100];

  
  for(int x= 0; x<randomTests.length; x++) {
    for (int y=0; y< randomTests.length; y++) {
        randomTests[x] = new randomShape(x*100, y*100);
        randomTests[x].build();
    }
  }
  smooth();
}

class randomShape {
  int posX;
  int posY;
  int filledColor= int(random(0,colorTheme4.length));
  
  randomShape(int tmpPosX, int tmpPosY) {
    posX = tmpPosX;
    posY = tmpPosY;
  }
  
  void build() {

    fill(colorTheme4[filledColor]);
    noStroke();
    rect(posX, posY, 100, 100);
    
    pushMatrix();
      translate(posX+50, posY+50);
      strokeWeight(int(random(1,2)));
      stroke(0);
      noFill();
      rotate(TWO_PI/int(random(1,8  )));
      line(-25, 0, 25, 0);
    popMatrix();
  }
}
