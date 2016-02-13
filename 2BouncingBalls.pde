int rad = 40;
float xpos, ypos, xpos2, ypos2;

float xspeed = 3;
float yspeed = 4;
float xspeed2 = -4;
float yspeed2 = -6;

int xdirection = 1;
int ydirection = 1;
int xdirection2 = 1;
int ydirection2 = 1;

void setup(){
  size(400,400);
  noStroke();
  frameRate(30);
  smooth();
  fill(random(255), random(255), random(255), 75);

  xpos = width/2;
  ypos = height/2;
  xpos2 = width/3;
  ypos2 = height/3;
}

void draw(){
  background(255);

  xpos = xpos + (xspeed * xdirection);
  ypos = ypos + (yspeed * ydirection);

  
    if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
    ellipse(xpos,ypos,rad,rad);
  
    xpos2 = xpos2 + (xspeed2 * xdirection2);
    ypos2 = ypos2 + (yspeed2 * ydirection2);

      if (xpos2 > width-rad || xpos2 < rad) {
    xdirection2 *= -1;
  }
  if (ypos2 > height-rad || ypos2 < rad) {
    ydirection2 *= -1;
  }
  ellipse(xpos2,ypos2,rad,rad);

}
