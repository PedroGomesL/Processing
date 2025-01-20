float r = 1000, g = 100, b = 0;

void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB, 255); // Mudar para o modo de cor HSB

  for (int i = 0; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      float noiseValue = noise(i * 0.1, j * 0.1);
      float brightness = map(noiseValue, 0, 1, 0, 255);
      float hue = (brightness < 128) ? (brightness + 128) % 255 : brightness; // Calcular a cor complementar
      print(hue);
      fill(hue, 255, 255);
      square(j * 10, i * 10, 25);
    }
  }
    saveFrame("Imagem.png");
}
