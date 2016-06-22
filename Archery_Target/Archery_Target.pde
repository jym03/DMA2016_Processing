  void setup () {
  size(600,600);
  face(300,300); 
}
  
  void draw() {
  
  if(mousePressed && (mouseButton == RIGHT))
   {
    fill(0);
    ellipse(mouseX,mouseY,10,10); 
  }
  if(mousePressed && (mouseButton == LEFT))
    {
      face(mouseX,mouseY);
    }
  if(keyPressed == true) {
   background
   (0,mouseX,mouseY);
  }
  }
  
  void face(int x, int y) 
  
  {
  int i=10;
  for(i=10; i>0;i--){
    ellipse(x, y, i*20,i*20);
    if (i%2 == 0)
    {
    fill(255,0,0);
    }
    else
    {
       fill(255);
    }
  }
  }