float blywallDetection(int bliy, float bl_yspeed) {
  if (bl_yspeed>0) {

    for (int x=blinkyx-15; x<blinkyx+15; x++) {
      for (int y=bliy+15; y<bliy+21; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          bl_yspeed=0;
        }
      }
    }
    if (blx<20 || blx>580) {
      bl_yspeed=0;
    }
  } else if (bl_yspeed<0) {
    for (int x=blinkyx-15; x<blinkyx+15; x++) {
      for (int y=bliy-20; y<bliy-14; y++) {
        float r=red(newimg.pixels[x+y*width]);
        float g=green(newimg.pixels[x+y*width]);
        float b=blue(newimg.pixels[x+y*width]);
        if (r==25 && g==90 && b==200) {
          bl_yspeed=0;
        }
      }
    }
    if (blx<20 || blx>580) {
      bl_yspeed=0;
    }
  }
  return bl_yspeed;
}