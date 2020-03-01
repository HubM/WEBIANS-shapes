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
int[] colorTheme1 = {#D91A96, #25D997, #F2D335, #F25E3D};

int backgroundColorTheme2 = #0D0D0D;
int[] colorTheme2 = {#F2D479, #BF8924, #8C4E03, #262626};

int backgroundColorTheme3 = #FFFFFF;
int[] colorTheme3 = { #F24E29, #F2AE30, #78BFAB, #D93B84 };

int backgroundColorTheme4 = #A60F37;
int[] colorTheme4 = {#F21651, #D7F277, #F2EA7E, #F28B66};


void setup() {
  size(1748, 2480, PDF, "shapes-2-theme-4.pdf");
  background(backgroundColorTheme4);
  smooth();
  translate(width/2, height/2);
  factorialRectangle(int(random(500,2000)));
  
  // Exit the program 
  println("Finished.");
  exit();
}

float factorialRectangle(float n) {
  rotate(radians(n));
  translate(int(random(-width/4,width/4)),int(random(-height/4,height/4)));
  strokeWeight(int(random(2,4)));
  stroke(colorTheme4[int(random(0,4))]);
  noFill();
  ellipse(0,0,n,n);
  if (n > 1) {   
    factorialRectangle(n*random(0.6, 1));
  }
  return 1;
}
