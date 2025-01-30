int dim;
flower f1;
void setup() {
  size(1500, 1500);
  dim = 1000;
  colorMode(HSB, 360, 100, 100);
  ellipseMode(RADIUS);
  strokeWeight(1);
  background(0);
  f1 = new flower();
  frameRate(1);
}

void draw() {
  translate((width / 2), (height /2));
  //for (int x = 0; x <= width; x+=dim) {
  //   drawGradient(0, 0);
  //}
  drawGradient(0, 0);
  scale(1.5);
  f1.display();
  saveFrame("Imagem.jpg");
  noLoop();
}


void drawGradient(float x, float y) {
  int radius = dim ;
  for (int r = radius; r > 0; --r) {
    fill(0, 100, 50);
    ellipse(x, y, r * 2, r * 2);
  }
}
