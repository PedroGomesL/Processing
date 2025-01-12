void setup() {
  size(500, 500);
  background(255);
  float side = 250;
    triangle(0, 0, 0, 250, side, 0);
    
    triangle(0, side, side / 2, side / 2, side / 2, (side / 2) + side);
   
    triangle(side / 2, side, side / 2, (side / 2) + side, (side / 2) + side / 2, side + (side / 2));
  
}

class Tri {
  float side;

  Tri(float _side) {
    side = _side;
  }
  float hipote(float i) {
    return side / i;
  }
}
