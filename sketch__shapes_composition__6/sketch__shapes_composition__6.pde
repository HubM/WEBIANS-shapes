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

int border = int(random(40,100));
int diametre = int(random(border/4, border));

int[] colors = { #ffffff, #000000 };

int backgroundColorTheme1 = #010B40;
int[] colorTheme1 = { #020873, #040DBF, #040FD9, #F2E74B };

int backgroundColorTheme2 = #010B40;
int[] colorTheme2 = { #010B40, #F25E3D, #F2D335, #25D997, #D91A96 };

int backgroundColorTheme3 = #FFFFFF;
int[] colorTheme3 = { #FFFFFF, #F24E29, #F2AE30, #78BFAB, #D93B84 };

boolean randomBool() {
  return random(1) > .5;
}

void setup() {
  size(1748, 2480, PDF, "shapes-5-theme-3.pdf");
  background(backgroundColorTheme3);
  smooth();
  
  fill(0);
  noStroke();

  for(int x=0; x<=width; x+=border) {
    for(int y=0; y<=height; y+=border) {
      int filledColor= int(random(0,colorTheme3.length));
      boolean hasShape = randomBool();
      

      if ((filledColor == 1) && (hasShape)) {
       int diametreEllipse = int(random(border/4,border/2));
       fill(colorTheme3[0]);
       ellipse(x-border/2, y-border/2, diametreEllipse, diametreEllipse);
      }
      fill(colorTheme3[filledColor]);
      rect(x,y,border,border);
    }
  }  
  
  println("Finished.");
  exit();
  
}
