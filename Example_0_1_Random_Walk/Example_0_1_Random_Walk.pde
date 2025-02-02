Walker walker;

void setup() {
  size(400, 400);
  walker = new Walker();
}

void draw() {
  walker.step();
  walker.show();
}

class Walker {
  float x, y;
  Walker() {
    x = width / 2;
    y = height  / 2;
  }
  void show() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float xstep = (random(-1, 1));
    float ystep = (random(-1, 1));
    x += xstep;
    y += ystep;
  }
}
