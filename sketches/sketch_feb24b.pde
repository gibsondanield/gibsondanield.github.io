size(1000,1000);
int cols = width;
int rows = height;

for (float i=0; i<cols; i++) {
  for (float j=0; j<rows; j++) {
   stroke((i*j/5)%255,i*j/20%255,i*j/10%255);
//   stroke((i*j/5)%255,(i*j/5%255)*exp(-i/600),(i*j/5%255)*exp(-j/600));
   point(i,j);
  }
}

