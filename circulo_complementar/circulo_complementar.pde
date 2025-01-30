// Ruídos:
float nx = 100, ny = 100, nr = 200;
void setup() {
size(1200, 1200);

colorMode(HSB, 360,100,100);
background(360, 100,100);
noFill();
}
void draw() {
float posX = map(noise(nx), 0, 1, 0, width);
float posY = map(noise(ny), 0, 1, 0, height);
float r = 100 + 200*noise(nr);
// Círculo de posição e raio variados:
stroke(180,100,100,20);
ellipse(posX,posY,r,r);
// Os incrementos de ruídos foram alterados
// inúmeras vezes até achar um movimento satisfatório.
//stroke(map(r, 100, 300, 100, 0), 20,100,20);

nx += 0.008;
ny += 0.005;
nr += 0.005;
}
