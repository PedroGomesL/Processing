int blackSquare, greySquare, x, y;

void setup() {
  size(640, 360);
  background(255);
}

void mousePressed() {
  background(255);
}

void draw() {
  colorMode(RGB, 255);

  float x = random(width);
  float y = random(height);

  if (y < 120) {
    fill(0, random(150, 255), random(150, 255), 100);
  } else if (y < 240) {
    fill(random(150,255), random(150, 255), 0, 100);
  } else if (y < 360) {
    fill(random(150, 255), 0, random(150, 255), 100);
  }
  noStroke();
  square(x, y, 15);
}
