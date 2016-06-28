package carsPackage;

import processing.core.PApplet;

public class Car {

		// Class variables (data)
		private float x;
		private float y;
		private int c;
		private float speed;
		PApplet ProcessingContext;
		
		// Class Constructor
		public Car(PApplet newProcessingContext, float nx, float ny, float nspeed){
			ProcessingContext = newProcessingContext;
			x = nx;
			y = ny;
			speed = nspeed;
			c = (int)ProcessingContext.random(256);
		}
		
		// Display the car (functionality)
		public void display(){
			ProcessingContext.fill(c);
			ProcessingContext.rect(x,y,30,10);
		}
		
		// Move the car (functionality)
		public void move(){
			if(x > ProcessingContext.width){
				x = -30;
			}
			x=x+(speed*2);
		}
	   public float getX() {
		return x;   
	   }
	   
	   }

