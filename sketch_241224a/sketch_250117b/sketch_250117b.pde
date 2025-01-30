float[][] A;
float[][] B;
float[][] Anext;
float[][] Bnext;
float d1 = 1;
float d2 = 0.5;
float f = 0.018;
float k = 0.075;
int scale = 10;
int rows, columns;

void setup() {
  size(800, 1000);
  rows = height/scale;
  columns = width/scale;
  A = new float[rows][columns];
  B = new float[rows][columns];
  Anext = new float[rows][columns];
  Bnext = new float[rows][columns];
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < columns; c++) {
      A[r][c] = 1;
      B[r][c] = 0;
      Anext[r][c] = Bnext[r][c] = 0;
      if (random(100) < 5) {
        A[r][c] = 0;
        B[r][c] = 1;
      }
    }
  }
  noStroke();
}

void draw() {
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < columns; c++) {
      fill(A[r][c]*255, 0, B[r][c]*255);
      rect(c*scale, r*scale, scale, scale);
    }
  }
  update();
}
void update() {
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < columns; c++) {
      Anext[r][c] = A[r][c];
      Anext[r][c] += A[wrap(r-1, rows)][wrap(c-1, columns)]*d1*0.05;
      Anext[r][c] += A[wrap(r-1, rows)][wrap(c+1, columns)]*d1*0.05;
      Anext[r][c] += A[wrap(r+1, rows)][wrap(c-1, columns)]*d1*0.05;
      Anext[r][c] += A[wrap(r+1, rows)][wrap(c+1, columns)]*d1*0.05;

      Anext[r][c] += A[wrap(r-1, rows)][wrap(c, columns)]*d1*0.2;
      Anext[r][c] += A[wrap(r+1, rows)][wrap(c, columns)]*d1*0.2;
      Anext[r][c] += A[wrap(r, rows)][wrap(c-1, columns)]*d1*0.2;
      Anext[r][c] += A[wrap(r, rows)][wrap(c+1, columns)]*d1*0.2;

      Anext[r][c] += -1*A[r][c]*d1;

      Anext[r][c] -= A[r][c] * B[r][c] * B[r][c];
      Anext[r][c] += f*(1-A[r][c]);
    }
  }
  float ktemp;
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < columns; c++) {
      ktemp = k + abs(c - columns/2)*0.0003;
      Bnext[r][c] = B[r][c];
      Bnext[r][c] += B[wrap(r-1, rows)][wrap(c-1, columns)]*d2*0.05;
      Bnext[r][c] += B[wrap(r-1, rows)][wrap(c+1, columns)]*d2*0.05;
      Bnext[r][c] += B[wrap(r+1, rows)][wrap(c-1, columns)]*d2*0.05;
      Bnext[r][c] += B[wrap(r+1, rows)][wrap(c+1, columns)]*d2*0.05;

      Bnext[r][c] += B[wrap(r-1, rows)][wrap(c, columns)]*d2*0.2;
      Bnext[r][c] += B[wrap(r+1, rows)][wrap(c, columns)]*d2*0.2;
      Bnext[r][c] += B[wrap(r, rows)][wrap(c-1, columns)]*d2*0.2;
      Bnext[r][c] += B[wrap(r, rows)][wrap(c+1, columns)]*d2*0.2;

      Bnext[r][c] += -1*B[r][c]*d2;

      Bnext[r][c] += A[r][c] * B[r][c] * B[r][c];
      Bnext[r][c] -= (f+ktemp)*B[r][c];
    }
  }
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < columns; c++) {
      A[r][c] = Anext[r][c];
      B[r][c] = Bnext[r][c];
    }
  }
}

int wrap(int v, int limit) {
  return((v+limit)%limit);
}
