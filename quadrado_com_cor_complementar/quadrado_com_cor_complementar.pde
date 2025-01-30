

void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB, 255);  // Definir o modo de cor HSB com alcance de 0 a 255

  for (int i = 0; i < 50; i++) {  
    for (int j = 0; j < 50; j++) {  

      // Obter um valor de ruído para variação de cor
      float noiseValue = noise(i * 0.071, j * 0.071);
      float brightness = map(noiseValue, 0, 1, 0, 255);

      // Calcular a cor complementar (hue oposto no círculo cromático)
      float hue = (brightness + 128) % 255;

      // Preencher com a cor complementar calculada
      fill(hue, 255, 255);
      square(j * 10, i * 10, 10);
    }
  }

  saveFrame("Imagem.png");  // Salvar a imagem gerada
}
