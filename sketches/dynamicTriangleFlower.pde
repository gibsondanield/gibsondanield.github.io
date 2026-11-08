
void setup() {
  size(510,510);
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
     
      //r=(255*pow(sin((float(mouseX+mouseY)/5100) * (i&j)),4));
      r=(255*pow(sin((float(mouseX)/5100) * (i^j)),2*(mouseY/10)));
      //b=(255*pow(sin((float(mouseX)/5100) * (i^j)),2));
      //g=(255*pow(sin((float(mouseX)/5100) * (i|j)),2));
    pixels[j*width+i] = color(r,r,0);

    }
  }

  updatePixels();

  //  println(frameCount);
}

