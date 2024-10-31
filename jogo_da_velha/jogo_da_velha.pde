
void setup() {
  size(700, 700);
}

void draw() {
  boolean alter = false;
  background(255);
  noStroke();
  fill(0);
  for (float y = 0; y <= height; y += 50) {
    for (float x = 0; x <=width; x += 100) {
      if (alter == true) {
        square(x + 50, y, 50);
      } else {
        square(x, y, 50);
      }
    }
    if (alter == false) {
      alter = true;
    } else {
      alter = false;
    }
  }
}
