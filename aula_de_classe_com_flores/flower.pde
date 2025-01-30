class flower {
  float hue;
  int petalCount;
  int rowCount;
  float len;
  float wid;
  float rotate;
  flower() {
    hue = random(0, 360);
    petalCount= int(random(2, 8)) * 4;
    len = random(100, 200);
    wid = random(0.2, 0.5);
    rowCount = int(random(4, 10));
    rotate = random(0.5, 2.0);
  }

  void display() {
    stroke(0);
    strokeWeight(1);
    float deltaA = (2*PI)/petalCount;
    float petalen = len;
    pushMatrix();
    for (int r = 0; r < rowCount; r++) {
      for (float angle = 0; angle < 2*PI; angle += deltaA) {
        rotate(deltaA);
        //fill((hue+r*20)%360, 100, 100);
        //ellipse(petalen * 0.75, 0, petalen, petalen*wid);
        petal(petalen * 0.75, 0, petalen, petalen*wid,(hue+r*20)%360);
      }
      rotate(rotate);
      petalen = petalen *(1-3.0/rowCount);
    }
    popMatrix();
  }
  void petal(float x, float y, float lenP, float widP, float hueP) {
    stroke(0);
    for (int i = 20; i > 0; i--) {
      fill((hueP+i*2)%360, 100,5 *i);
      ellipse(x,y,lenP*i/20.0, widP*i/20.0);
      noStroke();
    }
  }
}
