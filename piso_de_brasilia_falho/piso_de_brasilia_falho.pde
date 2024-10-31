float spacing = 70;

void setup() {
  size(640, 360);
}

void draw() {
  background(161, 140, 119);
  stroke(48, 41, 62);
  strokeWeight(6);
  noFill();
  for (float x = 45; x < width; x += spacing) {
    for (float y = 45; y < height; y+= spacing) {
      float r = random(0, 2.5);
      if (r < 0.5) {
        strokeWeight(6);
        arc(x, y, spacing, spacing, radians(180), radians(270));
        strokeWeight(2);
        arc(x + 2, y + 2, spacing -10, spacing- 10, radians(180), radians(270));
        
      } else if (r > 0.5 && r <= 1.5) {
        strokeWeight(5);
        arc(x, y, spacing, spacing, radians(270), radians(360));
        strokeWeight(2);
        arc(x - 2, y +2, spacing -10, spacing- 10, radians(270), radians(360));
     
      } else if (r > 1.5 && r <= 2.5) {
        strokeWeight(5);
        arc(x, y, spacing, spacing, radians(0), radians(90));
        strokeWeight(2);
        arc(x - 1 , y - 2, spacing -10, spacing- 10, radians(0), radians(90));
      
      } else {
        strokeWeight(5);
        arc(x, y, spacing, spacing, radians(90), radians(180) );
        strokeWeight(2);
        arc(x + 2, y + 2, spacing -10, spacing- 10, radians(90), radians(180));
        
      }
    }
  }
  noLoop();
}
