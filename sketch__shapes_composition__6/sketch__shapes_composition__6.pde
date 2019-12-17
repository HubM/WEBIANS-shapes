int border = int(random(40,100));
int diametre = int(random(border/4, border));

int[] colors = { #ffffff, #000000 };

void setup() {
  size(600,600);
  background(0);
  smooth();
  
  fill(0);
  noStroke();

  for(int x=0; x<=width; x+=border) {
    for(int y=0; y<=height; y+=border) {
      int filledColor= int(random(0,colors.length));
      if (filledColor == 1) {
       int diametreEllipse = int(random(border/4,border/2));
       fill(colors[0]);
       ellipse(x-border/2, y-border/2, diametreEllipse, diametreEllipse);
      }
      fill(colors[filledColor]);
      rect(x,y,border,border);
    }
  }  
}
