int[] quantityFruit = {55, 95, 62, 81, 144};
String[] fruits = {"mango", "strawberry", "kiwi", "plum", "blueberry"};
int positionX = 0;
int slash = 0;
int[] colors = {210, 168, 7, 220, 0, 1, 137, 97, 47, 143, 68, 162, 69, 135, 249};
int totalFruits = 0;
void setup() {
  size(640, 360);
  background(0);
  textSize(18);
}

void draw() {
  int positionX = 100;
  noFill();
  strokeWeight(2);
  for (int i = 0; i < 5; i ++) {
    stroke(colors[i * 3], colors[i * 3 + 1], colors[i * 3 + 2]);
    rect(100 * i + 100, height / 4, 30, 190);
    fill(colors[i * 3], colors[i * 3 + 1], colors[i * 3 + 2]);
    slash = quantityFruit[i] - 190;
    rect(100 * i + 100, height / 4 - slash, 30, quantityFruit[i]);
    noFill();
    text(fruits[i], positionX , 300);
    text("qty:" + quantityFruit[i], positionX, 330);
    positionX += 100;
    totalFruits += quantityFruit[i];
  }
  text("total Fruits: " + totalFruits + "   Average Fruits: " + totalFruits / 5, 100, 30);
  noLoop();
}
