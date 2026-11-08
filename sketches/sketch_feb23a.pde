
void setup() {
  size(800,800);
  loadPixels();
  //  loop();

  println("monkeys");
}

void draw() {




  background(0);
  int cols = width;
  int rows = height;

  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      //    stroke(sin(i/(mouseX+1))*(cos(j/(mouseY+1))*exp(2))*255);
      //    stroke(((i^2)%255)/((sqrt(j)%10)+1));
      //stroke(((sin(i/50)*sin(i/25)*255)%255)/((sqrt(j)%8)+1));
      //   stroke(((sin(i/50)*sin(i/25)*255))/((sqrt(j)%8)+1));
      //stroke(i*j%255);
      //stroke((i*(j^2)/10)%255);
      //   stroke(i*(j/10)%255);
      //stroke(exp(sqrt(i/(j+1)))%255);
      //   stroke(255*exp(-1*(i^2)));
      //stroke(i%255,(j^2)%255,255*sin(j));
      //stroke(i%255,(j^2)%255,255*sin(j*i));
      //stroke(i%255,(j^2)%255,255*sin(j*i/3));
      //stroke(i%255,(j^3)%255,255*sin(i/(j+1)));
      //   stroke(sin((i+j)/3)*255*(i%500),(j^3)%255,255*sin(i/(j+1)));
      //    stroke(5*i/(j+1),i*j, i*j%255);
      //   stroke((i^2)*sin(i/4)%255,(j^2)*sin(i/4)%255,(i^2)*sin(i/4)%255);
      //stroke(log(10*i)*log(500*j),exp(i/100)*log(5000*j)%255,0);
      //stroke(log(10*i)*log(500*j),(exp(i/100)*j)%255,0);
      //stroke(log(10*i)*log(500*j),(exp(i/100)*j)%255,j*sin(i/20)%255);
      //   stroke(log(10*i)*log(500*j),(exp(i/100)*j)%255,255*sin(j/10.0)*sin(i/10.0));
      //stroke(i+j,i-j, i+j^2%255);
      //   stroke((i*j/5)%255,255*abs(sin(i*0.0246399))*abs(sin(j*0.0246399)),0);

      //      pixels[j*width+i] = color(0,0,int( sin(float(i)/ (mouseX/5+1) ) * cos(float(j)/ (mouseY/5+1) ) * exp(2) * 255 ));
      //      pixels[j*width+i] = color(i*(j/ (mouseX/10+1))%255,i*(j/ (mouseX/5+1))%255,(i)*(j/ (mouseX/15+1))%255);
      //    pixels[j*width+i] = color(0,j*(i/ (mouseX/15+1))%255,(i)*(j/ (mouseY/15+1))%255);
//      pixels[j*width+i] = color(255*int(mousePressed)*mouseX*(i*j/3%255),mouseX*(i*j/3%255)/150,mouseY*(i*j/3%255)/150);
    pixels[j*width+i] = color(mouseX*sqrt(i^2+j^2)%255);
      //     println( int( sin(i/ (mouseX+1) ) * cos(j/ (mouseY+1) ) * exp(2) * 255 ) );
    }
  }

  updatePixels();

  //  println(frameCount);
}

