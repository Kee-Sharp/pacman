PImage enlarge(PImage img){
  PImage newimg=createImage(img.width*2, img.height*2, RGB);
  for(int x=0; x<img.width; x++){
    for(int y=0; y<img.height; y++){
      int location=x+y*img.width;
      float r=red(img.pixels[location]);
      float g=green(img.pixels[location]);
      float b=blue(img.pixels[location]);
      if(r>5){
        newimg.pixels[2*x+2*y*newimg.width]=color(r, g, b);
        newimg.pixels[2*x+1+2*y*newimg.width]=color(r, g, b);
        newimg.pixels[2*x+(2*y+1)*newimg.width]=color(r, g, b);
        newimg.pixels[2*x+1+(2*y+1)*newimg.width]=color(r, g, b);
      }
      else{
        newimg.pixels[2*x+2*y*newimg.width]=color(r, g, b, 1);
        newimg.pixels[2*x+1+2*y*newimg.width]=color(r, g, b, 1);
        newimg.pixels[2*x+(2*y+1)*newimg.width]=color(r, g, b, 1);
        newimg.pixels[2*x+1+(2*y+1)*newimg.width]=color(r, g, b, 1);
      }
    }
  }
  
  return newimg;
}