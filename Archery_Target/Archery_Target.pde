  void setup () {
  size(400,400);
  face(200,200); 
  }
  
  void draw() {

  if(mousePressed)
   {
    fill(0);
    ellipse(mouseX,mouseY,10,10); 
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