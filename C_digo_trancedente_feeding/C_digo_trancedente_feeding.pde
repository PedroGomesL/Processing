// Valores iniciais dos ruídos:
float nxi = random(100);
float nyi = random(100);
void setup() {
size(500,500);
frameRate(30);
background(255);
}
void draw() {
//background(255);
strokeWeight(2);
// Separação entre uma linha e outra (em pixels):
int sepLinhas = 2;
// Tamanho das linhas desenhadas (em pixels):
float tamLinha = 10;
// Incrementa o valor inicial dos ruídos:
nxi += 0.01;
nyi += 0.01;
// Define os ruídos locais a serem usados na angulação das retas:
float ny = nyi;
float nx = nxi;
for (int y = 0; y <= height; y += sepLinhas) {
// Incrementa e reinicia o ruído local:
ny += 0.1;
nx = nxi;
for (int x = 0; x <= width; x += sepLinhas) {
// Incrementa o ruído local:
nx += 0.1;
// Define a variável que irá determinar a inclinação das retas:
float angulo = 360*noise(nx,ny);
// Cores baseadas na inclinação das retas:
float blue = 60 + map(angulo, 0, 360, 0, 255);
stroke(blue,0,0);
// Cálculo do ponto final da reta angulada:
float xf = x + tamLinha*cos(radians(angulo));
float yf = y + tamLinha*sin(radians(angulo));
line(x,y,xf,yf);
}
if(frameCount == 5) {
saveFrame("Imagem.png");
}
}
}
