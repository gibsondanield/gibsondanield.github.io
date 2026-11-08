int x=640;
int y=640;

void setup() {
  
  
  size(x,y);
  noStroke();
  background(00);
 

}

int colorValue=152;
float theta = 0;
int alpha =100;
void draw() {
  
  if (mousePressed && (mouseButton == RIGHT)) {
    
    background(0);
  }
  float d=mouseY/4;
  float dcos = d*(sqrt(3)/2 + 1);
  int colorParam = mouseX/2;
  color white = color(255);
  color black = color(0);
  color green = color(colorValue,251,colorValue);
  color green1 = color(colorValue-colorParam,251,colorValue);
  color green2 = color(colorValue-colorParam,251,colorValue+colorParam);
  color green3 = color(colorValue,251,colorValue-colorParam);
  color green4 = color(colorValue+colorParam,251,colorValue);
  color red = color(100,20,10);
  color blue = color(0,5,255);
  //#1
  pushMatrix();
  translate(x/2, y/2);
  if (mousePressed && (mouseButton == LEFT)) {
    theta = float(pmouseY)/35;
  }
  rotate(theta);
  fill(green1,alpha);
  ellipse(-d/2, dcos, d, d);
  
  
  //#2

  fill(green,alpha);
  ellipse(0, d, d, d);

  
  //#3

  fill(green2,alpha);
  ellipse(0, 0, d, d);

  //#4

  fill(green3,alpha);
  ellipse(0, -d, d, d);

  
  //#5

 
  fill(green4,alpha);
  ellipse(d/2, -dcos, d, d);
  popMatrix();

}

void mouseWheel(MouseEvent event) {
  int e = event.getCount();
  colorValue = (colorValue + e*3);
  if (colorValue < -10) {
    colorValue = -10;
  }
  if (colorValue > 280) {
    colorValue = 280;
  }
  println(colorValue);
}
