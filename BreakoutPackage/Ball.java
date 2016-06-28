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
	int count;
	Color color;
	
	public Ball(PApplet tempP, float nx, float ny, float nsize, Color c) {
		p = tempP;
		x = nx;
		y = ny;
		size = nsize;
		color = c;
		
		vx = p.random(-8,8);
		vy = p.random(-8,8);
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
}
