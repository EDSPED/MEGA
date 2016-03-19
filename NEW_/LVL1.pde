//int megay=300;
int camera2X;
int camera2Y;
void page4() {
  background(255);
  mapWidth = 1100;

  //mega motion4
  if (goRight == 1) 
    megax += 8;
  if (goLeft == 1) 
    megax-=8;

  canJump = 0;//can't jump!
  megay+=megaVY;
  megaVY+=.5;

  if (megaVY >= 10) 
    megaVY = 10;


  //platform collisions

  if (megax+18>p1X && megax<p1X+p1W && megay>=p1Y && megay<=p1Y+megaVY) {
    megay=p1Y;
    megaVY = 0; 
    canJump = 1;
  }
  if (megax+9>p2X && megax-9<p2X+p2W && megay>=p2Y && megay<=p2Y+megaVY) {
    megay=p2Y;
    megaVY = 0; 
    canJump = 1;
  }
  if (megax+9>p3X && megax-9<p3X+p3W && megay>=p3Y && megay<=p3Y+megaVY) {
    megay=p3Y;
    megaVY = 0; 
    canJump = 1;
  }

  if (megax+9>p4X && megax-9<p4X+p4W && megay>=p4Y && megay<=p4Y+megaVY) {
    megay=p4Y;
    megaVY = 0; 
    canJump = 1;
  }
  camera2();

  if (item1Visible == 1) {
    drawItem(item1X - camera2X, item1Y - camera2Y, #FFFF00, 1);
  }
  if (item2Visible == 1) {
    drawItem(item2X - camera2X, item2Y - camera2Y, #FFFF00, 2);
  }
  if (item3Visible == 1) {
    drawItem(item3X - camera2X, item3Y - camera2Y, #FFFF00, 3);
  }
  enemy(enemy1x-camera2X, enemy1y);
  enemy(enemy2x-camera2X, enemy2y);
  enemy(enemy3x-camera2X, enemy3y);
  if (hitWait > 0) {
    hitWait++;
    if (hitWait > 20) {
      hitWait = 0;
    }
  }
  drawhearts(heartX+210, heartY);
  if (healthmax==8) {
    extraheart(heartX+210-120, heartY);
  }
  drawPlatforms(p1X-camera2X, p1Y, p1W);
  drawPlatforms(p2X - camera2X, p2Y, p2W);
  drawPlatforms(p3X - camera2X, p3Y, p3W);
  drawPlatforms(p4X - camera2X, p4Y, p4W);


  boxes(p1X-camera2X, p1Y, p1W);
  boxes(p2X-camera2X, p2Y, p2W);
  boxes(p3X-camera2X, p3Y, p3W);
  boxes(p4X-camera2X, p4Y, p4W);

  if (hitWait %2 == 0) {
    drawMEGA(megax- camera2X, megay - camera2Y, .6);//main character
  }
  portalto2(1070-camera2X, 190);
  drawcoincounter(240, 240);
}

int megaD = 1;
//int canJump;goUp,goDowngoLeft,int   goRight;



//platform vars
int p1X = 0, p1Y = 300, p1W = 320;
int p2X = 400, p2Y = 240, p2W = 80;
int p3X = 560, p3Y = 200, p3W = 240;
int p4X = 900, p4Y = 260, p4W = 200;

void boxes(float x, float y, float z) {
  stroke(0);
  for (int i = 0; i <= z; i+=20) {
    line(x+i, y, x+i, height);
  }

  for (int i = 0; i < height-y; i+=20) {
    line(x, y+i, x+z, y+i);
  }
}
void  drawPlatforms(int x, int y, int z) {
  //draw platforms
  noStroke();
  fill(#0FFAE8);
  rect(x, y, z, 800);
  if (page==4) {
    if (megax+30>p1X+p1W && megax+30<p2X-20 && megay-20>p1Y) {
      megax=p1X+p1W+24;
    }
    if (megax+30>p2X && megax+30< p2X+p2W && megay>p2Y) {
      megax=p2X-26;
    }
    if (megax+30>p2X+p2W && megax+30<p3X-20 && megay>p2Y) {
      megax=p2X+p2W+24;
    }
    if (megax+30>p3X && megax+30< p3X+p3W && megay>p3Y) {
      megax=p3X-26;
    }
    if (megax+30>p3X+p3W && megax+30<p4X-40 && megay>p3Y) {
      megax=p3X+p3W+24;
    }
    if (megax+30>p4X && megax+30< p4X+p4W && megay>p4Y) {
      megax=p4X-26;
    }
    if (megax+30>p4X+p4W && megax+30<p5X && megay>p4Y) {
      megax=p4X+p4W+24;
    }
  }
  if (page==5) {
    if (megax+30>p5X && megax+30< p5X+p5W && megay>p5Y) {
      megax=p5X-24;
    }
    if (megax+30>=p5X+p5W && megax+30<p6X-60 && megay>p5Y) {
      megax=p5X+p5W+28;
    }
    if (megax+30>p6X && megax+30< p6X+p6W && megay>p6Y) {
      megax=p6X-24;
    }
    if (megax+30>p6X+p6W && megax+30<p7X-140 && megay>p6Y) {
      megax=p6X+p6W+24;
    }
    if (megax+30>p7X && megax+30< p7X+p7W && megay>p7Y) {
      megax=p7X-26;
    }
    if (megax+30>p7X+p7W && megax+30<p8X-240 && megay>p7Y) {
      megax=p7X+p7W+24;
    }
    if (megax+30>p8X && megax+30<p8X+p8W && megay>p8Y) {
      megax=p8X-26;
    }
  }
}
int enemy1x=860;
int enemy1y=140;
int enemy2x=360;
int enemy2y=140;
int enemy3x=500;
int enemy3y=120;
float ct;
void enemy(float x, float y) {
  ct+=.1;
  y=y+90*cos(ct);
  x=x+40*sin(ct);
  ellipse(x, y, 40, 40);
  if (dist(megax-camera2X, megay, x, y)<30) {
    if (hitWait == 0) {
      health-=1;
      hitWait  = 1;
    }
  } else if (dist(megax-camera2X, megay-20, x, y)<20) {
    if (hitWait == 0) {
      health-=1;
      hitWait  = 1;
    }
  } else if (dist(megax-camera2X, megay-40, x, y)<20) {
    if (hitWait == 0) {
      health-=1;
      hitWait  = 1;
    }
  } else if (dist(megax-camera2X, megay-60, x, y)<20) {
    if (hitWait == 0) {
      health-=1;
      hitWait  = 1;
    }
  }
}
void portalto2(int x, int y) {
  //  rect(x, y, 30, 70);
  if (megax-26>1050 && megay>y && megay-60<y+60) {
    page=5;
    megax=180;
    megay=100;
    camera2X=0;
    camera2X=0;
  }
}
void camera2() {
  println(camera2X + "  " + megax + "   " + mapWidth+ "   " + megay);
  //horizontal camera 
  if (megax > camera2X + 240 && camera2X < (mapWidth - width)) {//ASSUMING FROG VELOCITY = 40
    camera2X = megax - 240;
  }
  if (megax < camera2X + 120 && camera2X > 0) {//ASSUMING FROG VELOCITY = 40
    camera2X = megax - 120;
  }
  if (megay-60>800) {
    megay=-100;
  }
  if (megay>800) {
    health-=1;
  }
}