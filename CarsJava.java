package carsPackage;
import processing.core.PApplet;

public class Cars extends PApplet{
	
	public static void main(String[] args){
		PApplet.main("carsPackage.Cars"); // Start the parent program
	}
	
	//Create Object variables, instead of a bunch of value variables. 
	Car car1;
	Car car2;
	
	public void settings(){
		size(200,200);
	}
	
	public void setup(){
		// Initialize those Objects 
		car1 = new Car(this,0, 100, 2);
		car2 = new Car(this,255, 65, 3);
	}
	
	public void draw(){
		background(255);
		
		// Move EACH car object
		System.out.println(car1.getX());
		car1.move();
		car2.move();
		
		// Display EACH car object
		car1.display();
		car2.display();
	}
	
	// Create a class for a car. This will allow us to write the code for 
	// storing a Car's values, moving a car, and displaying a car only once!
	
} // End Cars
