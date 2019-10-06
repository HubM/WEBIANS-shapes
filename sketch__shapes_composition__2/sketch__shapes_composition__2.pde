/* THEMES COLORS */
int backgroundColorTheme1 = #010B40;
int[] colorTheme1 = { #020873, #040DBF, #040FD9, #F2E74B };

int backgroundColorTheme2 = #010B40;
int[] colorTheme2 = { #F25E3D, #F2D335, #25D997, #D91A96 };

int backgroundColorTheme3 = #FFFFFF;
int[] colorTheme3 = { #F24E29, #F2AE30, #78BFAB, #D93B84 };
/* -------------- */

void setup() {
 size(600,600);
 background(backgroundColorTheme3);
 smooth();

 noFill();
 for(int i = 50; i < width - 50; i+= 40) {
  for (int y = 50; y < height - 50; y+= 40) { 
   int choosenColor = int(random(1,4));
   stroke(colorTheme3[choosenColor]);  
   strokeWeight(int(random(2,4)));
   pushMatrix();
    translate(i+10,y+10);
    rotate(random(0,360));
    beginShape();
     vertex(-10,-10);
     vertex(0,-10);
     vertex(0,0);
     vertex(+10,0);
     vertex(10,10);
     vertex(-10,+10); 
     vertex(-10,-10);
    endShape();
   popMatrix();
   }
 }
}
