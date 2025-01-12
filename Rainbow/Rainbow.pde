float[] blue = {11, 106, 136, 236, 1, 90, 248, 158, 79, 45, 197, 244, 146, 83, 161};
String[] colors = {"r: 11", "g: 106", "b: 136", "r: 236", "g: 1", "b: 90", "r: 248", "g: 158", "b: 79", "r: 45", "g: 197", "b: 244", "r: 146", "g: 83", "b: 161"};
void setup() {
  size(640, 360);
  textSize(18);
}

void draw() {
  noStroke();
  for (int i = 0; i < 5; i ++) {
    fill(blue[i * 3], blue[i * 3 + 1], blue[i * 3 + 2]);
    rect(100 * i + 70, height / 4, 100, 200);
  }
  int positionX= 75;
  fill(255, 255, 255);
  for (int o = 0; o < 5; o ++) {
    int positionY = 225;
    text(colors[o * 3], positionX, positionY);
    positionY += 20;
    text(colors[o * 3 + 1], positionX, positionY);
    positionY += 20;
    text(colors[o * 3 + 2], positionX, positionY);
    positionX += 100;
  }
  fill(0,0,0);
  text("PALETTE NAME: THE CODING RAINBOW", 70, 310);
}
