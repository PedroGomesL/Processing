flower f1;
void setup(){
  size(800,1000);
  colorMode(HSB,360,100,100);
  f1 = new flower();
}

void draw(){
  //background((f1.hue+180)% 360, 10,100);
  pushMatrix();
  translate(random(width), random(height));
  scale(random(0.3,0.5));
  f1.display();
  popMatrix();
  f1 = new flower();
}
