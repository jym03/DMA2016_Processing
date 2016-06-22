/**
 *  Droppings Remade
 *
 *  This example shows how to create a simple remake of my favorite
 *  soundtoy:<br/>
 *
 *    <a href=http://www.balldroppings.com/>BallDroppings</a> 
 *       by Josh Nimoy.
 */
 
import fisica.*;

FWorld mundo;
FBox caja;

float x, y;

void setup() {
  size(600,600);
  smooth();
  
  Fisica.init(this);
  
  mundo = new FWorld();
  mundo.setGravity(0, 200);
  
  frameRate(12);
  background(0);
}

void draw() {
  fill(0, 100);
  noStroke();
  rect(0, 0, width, height);
  
  if ((frameCount % 5) == 0) {
    FCircle bolita = new FCircle(random(4,50));
    bolita.setNoStroke();
    //fill(255);
    bolita.setFill(random(0,255),random(0,255),random(0,255));
    bolita.setPosition(random(0,600),0);
    bolita.setVelocity(0, 400);
    bolita.setRestitution(.9);
    bolita.setDamping(0);
    mundo.add(bolita);
  }
  
  mundo.step();
  mundo.draw(this);
}

void mousePressed() {
  caja = new FBox(4, 4);
  caja.setStaticBody(true);
  caja.setStroke(255);
  caja.setFill(255);
  caja.setRestitution(0.9);
  mundo.add(caja);
  
  x = mouseX;
  y = mouseY;
}

void mouseDragged() {
  if (caja == null) {
    return;
  }
  
  float ang = atan2(y - mouseY, x - mouseX);
  caja.setRotation(ang);
  caja.setPosition(x+(mouseX-x)/2.0, y+(mouseY-y)/2.0);
  caja.setWidth(dist(mouseX, mouseY, x, y));
  
}

void contactStarted(FContact contacto) {
  FBody cuerpo1 = contacto.getBody1();
  cuerpo1.setFill(255, 0, 0);
  cuerpo1.setStroke(255, 0, 0);
  
  noFill();
  stroke(255);
  ellipse(contacto.getX(), contacto.getY(), 30, 30);
}

void contactEnded(FContact contacto) {
  FBody cuerpo1 = contacto.getBody1();
  cuerpo1.setFill(255);
  cuerpo1.setStroke(255);
}

void keyPressed() {
  try {
    saveFrame("screenshot.png");
  } 
  catch (Exception e) {
  }
}