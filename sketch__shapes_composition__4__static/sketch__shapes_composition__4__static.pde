int posX = 0;
int posY = 0;
int size = 50;
int border = 100;

int[][] colorSchemes= {
  {#970FF2, #0597F2, #49D907, #EAF205, #F24607},
  {#F2AEBB, #F29BB2, #BBE2F2, #0396A6, #62CDD9},
  {#C7D1D9, #054159, #3E768C, #5D98A6, #9BB9BF}
};

void setup() {
  size(600,600);
  background(colorSchemes[int(random(1,3))][0]);
  frameRate(20);

  for (int i=0; i < int(random(50,500)); i+=1) {
    drawRect();
  }
}

boolean randomBool() {
  return random(1) > .5;
}


void drawRect() {
  smooth();
  float randS = random(10,100);
  float randR = random(0,360);
  boolean isFilled = randomBool();
  int colorScheme = colorSchemes[int(random(1,colorSchemes.length))][int(random(1,5))];
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(randR);
  if (!isFilled) {
    noFill();
    stroke(colorScheme);
    strokeWeight(int(random(1,5)));    
  } else {
    noStroke();
    fill(colorScheme);
  }

  rect(int(random(-width/4,width/4)),int(random(-height/4,height/4)),randS,randS);
  popMatrix();
}
