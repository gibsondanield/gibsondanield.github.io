
void setup() {
  size(1020,1020);
  loadPixels();
  //  loop();

  
}

void draw() {




  background(0);
  int cols = width;
  int rows = height;

  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
     
    pixels[j*width+i] = color(mouseX*log(sqrt(i^2+j^3))%255,mouseX*log(i^2+j^2)%255,mouseY*sqrt(i^3+j^3)%255);
      //     println( int( sin(i/ (mouseX+1) ) * cos(j/ (mouseY+1) ) * exp(2) * 255 ) );
    }
  }

  updatePixels();

  //  println(frameCount);
}

