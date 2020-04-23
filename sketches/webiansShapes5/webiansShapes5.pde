import processing.pdf.*;

int sizeXXS = 10;
int sizeXS = 20;
int sizeS = 40;
int sizeM = 60;
int sizeL = 80;
int sizeXL = 100;
int sizeXXL = 110;

int border = sizeXXL;
int diametre = int(random(border/4, border));

int[] colors = { #ffffff, #000000 };

int backgroundColorTheme = #010B40;
int[] colorTheme = { #020873, #040DBF, #040FD9 };

boolean randomBool() {
  return random(1) > .5;
}


void setup() {
  size(2480, 3508, PDF, "../../render/webiansShapes5.pdf");
  background(backgroundColorTheme);
  smooth();
  
  fill(0);
  noStroke();

  for(int x=0; x<=width; x+=border) {
    for(int y=0; y<=height; y+=border) {
      int filledColor= int(random(0,colorTheme.length));
      boolean hasShape = randomBool();
      
      if ((filledColor == 1) && (hasShape)) {
       int diametreEllipse = int(random(border/4,border/2));
       fill(255,255,255,int(random(0,150)));
       ellipse(x-border/2, y-border/2, diametreEllipse, diametreEllipse);
      }
      fill(colorTheme[filledColor]);
      rect(x,y,border,border);
    }
  }  
  
  println("Finished.");
  exit();
  
}
