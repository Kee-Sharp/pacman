void dotDetection(int i, int x, int y) {
  if (i==8 || i==47 || i==91 || i==143) {
    if (x-15<x_pos && x_pos<x+15 && y-15<y_pos && y_pos<y+15 && dot[i]==true) {
      dot[i]=false;
      score+=50;
      scared=true;
      playing=false;
      dotcount+=1;
    }
  } 
  else {
    if (x-15<x_pos && x_pos<x+15 && y-15<y_pos && y_pos<y+15 && dot[i]==true) {
      dot[i]=false;
      score+=10;
      dotcount+=1;
    }
  }
} 