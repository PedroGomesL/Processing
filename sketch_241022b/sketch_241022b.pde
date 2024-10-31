float x = 320;
float y = 180;
float xSpeed = 5;
float ySpeed = 3;
float sizeCircle = 50;
float gravidade = 3;

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  noStroke();
  circle(x, y, sizeCircle);

  y = y + ySpeed++;
  print(y, ySpeed);
  if (y >= height || y <= 0) {
    ySpeed = ySpeed - gravidade;
    ySpeed = ySpeed * -1;
  }
}
