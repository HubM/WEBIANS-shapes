int posX = 0;
int posY = 0;
int size = 50;
int border = 100;

void setup() {
  size(600,600);
  background(0);
  frameRate(20);
  smooth();
}

void draw() {
  float randS = random(size,width-border);
  float randR = random(0,360);
  fill(0, 20);
  stroke(0);
  strokeWeight(border);
  rect(0,0, width, height);
  
  translate(width/2,height/2);
  rotate(randR);
  stroke(random(0,255),random(0,255),random(0,255));
  strokeWeight(int(random(1,5)));
  noFill();
  rect(-randS/2,-randS/2,randS,randS);
}
