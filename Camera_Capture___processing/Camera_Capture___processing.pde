import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
    
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
  fill(255);
  ellipse(mouseX,mouseY,100,100);
  fill(0,0,255);
  ellipse(mouseX-20,mouseY-20,20,20);
  fill(0,0,255);
  ellipse(mouseX+20,mouseY-20,20,20);
  fill(0);
  ellipse(mouseX,mouseY+25,40,40);
  
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
}