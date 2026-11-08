
void setup() {
  size(2040,126);
  loadPixels();
  //  loop();

  
}

void draw() {




  background(0);
  int cols = width;
  int rows = height;
  float r, b, g = 0;
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
     
      r=0;
      b=(255*pow(sin((float(mouseX)/5100) * (i^j)),2));
      //g=(float(mouseX)/500) * (i^2 + j^2)%255;
    pixels[j*width+i] = color(r,g,b);

    }
  }

  updatePixels();

  //  println(frameCount);
}

