void setup () {
  size(400,400);
}

void draw() {
  face(mouseX,mouseY);
  if (keyPressed) {
   background(255); 
  }
}

void face(int x, int y) 
{
  ellipse(x, y, mouseX/2,mouseY/2);
  fill(mouseX, 150, mouseY);
}