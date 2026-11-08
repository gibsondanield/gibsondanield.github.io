
void setup() {
  size(1020,1020);
  loadPixels();
  //  loop();

  
}

void draw() {




  background(0);
  int cols = width;
  int rows = height;
  float r,g,b=0;


  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
     
//    pixels[j*width+i] = color(mouseX*sqrt(pow(i,3)+pow(j,3))%255);
//      pixels[j*width+i] = color(mouseX*sqrt(pow((float(i)/5),2)+pow((float(j)/5),2))%255);

r=mouseX*sqrt(pow((float(i)/mouseY),mouseY)+pow((float(j)/mouseY),mouseY))%255;
g=0;
b=0;

pixels[j*width+i] = color(r,g,b);

    }
  }

  updatePixels();

  //  println(frameCount);
}

