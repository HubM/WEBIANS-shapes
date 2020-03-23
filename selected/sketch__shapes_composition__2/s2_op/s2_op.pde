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
color blackTheme = color(0,0,0);

int backgroundBlack = #000000;
color whiteTheme = color(255,255,255);

int backgroundColorTheme1 = #010B40;
color[] colorTheme1 = { color(2,8,115), color(4,13,191), color(4,15,217), color(242,231,75) };

int backgroundColorTheme2 = #010B40;
color[] colorTheme2 = { color(242,94,61), color(242,211,53), color(37,217,151), color(217,26,150) };

int backgroundColorTheme3 = #FFFFFF;
color[] colorTheme3 = { color(242,78,41), color(242, 174,48), color(120,191,171), color(217,59,132) };
/* -------------- */

void setup() {
 size(1748, 2480, PDF, "exports/shapes-2-S-theme3-half-OP.pdf");
 background(backgroundColorTheme3);
 smooth();

 noFill();
 for(int i = 50; i < width - 50; i+= 40) {
  for (int y = 50; y < height - 50; y+= 40) {
    int fullRandomOp = int(random(0,255));
    int halfRandomOp = int(random(128,255));
      
   int choosenColor = int(random(1,4));
   stroke(colorTheme3[choosenColor], halfRandomOp);  
   //stroke(blackTheme, fullRandomOp);
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
 
  println("Finished.");
  exit();
}
