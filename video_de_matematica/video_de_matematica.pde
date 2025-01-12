class Tri {
  float x1, x2, x3, y1, y2, y3;

  // Construtor corrigido
  Tri(float _x1, float _y1, float _x2, float _y2, float _x3, float _y3) {
    x1 = _x1;
    x2 = _x2;
    x3 = _x3;
    y1 = _y1;
    y2 = _y2;
    y3 = _y3;
  } 

  void exibir() {
    triangle(x1, y1, x2, y2, x3, y3);
  }
  void mover(xSpeed, ySpeed){
    
  }
}
Tri[] triangulo = new Tri[10];

void setup() {
  size(500, 500);
  int indice = 0;
  int multi = 0;
  for (int i = 0; i < 10; i ++) {
    triangulo[indice] = new Tri(0, 500, (50 * multi), 0, 50, 500);
    indice++;
    multi ++;
  }
  for (int o = 0; o < 10; o++) {
    triangulo[o].exibir();
  }
}

void draw() {
  for (let i = 0; i < 10; i ++) {
    triangulo[i]
  }
}
