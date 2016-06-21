  void setup() {
  size(640, 360);
  background(0);
  strokeWeight(20);
  frameRate(20);
  }
  
  void draw() {
  if(mousePressed == true) {
  for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(r);
    rect(i, 0, i, height);
  }
  }
  }
  void mouseReleased() {
    background(pmouseX/2);
  }