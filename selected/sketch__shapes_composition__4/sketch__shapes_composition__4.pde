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
int backgroundWhite = #FFFFFF;
int blackTheme = #000000;

int backgroundBlack = #000000;
int whiteTheme = #FFFFFF;

int backgroundColorTheme1 = #010B40;
int[] colorTheme1 = { #020873, #040DBF, #040FD9, #F2E74B };

int backgroundColorTheme2 = #010B40;
int[] colorTheme2 = { #F25E3D, #F2D335, #25D997, #D91A96 };

int backgroundColorTheme3 = #FFFFFF;
int[] colorTheme3 = { #F24E29, #F2AE30, #78BFAB, #D93B84 };
/* -------------- */


int posX = 0;
int posY = 0;
int size = 50;
int border = 100;
//int(random(50,50));
int numberRect = 300;

/*int[][] colorSchemes= {
  {#C7D1D9, #054159, #3E768C, #5D98A6, #9BB9BF}
};
*/

void setup() {
  size(1748, 2480, PDF, "shapes-3-theme-3.pdf");
  background(backgroundColorTheme2);
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
  float randS = int(random(0,300));
  float randR = int(random(0,360));
  println(randR);
  boolean isFilled = randomBool();
 
  int colorScheme = colorTheme2[int(random(1,4))];
  //int colorScheme = whiteTheme;
  pushMatrix();
  translate(width/2,height/2);
  rotate(randR);
  if (!isFilled) {
    fill(backgroundColorTheme2);
    strokeWeight(int(random(2,6)));  
    stroke(colorScheme, random(0,1));

  } else {
    strokeWeight(2);
    stroke(colorTheme2[int(random(1,4))]);
    fill(colorScheme);
  }

  rect(int(random(-width/5,width/5)),int(random(-height/4,height/4)),randS,randS);
  popMatrix();
}
