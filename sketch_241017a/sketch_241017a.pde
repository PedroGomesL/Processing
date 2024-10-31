float x = 270;
float y = 130;
float w = 100;
float cor = width;
void setup() {
  size(640, 360);
  colorMode(RGB, width);
  
}

void draw() {
  background(0);
  stroke(255);
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + w) {
    cor = width;
    fill(cor);
  } else {
    fill(cor -= 10);
  }
  square(x, y, w);
}
