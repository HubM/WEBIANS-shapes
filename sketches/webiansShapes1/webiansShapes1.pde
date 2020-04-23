import processing.pdf.*;

int backgroundColorTheme = #363089;
color[] colorTheme = { color(254,209,104), color(233,73,86), color(244,224,205) };

int XXS = 20;
int XS = 40;
int S = 60;
int M = 80;
int L = 100;
int XL = 120;
int XXL = 140;

int size = XXL;


int selectedThemeBackground = backgroundColorTheme;
color[] selectedThemeColor = colorTheme;
int border = 25;

void setup() {
 size(2480, 3508, PDF, "../../render/webiansShapes1/webiansShapes1XXL.pdf");
 background(selectedThemeBackground);
 smooth();

 noFill();
 for(int i = border; i <= width - border ; i+= size) {
  for (int y = border; y <= height - border; y+= size) {
    int fullRandomOp = int(random(0,255));
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
  
   int positionValue = size/4;
   pushMatrix();
    translate(i+positionValue,y+positionValue);
    rotate(random(0,360));
    beginShape();
     vertex(-positionValue,-positionValue);
     vertex(0,-positionValue);
     vertex(0,0);
     vertex(+positionValue,0);
     vertex(positionValue,positionValue);
     vertex(-positionValue,+positionValue); 
     vertex(-positionValue,-positionValue);
    endShape();
   popMatrix();
   }
 }


  println("Finished.");
  exit();
}
