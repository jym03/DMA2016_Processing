   /* x-value of all 3 spheres changes when 'mousewheelvalue' changes
    y-value of all 3 spheres changes when mouse is moved around
    left click changes the spheres to boxes  
    'g' key makes the green box move randomly
    'r' key makes the red box move randomly
    'b' key makes the blue box move randomly 
    '1' key moves blue ball in a circle
    '2' key moves red ball in a cricle
    '3' key moves green ball in a circle */
    
  int i;
  float e;
  
  void setup() {
  fullScreen(P3D);
  }
  
  void draw () 
  {    
  pushMatrix();
  background(255);
  mouseWheel();
  stroke(10);
  text("MouseWheel Value=", 117,700);
  text(e,600,700);
  textSize(50);
  
  i++;
  if(keyPressed == true && key == '3') {
  translate(e*15,mouseY,50*tan(i*2*PI/180.0));
  }
  else {
  translate(e*15,mouseY,50*sin(i*2*PI/180.0));  
  }
  rotateY(i*PI/180.0);
  fill(0,255,0);
  lights();
  sphere(50);
  popMatrix();
  
  pushMatrix();
  if(keyPressed == true && key == '2') {
  translate(e*40,mouseY-115,50*tan(i*2*PI/180.0));
  }
  else {
  translate(e*40,mouseY-115,50*sin(i*2*PI/180.0));  
  }
  rotateY(i*PI/180.0);
  fill(255,0,0);
  lights();
  sphere(50);
  popMatrix();
  
  pushMatrix();
  if(keyPressed == true && key == '1') {
  translate(e*65,mouseY-230,50*tan(i*2*PI/180.0));
  }
  else {
  translate(e*65,mouseY-230,50*sin(i*2*PI/180.0));  
  }
  rotateY(i*PI/180.0);
  fill(0,0,255);
  lights();
  sphere(50);
  popMatrix();
  if(mousePressed && (mouseButton == LEFT)) {
  
  pushMatrix();
  background(255);
  mouseWheel();
  stroke(10);
  text("MouseWheel Value=", 117,700);
  text(e,600,700);
  textSize(50);
  
  i++;
  if(keyPressed == true && key == 'g') {
  translate(e*15,mouseY,50*sin(i*2*PI/random(50,50.1)));
  }
  else {
  translate(e*15,mouseY,50*sin(i*2*PI/180.0));  
  }
  rotateY(i*PI/180.0);
  fill(0,255,0);
  lights();
  box(50);
  popMatrix();
  
  pushMatrix();
  if(keyPressed == true && key == 'r') {
    translate(e*40,mouseY-115,50*sin(i*2*PI/random(50,50.1)));
  }
  else {
  translate(e*40,mouseY-115,50*sin(i*2*PI/180.0));
  }
  rotateY(i*PI/180.0);
  fill(255,0,0);
  lights();
  box(50);
  popMatrix();
  
  pushMatrix();  
  if(keyPressed == true && key == 'b') {
  translate(e*65,mouseY-230,50*sin(i*2*PI/random(50,50.1)));
  }
  else {
  translate(e*65,mouseY-230,50*sin(i*2*PI/180.0));  
  }
  rotateY(i*PI/180.0);
  fill(0,0,255);
  lights();
  box(50);
  popMatrix();
  }}
  void mouseWheel(MouseEvent event) {
  e = event.getCount();
  println(e); }