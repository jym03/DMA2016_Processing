package BreakoutPackage;

import java.awt.Color;
import processing.core.PApplet;

public class Ball { 
	PApplet p;
	float x;
	float y;
	float vx;
	float vy;
	float size;
	float velocity; 
	int count;
	Color color;
	
	public Ball(PApplet tempP, float nx, float ny, float nsize, Color c) {
		p = tempP;
		x = nx;
		y = ny;
		size = nsize;
		color = c;
		
		vx = p.random(-7,7);
		vy = p.random(-7,7);
	}
	
	public void update(){
		x = x + vx;
		y = y + vy;
		
		if(x > p.width+1 || x < 0){
			vx = -vx;
		}
		if(y > p.height+1 || y < 0){
			vy = -vy;
		}
	}
	
	public void paint() {
		p.noStroke();	
		p.fill(color.getRed(), color.getGreen(), color.getBlue());
		p.ellipse(x, y, size, size);
	}
	public void setVelocity(float tempvx,float tempvy){
		vx = tempvx;
		vy = tempvy;
	}
	public float getX(){
		return x;
	}
	public float getY(){
		return y;
	}
	public float getSize() {
		return size;
	}
	public float getVX() {
		return vx;
	}
	public float getVY() {
		return vy;
	}
}
