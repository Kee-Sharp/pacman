PImage flipVertical(PImage img){
  PImage newimg=createImage(img.width, img.height, RGB);
  for(int x=0; x<img.width; x++){
    for(int y=0; y<img.height; y++){
      int location=x+y*img.width;
      float r=red(img.pixels[location]);
      float g=green(img.pixels[location]);
      float b=blue(img.pixels[location]);
      float a=alpha(img.pixels[location]);
      newimg.pixels[img.width-1-x+y*img.width]=color(r, g, b, a);
    }
  }
  return newimg;
}