import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    fill(0);
    stroke(0);
    ellipse(faces[i].x+35, faces[i].y+45, faces[i].width-70, faces[i].height-82);
    fill(50);
    stroke(50);
    rect(faces[i].x, faces[i].y-5, faces[i].width, faces[i].height-88);
    fill(50);
    stroke(50);
    rect((faces[i].x)+20, faces[i].y-42, faces[i].width-40, faces[i].height-60);
    
  }
}

void captureEvent(Capture c) {
  c.read();
}