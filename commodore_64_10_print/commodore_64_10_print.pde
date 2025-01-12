float spacing = 20;

void setup() {
  size(fullcreen);
}

void draw() {
  frameRate(1);
  //background(161, 140, 119);
  background(220, 220,0);
  stroke(48, 41, 62);
  strokeWeight(6);
  noFill();
  for (float x = 0; x < width; x += spacing) {
    for (float y = 0; y < height; y+= spacing) {
      stroke(random(150, 255), random(0), random(150,255));
      float r = random(0, 1.5);
      if (r < 0.5) {
        line(x, y, x + spacing, y + spacing);
      } else if (r > 0.5 && r < 1) {
        line(x, y + spacing, x + spacing, y);
      } else if (r > 1) {
        line(x, y, x, y + spacing);
      } else {
        line(x, y, x + spacing, y);
      }
    }
  }
}
