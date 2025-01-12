void setup() {
  size(800, 600); // Tamanho da tela
  background(248, 247, 247); // Fundo preto
  noLoop(); // Apenas desenha o mapa uma vez
}

void draw() {
   strokeWeight(5);
  float spacing = 40; // Espaçamento entre os pontos
  
  boolean[][] connected = new boolean[int(width / spacing) + 1][int(height / spacing) + 1]; // Matriz de conexões
  for (float x = 0; x < width; x += spacing) {
    for (float y = 0; y < height; y += spacing) {
      float chance = random(1);
      strokeWeight(5);
      if(chance < 0.2) {
        strokeWeight(8);
      }
        stroke(187, 200, 213); // Branco (80% de chance)
      

      // Gera uma conexão garantida
      float r = random(0, 1.5);
      if (!connected[int(x / spacing)][int(y / spacing)]) {
        // Se não está conectado, força uma conexão
        if (r < 0.5) {
          line(x, y, x + spacing, y + spacing); // Diagonal para baixo
          markConnected(x, y, x + spacing, y + spacing, connected, spacing);
        } else if (r > 0.5 && r < 1) {
          line(x, y + spacing, x + spacing, y); // Diagonal para cima
          markConnected(x, y + spacing, x + spacing, y, connected, spacing);
        } else if (r > 1) {
          line(x, y, x, y + spacing); // Vertical
          markConnected(x, y, x, y + spacing, connected, spacing);
        } else {
          line(x, y, x + spacing, y); // Horizontal
          markConnected(x, y, x + spacing, y, connected, spacing);
        }
      } else {
        // Conexão aleatória adicional
        if (r < 0.5) {
          line(x, y, x + spacing, y + spacing);
          markConnected(x, y, x + spacing, y + spacing, connected, spacing);
        } else if (r > 0.5 && r < 1) {
          line(x, y + spacing, x + spacing, y);
          markConnected(x, y + spacing, x + spacing, y, connected, spacing);
        } else if (r > 1) {
          line(x, y, x, y + spacing);
          markConnected(x, y, x, y + spacing, connected, spacing);
        } else {
          line(x, y, x + spacing, y);
          markConnected(x, y, x + spacing, y, connected, spacing);
        }
      }
    }
  }
}

// Função para marcar conexões na matriz
void markConnected(float x1, float y1, float x2, float y2, boolean[][] connected, float spacing) {
  int gridX1 = int(x1 / spacing);
  int gridY1 = int(y1 / spacing);
  int gridX2 = int(x2 / spacing);
  int gridY2 = int(y2 / spacing);
  
  connected[gridX1][gridY1] = true;
  connected[gridX2][gridY2] = true;
}
