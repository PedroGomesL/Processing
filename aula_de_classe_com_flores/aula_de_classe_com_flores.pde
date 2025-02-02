import processing.pdf.*;
flower f1;
void setup() {
  size(800, 1000);
  colorMode(HSB, 360, 100, 100);
  f1 = new flower();
  beginRecord(PDF, "filename-###1.pdf");
}

void draw() {
  //background((f1.hue+180)% 360, 10,100);
  pushMatrix();
  translate((width / 2), (height / 2));
  scale(random(0.3, 0.5));
  f1.display();
  popMatrix();
  f1 = new flower();
  noLoop();
  endRecord();
}
