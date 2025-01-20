color[] c = {
  color(239, 227, 55), color(37, 93, 37), color(239, 150, 39), 
  color(211, 64, 6), color(250, 231, 245), color(168, 53, 131), 
  color(28, 170, 190), color(81, 19, 87), color(174, 21, 48), 
  color(157, 199, 47), color(16, 77, 139), color(127, 98, 154), 
  color(28, 170, 190)
};

class Cir {
  float x, y, extent, stroSize;
  int cor;

  // Construtor
  Cir(float _x, float _y, float _extent, float _stroSize, int _cor) {
    x = _x; // Ponto central
    y = _y; // Ponto central
    extent = _extent; // Diâmetro do círculo
    stroSize = _stroSize; // Espessura do contorno
    cor = _cor; // Índice da cor
  }

  void exibir() {
    noFill();
    strokeWeight(stroSize);
    stroke(c[cor]); // Define a rcor específica para este círculo
    circle(width /2 - 150, height / 2 - 500, extent); // Desenha o círculo em torno do mesmo ponto
  }
}
