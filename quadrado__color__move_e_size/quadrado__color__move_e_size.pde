float extent = 150;
float positionX = 70;
boolean alter, move = false;
float r, g, b;
float x, y, xSpeed, ySpeed, size;
void setup() {
  size(640, 360);
  x = 50;
  y = 50;
  size = random(10, 150);
}

void mousePressed() {
  r = random(255);
  g = random(255);
  b = random(255);
  if (alter) {
    alter = false;
  } else {
    alter = true;
  }
  if (move) {
    move = false;
  } else {
    move = true;
  }
}

void draw() {
  background(0);
  x =  x + xSpeed;
  y = y + ySpeed;
  square(positionX + 50, height / 2, extent);
  square((positionX + extent + 100), height / 2, extent);
  square((positionX + extent  + extent + 150), height / 2, extent);
  circle(x, y, size);
  rectMode(CENTER);
  if (mouseX < 195 && mouseX > 45 && mouseY > 105 && mouseY < 255 && mousePressed) {
    fill(r, g, b);
  } else if (mouseX < 395 && mouseX > 245 && mouseY > 105 && mouseY < 255 && mousePressed) {
    if (move) {
      xSpeed = 5;
      ySpeed = 3;
    } else {
      xSpeed = 0;
      ySpeed = 0;
    }
  } else if (mouseX < 595 && mouseX > 445 && mouseY > 105 && mouseY < 255 && mousePressed) {
    size = random(10, 200);
  }
  if (x >= width - 25|| x <= 25) {
    xSpeed = xSpeed * -1;
  }
  if (y >= height - 25|| y <= 25) {
    ySpeed = ySpeed * -1;
  }
}
