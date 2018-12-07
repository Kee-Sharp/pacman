//https://en.wikipedia.org/wiki/Pac-Man#/media/File:Pac-man.png
//http://www.pacmanmuseum.com/history/pacman-scoring.php
//http://www.thinkgeek.com/images/products/additional/large/e861_pacman_fleece_blanket_whole.jpg
boolean demo = false;

int x_pos=65;
int y_pos=358;
int blinkyx=265;
int blinkyy=345;
int blx;
int bly;
int inkyx=60;
int inkyy=230;
int ix;
int iy;
int pinkyx=60;
int pinkyy=230;
int px;
int py;
int clydex=60;
int clydey=230;
int clx;
int cly;
float scorex=0;
float scorey=0;


int x_speed=0;
int y_speed=0;
float blxspeed;
float blyspeed;
float scorexspeed=0;
float scoreyspeed=0;
int highscore=500;
int hover1=150;
int hover2=150;
int back=1;
int lives=3;
float topmouth=2*PI;
float bottommouth=0;
PFont GillSans;
PFont Jokerman;
PFont Playbill;
PFont Gigi;
PFont High_tower;
PFont Score;
PFont Start;
PFont Gameover;
String letters="";
String name;
String cheat_code="";
PImage img;
PImage newimg;
PImage boot_up;
PImage skull;
PImage blinky1;
PImage blinky;
PImage blinky2;
PImage clyde1;
PImage clyde;
PImage inky1;
PImage inky;
PImage pinky1;
PImage pinky;
PImage Scared;
PImage Scared1;
boolean opening=true;
boolean controls=false;
boolean pre_playing=false;
boolean name_recognition=false;
boolean start=false;
boolean playing=false;
boolean paused=false;
boolean mrs=false;
boolean hit=false;
boolean scaredhit=false;
boolean lifelost=false;
boolean scared=false;
boolean blleft=false;
boolean gameover=false;
boolean youwin=false;
int[] dotx=new int[159];
int[] doty=new int[159];
boolean[] dot= new boolean[159];


boolean up=false;
boolean down=false;
boolean left=false;
boolean right=true;
boolean greaterthan=false;
int timer=0;
int cursor_timer=0;
int pause_timer=0;
int start_timer=0;
int scared_timer=0;
int scaredseconds=11;
int lifelosttimer=0;
int lifeseconds=3;
int a;
int b;
int startseconds=4;
int startalpha=255;
int seconds_left=21;
int delay=0;
int delay_count=1;
int score=0;
int dotcount=0;
int randompos=int(random(4));

void setup() {
  size(600, 732);
  //loading all fonts and images and clearing them up/resizing them
  img=loadImage("pacman1.png");
  newimg=removeExtra(img);
  skull=loadImage("skull.jpg");
  blinky1=loadImage("blinky.png");
  blinky=enlarge(blinky1); 
  blinky2=flipVertical(blinky);
  Scared1=loadImage("Scared.png");
  Scared=enlarge(Scared1);
  clyde1=loadImage("clyde.png");
  clyde=enlarge(clyde1);
  inky1=loadImage("inky.png");
  inky=enlarge(inky1);
  pinky1=loadImage("pinky.png");
  pinky=enlarge(pinky1);

  boot_up=loadImage("pacman_boot_screen.png");
  GillSans=createFont("GillSans", 16);
  Jokerman=loadFont("BaskOldFace-48.vlw");
  Playbill=createFont("Playbill", 16);
  Gigi=createFont("Gigi", 20);
  High_tower=loadFont("Constantia-30.vlw");
  Score=loadFont("EurostileRegular-48.vlw");
  Start=loadFont("Candara-48.vlw");
  Gameover=loadFont("Ayuthaya-48.vlw");
  //setting x and y values for all dots
  for (int i=0; i<dot.length; i++) {
    dot[i]=true;
    if (i<32) {
      dotx[i]=i%8*30+65;
      if (i<8) {
        doty[i]=102;
      } else if (i<16) {
        doty[i]=182;
      } else if (i<24) {
        doty[i]=472;
      } else {
        doty[i]=650;
      }
    } else if (i<64) {
      dotx[i]=i%8*30+330;
      if (i<40) {
        doty[i]=102;
      } else if (i<48) {
        doty[i]=182;
      } else if (i<56) {
        doty[i]=472;
      } else {
        doty[i]=650;
      }
    }
  }
  dotx[64]=65;
  dotx[65]=155;
  dotx[66]=275;
  dotx[67]=65;
  dotx[68]=155;
  dotx[69]=275;
  dotx[70]=65;
  dotx[71]=155;
  dotx[72]=215;
  dotx[73]=65;
  dotx[74]=95;
  dotx[75]=125;
  dotx[76]=155;
  dotx[77]=215;
  dotx[78]=245;
  dotx[79]=275;
  dotx[80]=155;
  dotx[81]=155;
  dotx[82]=155;
  dotx[83]=155;
  dotx[84]=155;
  dotx[85]=155;
  dotx[86]=155; 
  dotx[87]=155;
  dotx[88]=65;
  dotx[89]=155;
  dotx[90]=275;
  dotx[91]=65;
  dotx[92]=95;
  dotx[93]=155;
  dotx[94]=185;
  dotx[95]=215;
  dotx[96]=245;
  dotx[97]=275;
  dotx[98]=95;
  dotx[99]=155;
  dotx[100]=215;
  dotx[101]=65;
  dotx[102]=95;
  dotx[103]=125;
  dotx[104]=155;
  dotx[105]=215;
  dotx[106]=245;
  dotx[107]=275;
  dotx[108]=65;
  dotx[109]=275;

  dotx[110]=330;  
  dotx[111]=450;  
  dotx[112]=540;
  dotx[113]=330;  
  dotx[114]=450;  
  dotx[115]=540;
  dotx[116]=390;
  dotx[117]=450;
  dotx[118]=540;
  dotx[119]=330;
  dotx[120]=360;
  dotx[121]=390;
  dotx[122]=450;
  dotx[123]=480;
  dotx[124]=510;
  dotx[125]=540;
  dotx[126]=450;
  dotx[127]=450;
  dotx[128]=450;
  dotx[129]=450;
  dotx[130]=450;
  dotx[131]=450;
  dotx[132]=450;
  dotx[133]=450;
  dotx[134]=330;
  dotx[135]=450;
  dotx[136]=540;
  dotx[137]=330;
  dotx[138]=360;
  dotx[139]=390;
  dotx[140]=420;
  dotx[141]=450;
  dotx[142]=510;
  dotx[143]=540;
  dotx[144]=390;
  dotx[145]=450;
  dotx[146]=510;
  dotx[147]=330;
  dotx[148]=360;
  dotx[149]=390;
  dotx[150]=450;
  dotx[151]=480;
  dotx[152]=510;
  dotx[153]=540;
  dotx[154]=330;
  dotx[155]=540;

  dotx[156]=302;
  dotx[157]=302;
  dotx[158]=302;


  doty[64]=128;    
  doty[65]=128;
  doty[66]=128;    
  doty[67]=155;
  doty[68]=155;
  doty[69]=155;    
  doty[70]=208;
  doty[71]=208;
  doty[72]=208;    
  doty[73]=237;    
  doty[74]=237;    
  doty[75]=237;    
  doty[76]=237;
  doty[77]=237;    
  doty[78]=237;    
  doty[79]=237;    
  doty[80]=261;
  doty[81]=288;
  doty[82]=314;
  doty[83]=341;
  doty[84]=367;
  doty[85]=394;
  doty[86]=420;
  doty[87]=446;
  doty[88]=499;
  doty[89]=499;
  doty[90]=499;
  doty[91]=528;
  doty[92]=529;
  doty[93]=528;
  doty[94]=528;
  doty[95]=528;
  doty[96]=528;
  doty[97]=528;
  doty[98]=556;
  doty[99]=556;
  doty[100]=556;
  doty[101]=587;
  doty[102]=587;
  doty[103]=587;
  doty[104]=587;
  doty[105]=587;
  doty[106]=587;
  doty[107]=587;
  doty[108]=616;
  doty[109]=614;

  doty[110]=128;    
  doty[111]=128;
  doty[112]=128;    
  doty[113]=155;
  doty[114]=155;
  doty[115]=155;    
  doty[116]=208;
  doty[117]=208;
  doty[118]=208;    
  doty[119]=237;    
  doty[120]=237;    
  doty[121]=237;    
  doty[122]=237;
  doty[123]=237;    
  doty[124]=237;    
  doty[125]=237;    
  doty[126]=261;
  doty[127]=288;
  doty[128]=314;
  doty[129]=341;
  doty[130]=367;
  doty[131]=394;
  doty[132]=420;
  doty[133]=446;
  doty[134]=499;
  doty[135]=499;
  doty[136]=499;
  doty[137]=528;
  doty[138]=529;
  doty[139]=528;
  doty[140]=528;
  doty[141]=528;
  doty[142]=528;
  doty[143]=528;
  doty[144]=556;
  doty[145]=556;
  doty[146]=556;
  doty[147]=587;
  doty[148]=587;
  doty[149]=587;
  doty[150]=587;
  doty[151]=587;
  doty[152]=587;
  doty[153]=587;
  doty[154]=614;
  doty[155]=614;

  doty[156]=182;
  doty[157]=529;
  doty[158]=650;
}
void draw() {
  frameRate(60);
  //changing brightness for buttons if the mouse hovers over them
  if (223<mouseX && mouseX<375 && 482<mouseY && mouseY<500) {
    hover1=200;
  } else {
    hover1=100;
  }
  if (235<mouseX && mouseX<362 && 533<mouseY && mouseY<550) {
    hover2=200;
  } else {
    hover2=100;
  }
  if (50<mouseX && mouseX<80 && 32<mouseY && mouseY<50) {
    back=2;
  } else {
    back=1;
  }
  if (50<mouseX && mouseX<138 && 50<mouseY && mouseY<75) {
    b=200;
  } else {
    b=100;
  }




  fill(245, 52, 200);

  if (opening) {
    //welcome screen
    image(boot_up, 0, 0);

    textFont(Jokerman);
    textSize(24);
    textAlign(CENTER);
    fill(hover1);
    text("START GAME", 300, 500);
    fill(hover2);
    text("CONTROLS", 300, 550);
    
  } else if (controls) {
    //P1 and P2 controls
    background(247, 105, 174);
    textAlign(LEFT);
    textFont(GillSans);
    noStroke();
    fill(235, 255, 31);
    arc(60, 170, 30, 30, PI/6, 11*PI/6);
    dotDraw(92, 104, doty[92]);
    dotDraw(91, 104, 573);
    fill(144, 250, 58);
    text("PLAYER 1", 100, 170);
    text("W.....................Move Up", 140, 200);
    text("A....................Move Left", 140, 230);
    text("S..................Move Down", 140, 260);
    text("D..................Move Right", 140, 290);
    image(blinky, 45, 305);
    text("PLAYER 2", 100, 320);
    text("UP....................Move Up", 140, 350);
    text("LEFT...............Move Left", 140, 380);
    text("DOWN..........Move Down", 140, 410);
    text("RIGHT...........Move Right", 140, 440);
    text("P.................Pause Game", 100, 500);
    
    text("10 points", 125, 533);
    text("50 points", 127, 577);
    image(Scared, 90, 607);
    text("200 points", 127, 622);
    textFont(Playbill);
    textSize(25);
    fill(50*back, 216*back, 168*back);
    text("BACK", 50, 50);
  } else if (pre_playing) {
    //name entered
    background(107, 247, 65);
    textAlign(CENTER);
    textFont(GillSans);
    fill(30, 98, 211);
    text("From the makers at NAMCO, we would like to know who you are, in case you get a high score.", 150, 100, 300, 200);
    fill(0);
    textFont(High_tower);
    textSize(24);
    textAlign(LEFT);
    text("Type your name here:   "+letters, 100, 250);
    if (cursor_timer%60<30) {
      stroke(252, 25, 64);
      line(350+textWidth(letters), 235, 350+textWidth(letters), 250);
    }
    cursor_timer+=1;
  } else if (name_recognition) {
    //certain names have advantages and disadvantages
    if (name.equals("spencer")) {
      score=10000;
    } else if (name.equals("miles")) {
      image(skull, 0, 0);
      score=-10000;
    }
    name_recognition=false;
    start=true;
  } else if (start) {
    //countdown to playing
    image(newimg, 0, 0);
    textAlign(CENTER);
    textFont(Start);
    textSize(24);
    if (startseconds>0) {
      fill(73, 234, 158, startalpha);
      text(startseconds, 305, 305);
      startalpha-=3;
    } else if (startseconds>-1) {
      fill(73, 234, 158, startalpha);
      text("GO!", 305, 305);
    } else {
      start=false;
      playing=true;
    }
    if (start_timer%60==0) {
      startseconds-=1;
      startalpha=255;
    }
    start_timer+=1;
  } else if (playing) {
    //main playing mode
    textAlign(CENTER);
    noStroke();
    //offsets drawing of ghost so that hit detection is more accurate
    blx=blinkyx-15;
    bly=blinkyy-15;


    image(newimg, 0, 0);

    fill(252, 237, 64);
    //lose scenario
    if (lives==0) {
      playing=false;
      gameover=true;
    }
    //win scenario for demo
    if (demo && dotcount>=40) {
      playing=false;
      youwin=true;
    } else if (dotcount>=159) {
      playing=false;
      youwin=true;
    }
    //draw and detect all dots
    for (int i=0; i<dot.length; i++) {
      dotDraw(i, dotx[i], doty[i]);
      dotDetection(i, dotx[i], doty[i]);
    }


    //ghost hit detection
    if (sqrt(sq(x_pos-blinkyx)+ sq(y_pos-blinkyy))<=25) {

      lives-=1;
      x_pos=65;
      y_pos=358;
      x_speed=0;
      y_speed=0;
      if (lives==0) {
        gameover=true;
      } else {
        lifelost=true;
      }
      playing=false;
    } 

    //takes into account the direction both pac and the ghost are moving and halts if there is a wall
    x_speed=xwallDetection(x_pos, x_speed);
    if (x_pos<-15 && 351<y_pos && y_pos<381) {
      x_pos=615;
    }
    if (x_pos>615 && 351<y_pos && y_pos<381) {
      x_pos=-15;
    }
    y_speed=ywallDetection(y_pos, y_speed);
    blxspeed=blxwallDetection(blinkyx, blxspeed);
    blyspeed=blywallDetection(blinkyy, blyspeed);


    
    //pause delay decrease
    if (timer%60==0 && delay>0) {
      delay-=1;
    }
    //animation of pacman's mouth
    if (timer%60<30) {
      topmouth-=PI/90;
      bottommouth+=PI/90;
    } else {
      topmouth+=PI/90;
      bottommouth-=PI/90;
    }

    fill(239, 255, 31);
    //moving
    x_pos+=x_speed;
    y_pos+=y_speed;
    blinkyx+=blxspeed;
    blinkyy+=blyspeed;
    //displaying ghosts and pacman
    if (blleft) {
      image(blinky2, blx, bly);
    } else {
      image(blinky, blx, bly);
    }

    image(clyde, 250, 355);
    image(inky, 325, 330);
    image(pinky, 325, 355);
    if (mrs) {
      if (up) {
        arc(x_pos, y_pos, 30, 30, bottommouth-PI/2, topmouth-PI/2);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos-20, y_pos+12);
        vertex(x_pos-10, y_pos-8);
        vertex(x_pos-20, y_pos-8);
        vertex(x_pos-10, y_pos+12);
        endShape();
      } else if (down) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI/2, topmouth+PI/2);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos+20, y_pos+8);
        vertex(x_pos+10, y_pos-12);
        vertex(x_pos+20, y_pos-12);
        vertex(x_pos+10, y_pos+8);
        endShape();
      } else if (left) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI, topmouth+PI);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos-8, y_pos-20);
        vertex(x_pos+12, y_pos-10);
        vertex(x_pos+12, y_pos-20);
        vertex(x_pos-8, y_pos-10);
        endShape();
      } else if (right) {
        arc(x_pos, y_pos, 30, 30, bottommouth, topmouth);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos-12, y_pos-20);
        vertex(x_pos+8, y_pos-10);
        vertex(x_pos+8, y_pos-20);
        vertex(x_pos-12, y_pos-10);
        endShape();
      }
    } else {
      if (up) {
        arc(x_pos, y_pos, 30, 30, bottommouth-PI/2, topmouth-PI/2);
      } else if (down) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI/2, topmouth+PI/2);
      } else if (left) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI, topmouth+PI);
      } else if (right) {
        arc(x_pos, y_pos, 30, 30, bottommouth, topmouth);
      }
    }
    //displaying lives left
    for (int life=0; life<lives; life++) {
      arc(40*life+50, 700, 30, 30, 7*PI/6, 17*PI/6);
    }
    //displaying highscore, score, and pause delay(if there is one)
    textFont(Score);
    textSize(16);
    if (score>highscore) {
      highscore=score;
      greaterthan=true;
    }
    if (greaterthan) {
      text(name+": "+highscore, 100, 75);
    } else {
      text(highscore, 100, 75);
    }

    text("Pause Delay", 500, 50);
    if (delay>0) {
      text(delay, 500, 75);
    }

    text(name+"'s Score", 300, 50);
    text(score, 300, 75);
    text("HIGHSCORE", 100, 50);
    if (scorex==265 && scorey==345) {
      scorexspeed=0;
      scoreyspeed=0;
    }

    scorex+=scorexspeed;
    scorey+=scorexspeed;


    timer+=1;
  } else if (paused) {

    image(newimg, 0, 0);
    fill(235, 255, 31);
    if (up) {
      arc(x_pos, y_pos, 30, 30, bottommouth-PI/2, topmouth-PI/2);
    } else if (down) {
      arc(x_pos, y_pos, 30, 30, bottommouth+PI/2, topmouth+PI/2);
    } else if (left) {
      arc(x_pos, y_pos, 30, 30, bottommouth+PI, topmouth+PI);
    } else if (right) {
      arc(x_pos, y_pos, 30, 30, bottommouth, topmouth);
    }
    //paused mode ends after 20 seconds
    if (seconds_left==0) {
      pause_timer=0;
      seconds_left=20;
      delay_count+=1;
      delay=delay_count*30;
      paused=false;
      playing=true;
    }
    //decrease seconds left
    if (pause_timer%60==0) {
      seconds_left-=1;
    }
    //display seconds left and ghosts
    textAlign(CENTER);
    fill(255);
    text("PAUSED", 300, 425);
    fill(255, 0, 0);
    text(seconds_left, 300, 550);
    image(blinky, 250, 355);
    image(clyde, 250, 330);
    image(inky, 325, 330);
    image(pinky, 325, 355);

    pause_timer+=1;
  } else if (scared) {
    //after eating a power-up the ghosts are vulnerable for 10 seconds
    if (scaredseconds==0) {
      if(scaredhit==false){
      scared=false;
      scaredseconds=11;
      playing=true;
      }
    }
    //decrease seconds left
    if (scared_timer%60==0) {
      scaredseconds-=1;
    }
    if (dotcount==40) {
      scared=false;
      youwin=true;
    }
    //offsets the drawing of the ghost from its actual xy location for more accurate hit detection
    blx=blinkyx-15;
    bly=blinkyy-15;
    image(newimg, 0, 0);
    fill(235, 255, 31);
    //draw and detect dots
    for (int i=0; i<dot.length; i++) {
      dotDraw(i, dotx[i], doty[i]);
      dotDetection(i, dotx[i], doty[i]);
    }
    //update speeds if there is a wall
    x_speed=xwallDetection(x_pos, x_speed);
    if (x_pos<-15 && 351<y_pos && y_pos<381) {
      x_pos=615;
    }
    if (x_pos>615 && 351<y_pos && y_pos<381) {
      x_pos=-15;
    }
    y_speed=ywallDetection(y_pos, y_speed);
    blxspeed=blxwallDetection(blinkyx, blxspeed);
    blyspeed=blywallDetection(blinkyy, blyspeed);
    //once the "200" reaches home, resume playing
    if (sqrt(sq(scorex-265)+ sq(scorey-348))<=40) {
      scorexspeed=0;
      scoreyspeed=0;
      scaredhit=false;
      scared=false;
      playing=true;
      scaredseconds=11;
      scared_timer=0;
      blinkyx=265;
      blinkyy=348;
      scorex=0;
      scorey=0;
    }
    //pacman eats a ghost and it turns into a 200, heading back home
    if (sqrt(sq(x_pos-blinkyx)+ sq(y_pos-blinkyy))<=25) {


      if (scaredhit==false) {
        score+=200;
        scaredhit=true;
        scorex=blinkyx;
        scorey=blinkyy;

        scorexspeed=(265-blinkyx)/45;
        scoreyspeed=(348-blinkyy)/45;
      }
    }
    //display ghosts, pacman, lives left, score, highscore, and pause delay
    if (scaredhit==false) { 
      image(Scared, blx, bly);
    } else {
      textAlign(CENTER);
      text("200", scorex, scorey);
    }
    image(clyde, 250, 355);
    image(inky, 325, 330);
    image(pinky, 325, 355);
    if (mrs) {
      if (up) {
        arc(x_pos, y_pos, 30, 30, bottommouth-PI/2, topmouth-PI/2);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos-20, y_pos+12);
        vertex(x_pos-10, y_pos-8);
        vertex(x_pos-20, y_pos-8);
        vertex(x_pos-10, y_pos+12);
        endShape();
      } else if (down) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI/2, topmouth+PI/2);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos+20, y_pos+8);
        vertex(x_pos+10, y_pos-12);
        vertex(x_pos+20, y_pos-12);
        vertex(x_pos+10, y_pos+8);
        endShape();
      } else if (left) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI, topmouth+PI);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos-8, y_pos-20);
        vertex(x_pos+12, y_pos-10);
        vertex(x_pos+12, y_pos-20);
        vertex(x_pos-8, y_pos-10);
        endShape();
      } else if (right) {
        arc(x_pos, y_pos, 30, 30, bottommouth, topmouth);
        fill(255, 0, 0);
        beginShape();
        vertex(x_pos-12, y_pos-20);
        vertex(x_pos+8, y_pos-10);
        vertex(x_pos+8, y_pos-20);
        vertex(x_pos-12, y_pos-10);
        endShape();
      }
    } else {
      if (up) {
        arc(x_pos, y_pos, 30, 30, bottommouth-PI/2, topmouth-PI/2);
      } else if (down) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI/2, topmouth+PI/2);
      } else if (left) {
        arc(x_pos, y_pos, 30, 30, bottommouth+PI, topmouth+PI);
      } else if (right) {
        arc(x_pos, y_pos, 30, 30, bottommouth, topmouth);
      }
    }

    for (int life=0; life<lives; life++) {
      arc(40*life+50, 700, 30, 30, 7*PI/6, 17*PI/6);
    }
    textFont(Score);
    textSize(16);
    if (score>highscore) {
      highscore=score;
      greaterthan=true;
    }
    if (greaterthan) {
      text(name+": "+highscore, 100, 75);
    } else {
      text(highscore, 100, 75);
    }

    text("Pause Delay", 500, 50);
    if (delay>0) {
      text(delay, 500, 75);
    }

    text(name+"'s Score", 300, 50);
    text(score, 300, 75);
    text("HIGHSCORE", 100, 50);
    if (timer%60<30) {
      topmouth-=PI/90;
      bottommouth+=PI/90;
    } else {
      topmouth+=PI/90;
      bottommouth-=PI/90;
    }
    x_pos+=x_speed;
    y_pos+=y_speed;
    blinkyx+=blxspeed;
    blinkyy+=blyspeed;
    scorex+=scorexspeed;
    scorey+=scoreyspeed;  
    scared_timer+=1;
    timer+=1;
  } else if (lifelost) {
    //after losing a life pacman blinks for 3 seconds and the ghost is sent away
    image(newimg, 0, 0);
    fill(235, 255, 31);
    for (int i=0; i<dot.length; i++) {
      dotDraw(i, dotx[i], doty[i]);
    }
    if (lifelosttimer%30<15) {
      fill(235, 255, 31, 1);
    } else {
      fill(235, 255, 31, 255);
    }
    if (lifeseconds==0) {
      lifelost=false;
      playing=true;
      //ghost is sent to one of four locations randomly
      if (randompos==0) {
        blinkyx=60;
        blinkyy=102;
      } else if (randompos==1) {
        blinkyx=60;
        blinkyy=650;
      } else if (randompos==2) {
        blinkyx=540;
        blinkyy=102;
      } else {
        blinkyx=540;
        blinkyy=650;
      }
      lifeseconds=3;
      lifelosttimer=0;
      blxspeed=0;
      blyspeed=0;
      randompos=int(random(4));
    }
    if (lifelosttimer%60==0) {
      lifeseconds-=1;
    }


    arc(x_pos, y_pos, 30, 30, PI/6, 11*PI/6);

    lifelosttimer+=1;
  } else if (gameover) {
    //you lose
    image(newimg, 0, 0);
    fill(255, 0, 0);
    textFont(Gameover);
    textSize(24);
    text("GAME OVER", 300, 430);
    textFont(Playbill);
    textSize(32);
    fill(b);
    text("Main Menu", 93, 75);
  } else if (youwin) {
    //you win
    image(newimg, 0, 0);
    fill(0, 255, 0);
    textSize(30);
    text("YOU WIN", 300, 425);

    textFont(Playbill);
    textSize(32);
    fill(b);
    text("Main Menu", 93, 75);
  }
}


void keyPressed() {
  if (pre_playing) {
    //sets up the player's name
    if (key==BACKSPACE && letters.length()>0) {
      letters=letters.substring(0, letters.length()-1);
    } else if (key==ENTER || key==RETURN) {
      name=letters;
      name_recognition=true;
      pre_playing=false;
    } else if (key!=SHIFT) {
      letters+=key;
    }
  } else if (playing || scared) {
    //movement of pacman and ghost
    if (key==CODED) {
      if (scaredhit==false) {
        //ghost movement
        if (keyCode==UP) {
          blxspeed=0;
          blyspeed=-1;
        } else if (keyCode==DOWN) {
          blxspeed=0;
          blyspeed=1;
        } else if (keyCode==LEFT) {
          blxspeed=-1;
          blyspeed=0;
        } else if (keyCode==RIGHT) {
          blxspeed=1;
          blyspeed=0;
        }
      }
    } else {

      //a string of 10 letters is kept tracking the keystrokes, certain strings are cheatcodes
      if (cheat_code.length()<10) {
        cheat_code+=key;
        if (cheat_code.equals("illuminati")) {
          score+=666;
          stroke(249, 250, 71);
          beginShape(TRIANGLES);
          vertex(0, 300*sqrt(3));
          vertex(300, 0);
          vertex(600, 300*sqrt(3));
          endShape(CLOSE);
        } else if (cheat_code.equals("extralives")) {
          lives+=7;
        } else if (cheat_code.equals("wasdsawdda")) {
          lives=1;
        } else if (cheat_code.equals("mrs..acman")) {
          mrs=true;
        } else if (cheat_code.equals("wsdasawdaw")) {
          seconds_left=1000;
        }
      } else {
        cheat_code=cheat_code.substring(1, 10)+key;
        if (cheat_code.equals("illuminati")) {
          score+=666;
          stroke(249, 250, 71);
          beginShape(TRIANGLES);
          vertex(0, 300*sqrt(3));
          vertex(300, 0);
          vertex(600, 300*sqrt(3));
          endShape(CLOSE);
        } else if (cheat_code.equals("extralives")) {
          lives+=7;
        } else if (cheat_code.equals("wasdsawdda")) {
          lives=1;
        } else if (cheat_code.equals("mrs..acman")) {
          mrs=true;
        } else if (cheat_code.equals("dadadadada")) {
          score-=10;
        } else if (cheat_code.equals("wsdasawdaw")) {
          seconds_left=1000;
        }
      }
      //pausing
      if (key=='p' && delay==0) {
        if (playing) {
          playing=false;
          paused=true;
        }
      }
      //pacman movement
      if (key=='w') {
        y_speed=-1;
        x_speed=0;
      } else if (key=='a') {
        x_speed=-1;
        y_speed=0;
      } else if (key=='s') {
        y_speed=1;
        x_speed=0;
      } else if (key=='d') {
        x_speed=1;
        y_speed=0;
      }
    }
  } else if (paused) {
    //releasing pause mode manually
    if (key=='p') {
      pause_timer=0;
      seconds_left=21;
      delay=30;
      paused=false;

      playing=true;
    }
  }
}
void mouseClicked() {
  //buttons taking you to different stages of the game
  if (223<mouseX && mouseX<375 && 482<mouseY && mouseY<500 && opening) {
    opening=false;
    pre_playing=true;
  } else if (235<mouseX && mouseX<362 && 533<mouseY && mouseY<550 && opening) {
    opening=false;
    controls=true;
  } else if (50<mouseX && mouseX<80 && 32<mouseY && mouseY<50 && controls) {
    opening=true;
    controls=false;
  } else if (50<mouseX && mouseX<138 && 50<mouseY && mouseY<75 && (youwin||gameover)) {
    //going back to the home menu resets almost all of the variables
    youwin=false;
    gameover=false;
    opening=true;
    score=0;
    for (int i=0; i<159; i++) {
      dot[i]=true;
    }
    name="";
    letters="";
    cheat_code="";

    delay=0;
    delay_count=1;
    scared=false;
    scaredhit=false;
    mrs=false;
    x_pos=65;
    y_pos=358;
    blinkyx=265;
    blinkyy=345;
    x_speed=0;
    y_speed=0;
    blxspeed=0;
    blyspeed=0;
    scorexspeed=0;
    scoreyspeed=0;
    up=false;
    down=false;
    left=false;
    right=true;
    greaterthan=false;
    timer=0;
    cursor_timer=0;
    pause_timer=0;
    start_timer=0;
    scared_timer=0;
    scaredseconds=11;
    lifelosttimer=0;
    lifeseconds=3;

    startseconds=4;
    startalpha=255;
    seconds_left=21;
    lives=3;
    topmouth=2*PI;
    bottommouth=0;


    dotcount=0;
  }
}