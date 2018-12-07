int xwallDetection(int xpos, int xspeed) {
  if (xspeed>0) {
    for (int x=xpos+15; x<xpos+21; x++) {
      for (int y=y_pos-15; y<y_pos+15; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          xspeed=0;
        }
      }
    }
    
    up=false;
    down=false;
    left=false;
    right=true;
  } else if (xspeed<0) {
    for (int x=xpos-20; x<xpos-14; x++) {
      for (int y=y_pos-15; y<y_pos+15; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          xspeed=0;
        }
      }
    }
    
    up=false;
    down=false;
    left=true;
    right=false;
  }
  return xspeed;
} 