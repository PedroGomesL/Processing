void setup() {
  size(600, 180);
  background(255);
  colorMode(HSB, 360,100,100);
  float lado = 30;
  float hue = 0;
  float complementary = hue - 360;
  float numBlocosH = width / lado;
  float numBlocosV = height / lado;

  for (int i = 0; i < numBlocosH; i++) {
    for (int j = 0; j < numBlocosV; j++) {
      if (i%2 == 0 && j%2 == 0) {s
        triangle(i*lado, j*lado, i*lado + lado, j*lado, i*lado + lado, j*lado + lado);
      }
      if (i%2 != 0 && j%2 == 0) {
        triangle(i*lado, j*lado, i*lado, j*lado + lado, i*lado + lado, j*lado + lado);
      }
      if (i%2 != 0 && j%2 != 0) {
        triangle(i*lado + lado, j*lado, i*lado + lado, j*lado + lado, i*lado, j*lado + lado);
      }
      if (i%2 == 0 && j%2 != 0) {
        triangle(i*lado + lado, j*lado, i*lado, j*lado, i*lado, j*lado + lado);
      }
    }
  }
}

void draw() {
}
