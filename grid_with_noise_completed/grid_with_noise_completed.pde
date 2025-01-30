import processing.pdf.*;
final ArrayList<ArrayList<GridAngle>> grid = new ArrayList<ArrayList<GridAngle>>();

final int xOff = 100;
final int yOff = 100;
final int spacing = 5;
//final float rez = 0.0005;
final float rez = 0.003;
final int numLines = 3000;
final int lineLength = 100;
final float segmentLength = 2;

class GridAngle {
  int x, y, r;
  float angle;

  PVector v;

  GridAngle(int x_, int y_, int r_, float angle_) {
    x = x_;
    y = y_;

    angle = angle_;
    r = 1;
    v = new PVector(x + r * cos(angle),
      y + r * sin(angle));
  }

  void display() {
    strokeWeight(2);
    line(x, y, v.x, v.y);
  }
}


void drawFlowLine() {
  GridAngle fa = grid.get((int)random(grid.size())).get((int)random(grid.size()));

  beginShape();
  //PVector vec = new PVector(fa.x + 1 *cos(fa.angle),
  //  fa.y + 1 * sin(fa.angle));

  PVector vec = fa.v;

  curveVertex(vec.x, vec.y);

  float minDist = Float.MAX_VALUE;
  float dist = 0.0;
  int nearestX = 0;
  int nearestY = 0;
  GridAngle tempFA;

  for (int n = 0; n<lineLength; n++) {
    for (int x = 0; x<grid.size(); x++) {
      for (int y = 0; y<grid.get(0).size(); y++) {
        tempFA = grid.get(x).get(y);
        dist = (float)dist(vec.x, vec.y, tempFA.x, tempFA.y);

        if (dist<minDist) {
          minDist = dist;
          nearestX = x;
          nearestY = y;
        }
      }
    }

    minDist = Float.MAX_VALUE;
    float angle = grid.get(nearestX).get(nearestY).angle;

    vec = new PVector(vec.x + segmentLength*cos(angle),
      vec.y + segmentLength*sin(angle));
    curveVertex(vec.x, vec.y);
    fill(map(noise(vec.y + segmentLength * sin(angle)), 0, 1, 0, 150),map(noise(vec.y + segmentLength * sin(angle)), 0, 1, 0, 0),map(noise(vec.y + segmentLength * sin(angle)), 0, 1, 0, 200));
    stroke(map(noise(vec.y + segmentLength * cos(angle)), 0, 1, 0, 150),map(noise(vec.y + segmentLength * sin(angle)), 0, 1, 0, 0),map(noise(vec.y + segmentLength * sin(angle)), 0, 1, 0, 200));
  }


  endShape();
}


void createGrid() {
  for (int x = -xOff; x<width+xOff; x+=spacing) {
    ArrayList<GridAngle> row  = new ArrayList<GridAngle>();
    for (int y = -yOff; y<width+yOff; y+=spacing) {
      float angle = map(noise(x*rez, y*rez), 0.0, 1.0, 0.0, TAU);
      row.add(new GridAngle(x, y, spacing/2, angle));
    }
    grid.add(row);
  }
}

void setup() {
  size(600, 600);
  //fullScreen();
  createGrid();
  beginRecord(PDF, "filename-###6.pdf");
}

void draw() {
  background(0);
  for (int x = 0; x<grid.size(); x++) {
    for (int y = 0; y<grid.get(0).size(); y++) {
      grid.get(x).get(y).display();
    }
  }

  for (int n = 0; n < numLines; n++) {
    drawFlowLine();
  }
  endRecord();
  noLoop();
}
