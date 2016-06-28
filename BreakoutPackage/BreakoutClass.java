package BreakoutPackage;

import java.awt.Color;
import java.util.ArrayList;
import processing.core.PApplet;

public class BreakoutClass extends PApplet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PApplet.main("BreakoutPackage.BreakoutClass");
	}
	
	public Ball ball;
	public Rectangle paddle;
	public ArrayList<Rectangle> bricks = new ArrayList<Rectangle>();
	
	public void settings() {
	size(400,600);
	//background(5);	
	}
	
	public void setup() {
	ball = new Ball(this, width/2, height/2, 10, Color.GREEN);	
	paddle = new Rectangle(this,200,550,60,20);
	addBricks();
	}
	
	public void draw() {
	fill(0,0,0,15);
	rect(0,0,width,height);
	ball.update();
	ball.paint();
	paddle.display();
	updatePaddle();
	drawBricks();
	}
	
	private void updatePaddle(){
		paddle.setX(mouseX - 30);
		paddle.paint();
	}
	
	private void addBricks() {
		for(int i =0; i<10;i++){
			for(int j =0; j<10;j++){
				bricks.add(new Rectangle(this,40*i,100+15*j,35,10));
			}
		}
	}
	
	private void drawBricks(){
		for(int i =0; i < bricks.size(); i++){
			bricks.get(i).paint();
		}
	}
}
