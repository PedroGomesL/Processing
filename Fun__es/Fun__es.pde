void setup(){
  size(640,360);
  rectMode(CENTER);
}

void lolipop(int x, int y, int sizeCircle, int r, int g, int b) {
 noStroke();
 fill(255);
 rect(x, y, 10, 200);
 fill(r, g, b);
 circle(x, y - 80, sizeCircle);
 noFill();
 strokeWeight(5);
 stroke(255);
 arc(x - 10, y - 20, 20, 70, radians(180), radians(270));
}

void draw(){
  lolipop(100, 150, 100, 255, 30, 30);
  
}
