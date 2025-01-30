void setup() {
  size(1500, 1500);
  noStroke();
  colorMode(HSB, 360,100,100);  // Definir o modo de cor HSB com alcance de 0 a 255

  for (int i = 0; i < 300; i++) {
    for (int j = 0; j < 300; j++) {

      // Obter um valor de ruído para variação de cor
      float noiseValue = noise(i * 0.071, j * 0.071);
      float brightness = map(noiseValue, 0, 1, 0, 360);

      // Calcular a cor complementar (hue oposto no círculo cromático)
      float hue = (brightness + 180) % 360;

      // Preencher com a cor complementar calculada
      fill(hue, 100, 100);
      square(j * 5, i * 5, 5);
    }
  }

  saveFrame("Imagem.tif");  // Salvar a imagem gerada
}
