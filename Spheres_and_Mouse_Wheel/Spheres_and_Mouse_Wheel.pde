int i;
float e;

void setup() {
  //noStroke();
  size(900,800, P3D);


}

void draw () 
{
  if(mousePressed=true) {
    //background(0); 
  }
    
  pushMatrix();
  
  background(255);
  mouseWheel();

  stroke(10);
  text(e,450,600);
  textSize(100);

  i++;
  //noStroke();
  translate(e*10,100,50*sin(i*2*PI/180.0));
  rotateY(i*PI/250.0);
  fill(124);
  lights();
  //box(40);
  sphere(50);
  
  popMatrix();
  pushMatrix();
  translate(e*35,175,50*sin(i*2*PI/180.0));
  rotateY(i*PI/50.0);
  fill(255,0,0);
  //noFill();
  lights();
  //box(40);
  sphere(50);
  
  popMatrix();
  pushMatrix();
  
  translate(e*60,250,50*sin(i*2*PI/180.0));
  rotateY(i*PI/180.0);
  fill(0,0,255);
  //noFill();
  lights();
  //box(40);
  sphere(50);

  popMatrix();


}
  
void mouseWheel(MouseEvent event) {
  e = event.getCount();
  
  println(e);

}