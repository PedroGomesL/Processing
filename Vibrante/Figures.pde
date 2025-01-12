class Star {
  float pontas;
  float xPos, yPos;
  float incremento = 0;
  color starColor;  // Variável para armazenar a cor da estrela

  // Construtor para passar a quantidade de pontas e a posição
  Star(float _pontas, float _xPos, float _yPos) {
    pontas = _pontas;
    xPos = _xPos;
    yPos = _yPos;

    // Seleciona uma cor aleatória para a estrela apenas uma vez no construtor
    float cor = random(0, 1);
    if (cor < 0.25) {
      starColor = color(79, 173, 37);  // Verde
    } else if (cor > 0.25 && cor < 0.5) {
      starColor = color(9, 163, 220);  // Azul
    } else if (cor > 0.5 && cor < 0.75) {
      starColor = color(233, 41, 31);  // Vermelho
    } else {
      starColor = color(197, 137, 14);  // Amarelo
    }
  }

  void star() {
    float re = 35, ri = 0.5 * re;
    int nbr = int(pontas * 2);  // Número de pontos (pontas * 2)

    float[] x = new float[nbr];
    float[] y = new float[nbr];

    // Aplica a cor da estrela
    fill(starColor);
  
    strokeWeight(1);  // Ajusta a espessura do traço das linhas
    stroke(255);  // Não desenha o contorno da estrela

    // Gera as coordenadas dos pontos da estrela
    for (int i = 0; i < nbr; i++) {
      float r = (i % 2 == 0) ? re : ri;
      x[i] = xPos + r * cos(incremento + radians(i * 360.0 / nbr));
      y[i] = yPos + r * sin(incremento + radians(i * 360.0 / nbr));
    }

    // Começa o desenho da estrela
    beginShape();
    for (int i = 0; i < nbr; i++) {
      vertex(x[i], y[i]);  // Define os vértices para o contorno da estrela
    }
    endShape(CLOSE);  // Fecha a forma da estrela

    // Aumenta o ângulo de incremento para criar a ilusão de rotação
    incremento += 0.01;
  }
  void circ(){

  }
}
