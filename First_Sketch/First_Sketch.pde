
  void setup() {pm
  
  background(255,0,0); 
  size(600,600); 
  strokeWeight(.001); 
  stroke(50,205,10);
  
  }
  
  void draw() {
  if(mousePressed && (mouseButton == LEFT)){
  fill(50,255,50);
  rect(mouseX,mouseY,20,20);
  } 
  else if (mousePressed && (mouseButton == RIGHT)) {
  fill(50,50,255);
  rect(mouseX,mouseY,20,20);
  }
  else {
     //background(pmouseX/2,pmouseY/2,20);
  }}
  
  void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
}


  