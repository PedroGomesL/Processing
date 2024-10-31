float x = 0;
float y = 0;
float xSpeed = 5;
float ySpeed = 3;
float sizeCircle = 30;
float grown = 0.5;

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  noStroke();
  circle(x, y, sizeCircle);

  x = x + xSpeed;
  y = y + ySpeed;
  sizeCircle = + sizeCircle + grown;

  if (x >= width || x <= 0) {
    xSpeed = xSpeed * -1;
    grown = grown * -1;
    fill(random(255), random(255), random(255));
  }
  if (y >= height || y <= 0) {
    ySpeed = ySpeed * -1;
    grown = grown * -1;
    fill(random(255), random(255), random(255));
  }
}
