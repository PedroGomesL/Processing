color[] ca = {
  color(239, 227, 55), color(37, 93, 37), color(239, 150, 39),
  color(211, 64, 6), color(250, 231, 245), color(168, 53, 131),
  color(28, 170, 190), color(81, 19, 87), color(174, 21, 48),
  color(157, 199, 47), color(16, 77, 139), color(127, 98, 154),
  color(28, 170, 190)
};
float  r = random(1200, width);
float rr = r;
float y3 = random (1200, width);
float y4 = y3;
class Line {
  float y1, y2;
  float x, x2 ; // Nova variável para a posição x
  int cor;

  // Construtor da linha
  Line(float _y1, float _y2, int _cor) {
    y1 = _y1;
    y2 = _y2;
    cor = _cor;
    x = 500; // Começa na posição x = 500
  }

  void exibir() {
    float r = red(ca[cor]);
    float g = green(ca[cor]);
    float b = blue(ca[cor]);

    stroke(r, g, b);
    strokeWeight(10);

    // Desenhar a linha com x variável

    line(0, y1, rr, y2); // Desenha a linha da posição atual

    // Atualizar a posição x gradualmente
    if (x < 700) {
      x += 2; // Velocidade da "queda" para a direita
    }
  }
  float rrr = random(rr, 700);
  float rrrr = rrr;
  int i = 5;

  void exibir2(int index) {
    float r = red(ca[cor]);
    float g = green(ca[cor]);
    float b = blue(ca[cor]);
    float y4 = y2;


    stroke(r, g, b);
    strokeWeight(10);

    line(rr, y2, width, y4);
  }
  // Função para atualizar y1 e y2, iniciando em uma nova posição
}
