import processing.video.*;
Capture video;
int[] backgroundPixels;
int numPixels;

void setup(){
  size(900,900);
  String[] cameras = Capture.list();
  for(int i = 0; i < cameras.length; i++){
    println(cameras[i]);
  }
  video = new Capture(this,width,height, cameras[1]);
  numPixels = video.width*video.height; 
  backgroundPixels = new int[numPixels];
  video.start();
  loadPixels(); // pixels[]
  
   
} 

void draw(){
  if(video.available()){
    video.read();
    video.loadPixels();
    color currColor;
    int currG, currB, currR;
    for(int i = 0; i < numPixels; i++){
      currColor = video.pixels[i];
      currR = int(red(currColor));
      currG = int(green(currColor));
      currB = int(blue(currColor));
       if(currG > (currR + currB)/ 1.1 && currG > 10){
         pixels[i] =  backgroundPixels[i];
       } else{
         pixels[i] = currColor;
       }
    }
    updatePixels();
  }
}

void keyPressed(){
  video.loadPixels();
  arrayCopy(video.pixels,backgroundPixels);
}
