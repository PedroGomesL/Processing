void setup(){
  size(500,500);
  noStroke();
  colorMode(HSB,360,100,100);
  
  for(int i = 0; i < 50; i++){
    for(int j = 0; j < 50; j++){
      float vari = noise(i * 0.1, j * 0.1);
      float brin = map(vari,0,1,0,100);
      print("igual a =" + brin);
      fill(58,brin,brin);
      square(j * 10, i * 10, 10);
    }
  }
}
