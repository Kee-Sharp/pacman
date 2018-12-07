void dotDraw(int i, int x, int y) {
  if (i==8 || i==47 || i==91 || i==143) {
    if (dot[i]) {
      ellipse(x, y, 20, 20);
    }
  } else {
    if (dot[i]) {
      ellipse(x, y, 10, 10);
    }
  }
}