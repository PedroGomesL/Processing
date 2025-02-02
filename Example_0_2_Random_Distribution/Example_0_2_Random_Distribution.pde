int[] randomCount;

int total = 20;

void setup(){
  size(640,240);
  randomCount = new int[total];
  for(int i = 0; i < total; i++){
    randomCount[i] = 0;
  } 
}

void draw(){
  background(255);
  int index = int(random(randomCount.length));
  randomCount[index]++;
  
  stroke(0);
  fill(127);
  int w = width / randomCount.length;
  
  for(int x = 0; x < randomCount.length; x++){
    rect(x * w, height - randomCount[x], w - 1, randomCount[x]);
  } 
}
