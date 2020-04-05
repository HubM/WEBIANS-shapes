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
int backgroundColorTheme1 = #363089;
color[] colorTheme1 = { color(254,209,104), color(233,73,86), color(244,224,205) };

int backgroundColorTheme2 = #E94956;
color[] colorTheme2 = { color(254,209,104), color(53,50,135), color(48,74,154) };


/* -------------- */
int selectedThemeBackground = backgroundColorTheme2;
color[] selectedThemeColor = colorTheme2;

void setup() {
 size(1748, 2480, PDF, "exports/shapes-2-FS-theme2-OP.pdf");
 background(selectedThemeBackground);
 smooth();

 noFill();
 for(int i = 50; i < width - 50; i+= 40) {
  for (int y = 50; y < height - 50; y+= 40) {
    int fullRandomOp = int(random(0,255));
    int halfRandomOp = int(random(128,255));
    boolean isFilled = random(0,1) > 0.5;
    int randomStrokeWeight = int(random(2,4));
    
    int choosenColor = selectedThemeColor[int(random(1, selectedThemeColor.length))];
    
    if (isFilled) {
      fill(choosenColor, fullRandomOp);
    } else {
      noFill();
    }
   
   //stroke(colorTheme3[choosenColor], halfRandomOp);      
    strokeWeight(randomStrokeWeight);
    stroke(choosenColor, fullRandomOp);

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
