float blxwallDetection(int blix, float bl_xspeed) {
  if (bl_xspeed>0) {
    blleft=false;
    for (int x=blix+15; x<blix+21; x++) {
      for (int y=blinkyy-15; y<blinkyy+15; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          bl_xspeed=0;
        }
      }
    }
    if (blix>585) {
        bl_xspeed=0;
        blleft=true;
      }
    
    
  } else if (bl_xspeed<0) {
    blleft=true;
    for (int x=blix-20; x<blix-14; x++) {
      for (int y=blinkyy-15; y<blinkyy+15; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          bl_xspeed=0;
        }
      }
    }
    if (blix<15) {
        bl_xspeed=0;
        blleft=false;
      }
  }
  return bl_xspeed;
} 