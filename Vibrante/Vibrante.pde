float extent = 100;

int corPosition = 0;

void setup() {
  size(700, 700);
  background(239, 227, 55);

  // Criar círculos e linhas


  float y1 = random(100, 600), y2 = random(100, 600);
  for (int o = 0; o < linhas.length; o++) {
    linhas[o] = new Line(y1 + (o * 5), y2 + (o * 5), corPosition % c.length);
    corPosition = (corPosition + 1) % c.length;
  }

  // Criar estrelas com pontas e posições aleatórias
  for (int p = 0; p < estrelas.length; p++) {
    // Gerar número de pontas aleatório e garantir que seja par
    float pontasAleatorias = floor(random(1, 4)) * 2; // Garante que o número seja par (multiplica por 2)

    // Posições aleatórias para cada estrela
    float xPosAleatorio = random(50, 650);
    float yPosAleatorio = random(50, 650);

    estrelas[p] = new Star(pontasAleatorias, xPosAleatorio, yPosAleatorio);
  }

  frameRate(30);
}
float centerX = random(0,700); // Coordenada X central
float centerY = random(0,700); // Coordenada Y central
float initialExtent = 20; // Diâmetro inicial
float extentIncrement = 15; // Incremento no tamanho de cada círculo
float stroSize = 8; // Espessura inicial do contorno
void draw() {
  background(20, 20, 100);

  for (int i = 0; i < circulo.length; i++) {
    circulo[i] = new Cir(centerX, centerY, initialExtent + i * extentIncrement, stroSize, i % c.length);
  }
  // Desenhar os círculos e linhas
  for (int i = 0; i < circulo.length; i++) {
    circulo[i].exibir();
  }

  for (int o = 0; o < 25; o++) {
    linhas[o].exibir();
  }

  // Desenhar as estrelas
  for (int p = 0; p < estrelas.length; p++) {
    estrelas[p].star();
  }
}

Cir[] circulo = new Cir[12];
Line[] linhas = new Line[25];
Star[] estrelas = new Star[5];
