PImage removeExtra(PImage img){
  PImage newimg=createImage(img.width, img.height, RGB);
  for(int i=0; i<img.pixels.length; i++){
    float r=red(img.pixels[i]);
    float g=green(img.pixels[i]);
    float b=blue(img.pixels[i]);
    if(r<11 && g<11 && b<11){
      newimg.pixels[i]=color(r, g, b);
    }
    else if(r<50 && 40<g && g<140 && 130<b && b<220){
      newimg.pixels[i]=color(25, 90, 200);
    }
    else if(r<50 && 35<g && g<100 && 50<b && b<130){
      newimg.pixels[i]=color(25, 90, 200);
    }
    
  }
  return newimg;
}