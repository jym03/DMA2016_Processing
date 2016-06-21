  void setup() {
  size(640, 360);
  background(0);
  strokeWeight(20);
  frameRate(20);
  }
  
  void draw() {
  if(mousePressed && (mouseButton == LEFT)) {
  for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(200,r*2,i);
    rect(i, 0, i, height); }
  }
  else if(mousePressed && (mouseButton == RIGHT)) {
    for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(r,50,i);
    ellipse(i,i,0, height); }
    //background(pmouseX/2);
  }
  else {
  background(pmouseX/2);
  }
  }
  
    