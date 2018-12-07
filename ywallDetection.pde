int ywallDetection(int ypos, int yspeed) {
 if (yspeed>0) {
    for (int x=x_pos-15; x<x_pos+15; x++) {
      for (int y=ypos+15; y<ypos+21; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          yspeed=0;
        }
      }
    }
    if (x_pos<20 || x_pos>580) {
      yspeed=0;
    }
    up=false;
    down=true;
    left=false;
    right=false;
  } else if (y_speed<0) {
    for (int x=x_pos-15; x<x_pos+15; x++) {
      for (int y=ypos-20; y<ypos-14; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          yspeed=0;
        }
      }
    }
    if (x_pos<20 || x_pos>580) {
      yspeed=0;
    }
    up=true;
    down=false;
    left=false;
    right=false;
  }
  return yspeed;
}