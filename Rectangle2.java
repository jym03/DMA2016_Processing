package shapes;
import processing.core.PApplet;

public class Rectangle2 extends PApplet{

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PApplet.main("shapes.Rectangle2");
	}
	
	Rectangle rectangle1;
	Rectangle rectangle2;
	
	public void settings(){
		size(400,400);
	}
	public void setup(){
		rectangle1 = new Rectangle(this,50,50,50,50);
		rectangle2 = new Rectangle(this,0,0,20,20);
	}
	public void draw(){
		if(mousePressed == true){
		background(255);

		rectangle1.display();
		rectangle2.display();
		}
	}
}
