float scale = 10;
int rows, cols;
float[][] flowfield;

void setup() {
  size(800, 1000);
  colorMode(HSB, 356, 100, 100);
  rows = int(height/scale);
  cols = int(width/scale);
  flowfield = new float[rows][cols];
  generateFlowField();
  //generatePatternFlowField();
  background(#0FCC1C);
  frameRate(30);
}

void draw() {
  //drawFlowField();
  illustrateFlowField();
}
void illustrateFlowField(){
  float x,y;
  float newx,newy;
  int c = 0;
  x = random(width);
  y = random(height);
  do{
    float angle = flowfield[int(y/scale)][int(x/scale)];
    newx = x + scale*cos(angle);
    newy = y + scale*sin(angle);
    stroke(304, map(angle, 0, 2*PI, 100, 100), map(angle, 0, 2*PI, 100, 100));
    line(x, y, newx, newy);
    x = newx;
    y = newy;
    
    c++;
  }while(c < 20 && x > 0 && x < width && y > 0 && y < height);
}

void drawFlowField(){
  stroke(0,0,100);
  for(int r = 0; r < rows; r++){
    for(int c = 0; c < cols; c++){
      pushMatrix();
      translate(c*scale, r*scale);
      rotate(flowfield[r][c]);
      stroke(map(flowfield[r][c],0,2*PI,0,60),100,100);
      line(0,0,scale*3,0);
      popMatrix();
    }
  }
}
void generatePatternFlowField(){
  for(int r = 0; r < rows; r++){
    for(int c = 0; c < cols; c++){
      float value = sin(r*0.1) + cos(c*0.2);
      flowfield[r][c] = map(value, -2,2,0,2*PI);
    }}
}


void generateFlowField(){
  float noiseScale = 0.01;
  for(int r = 0; r < rows; r++){
    for(int c = 0; c < cols; c++){
      flowfield[r][c] = map(noise(r*noiseScale, c*noiseScale), 0,1,0,2*PI);
    }}
}
