color[] ca = {
  color(239, 227, 55), color(37, 93, 37), color(239, 150, 39),
  color(211, 64, 6), color(250, 231, 245), color(168, 53, 131),
  color(28, 170, 190), color(81, 19, 87), color(174, 21, 48),
  color(157, 199, 47), color(16, 77, 139), color(127, 98, 154),
  color(28, 170, 190)
};

class Line {
  float y1, y2;
  int cor;
  float offset; // Variável de deslocamento para noise

  // Construtor da linha
  Line(float _y1, float _y2, int _cor) {
    y1 = _y1;
    y2 = _y2;
    cor = _cor;
  }

  void exibir() {
    float r = red(ca[cor]);
    float g = green(ca[cor]);
    float b = blue(ca[cor]);
    
    stroke(r, g, b);
    strokeWeight(5);
    line(0, y1, 700, y2);
  }
}
