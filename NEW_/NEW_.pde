int coincount;
int shopcount=0;
int hitWait = 0;
int healthmax=6;
int healthcount=healthmax;
int megax=200;
//
float mainy=200;
float megay=mainy;
int page=0;
int megaState = 2;
int cameraX;
int cameraY;
int carX;
int carY = 360;
int car2X;
int car2Y = 320;
//ASSUMING FROG VELOCITY = 40
int mapWidth = 600;
int mapHeight = 840;
int shopX=280;
int shopY=80;
int heartX=50+320;
int heartY=15;
int health =6;
//items to collect
int item1X = 600, item1Y = 100, item1Visible = 1; 
int item2X = 350, item2Y = 200, item2Visible = 1; 
int item3X = 900, item3Y = 180, item3Visible = 1; 
int item4X = 260, item4Y = 100, item4Visible = 1; 
int item5X = 480, item5Y = 100, item5Visible = 1; 
int item6X = 860, item6Y = 90, item6Visible = 1; 
int item7X = 960, item7Y = 90, item7Visible = 1; 
int item8X = 350, item8Y = 200, item8Visible = 1; 
int item9X = 350, item9Y = 200, item9Visible = 1; 
int a;
void setup() {
  frameRate(30);
  size(600, 600);
  //ASSUMING FROG VELOCITY = 40 
  //size(400,500);
}
void draw() {
  //if (a==2) {
  //megax=-100;
  //}
  if (page==0) {
    map0();
  }
  if (page==1) {
    background(#008800);
    map1();
    mapWidth = 600;
  }
  if (page==2) {
    shop();
    mapWidth = 600;
  }
  if (page==4) {
    page4();
    a=1;
  }
  if (page==5) {
    page5();
    a=2;
  }

  // if (megax > width) 
  // megax = 0;
  //if (megax < 0) 
  //megax = width;
}



void drawMEGA(int x, float y, float s) {
  if (health<=0) {
    health=healthmax;
    if (page==1) {
      megax = 0;
      megay = 0;
    } else if (page==5) {
      megax=120;
      megay=p5Y;
    } else if (page==4) {
      megax=40;
      megay=300;
    }
    camera3X = 0;
    camera3Y = 0;
    camera2X = 0;
    camera2Y = 0;
    cameraX = 0;
    cameraY = 0;
    goRight = 0;
    goLeft = 0;
    goUp = 0;
    goDown = 0;
  }
  if (health>=healthmax) {
    health=healthmax;
    //if (page==5) {
    //megay=100;
    //}
  }

  fill(#0000FF);
  //Right leg
  beginShape();
  vertex(x+24*s, y-12*s);
  vertex(x+20*s, y-15*s);
  vertex(x+15*s, y-15*s);
  vertex(x+20*s, y-15*s);
  vertex(x+20*s, y-25*s);
  vertex(x+15*s, y-32*s);
  vertex(x+3*s, y-25*s);
  vertex(x+3*s, y-10*s);
  vertex(x, y-10*s);
  vertex(x, y);
  vertex(x+40*s, y);
  vertex(x+35*s, y-4*s);
  vertex(x+32*s, y-8*s);
  endShape(CLOSE);
  fill(#75B9E3);
  //right leg cuff
  beginShape();
  vertex(x+15*s, y-32*s);
  vertex(x+10*s, y-40*s);
  vertex(x, y-35*s);
  vertex(x+3*s, y-25*s);
  endShape(CLOSE);
  //left leg cuff
  fill(#75B9E3);
  beginShape();
  vertex(x-21*s, y-28*s);
  vertex(x-16*s, y-36*s);
  vertex(x-6*s, y-31*s);
  vertex(x-9*s, y-21*s);
  endShape(CLOSE);
  fill(#0000FF, 255);
  ///TORSO
  beginShape();
  vertex(x, y-35*s);
  vertex(x+10*s, y-40*s);
  vertex(x+10*s, y-50*s);
  vertex(x-5*s, y-50*s);
  vertex(x-16*s, y-55*s);
  vertex(x-16*s, y-35*s);
  vertex(x-5*s, y-30*s);
  endShape(CLOSE);
  //top light blue torso
  fill(#75B9E3);
  beginShape();  
  vertex(x-16*s, y-65*s);
  vertex(x-16*s, y-55*s);
  vertex(x-5*s, y-50*s);
  vertex(x+10*s, y-50*s);
  vertex(x+12*s, y-60*s);
  vertex(x+16*s, y-50*s);
  vertex(x+20*s, y-55*s);
  vertex(x+18*s, y-75*s);
  vertex(x-18*s, y-75*s);
  vertex(x-24*s, y-70*s);  
  vertex(x-28*s, y-60*s);
  vertex(x-24*s, y-60*s);
  //vertex(X+22, y-50);
  endShape(CLOSE);
  fill(#0000FF);
  //left leg
  beginShape();
  vertex(x-30*s, y-8*s);
  vertex(x-26*s, y-11*s);
  vertex(x-21*s, y-11*s);
  vertex(x-26*s, y-11*s);
  vertex(x-26*s, y-21*s);
  vertex(x-21*s, y-28*s);
  vertex(x-9*s, y-21*s);
  vertex(x-9*s, y-6*s);
  vertex(x-6*s, y-6*s);
  vertex(x-6*s, y+4*s);
  vertex(x-46*s, y+4*s);
  vertex(x-41*s, y);
  vertex(x-38*s, y-4*s);
  endShape(CLOSE);
  fill(#0000FF);
  ellipse(x, y-75*s, 30*s, 30*s);
  fill(#75B9E3);
  // megaman head
  ellipse(x, y-85*s, 38*s, 42*s);
  fill(#F5DE92);
  noStroke();
  ellipse(x+3*s, y-78*s, 26*s, 30*s);
  stroke(0);
  strokeWeight(2*s);
  line(x, y-70*s, x+8*s, y-68*s);
  strokeWeight(1*s);
  fill(#FFFFFF);
  noStroke();
  ellipse(x+13*s, y-78*s, 11*s, 11*s);
  ellipse(x+2*s, y-78*s, 11*s, 11*s);
  fill(0);
  ellipse(x+13*s, y-78*s, 3*s, 8*s);
  ellipse(x+2*s, y-78*s, 3*s, 8*s);
  stroke(0);
  fill(#0000FF);
  //Dark blue HEMLMET
  beginShape();
  //vertex(x+13, y-68);
  //vertex(x+10, y-68);
  //vertex(x+8, y-65);
  //vertex(x, y-63);
  vertex(x-5*s, y-65*s);
  vertex(x-10*s, y-68*s);
  vertex(x-13*s, y-71*s);
  vertex(x-15*s, y-74*s);
  vertex(x-18*s, y-78*s);  
  vertex(x-19*s, y-82*s);  
  vertex(x-19*s, y-86*s); 
  vertex(x-18*s, y-90*s); 
  vertex(x-17*s, y-94*s); 
  vertex(x-14*s, y-97*s);
  vertex(x-12*s, y-98*s);
  vertex(x-10*s, y-99*s);
  vertex(x-8*s, y-100*s);
  vertex(x-2*s, y-100*s);
  vertex(x, y-98*s);
  vertex(x+2*s, y-96*s);
  vertex(x+12*s, y-96*s);
  vertex(x+14*s, y-94*s);
  vertex(x+17*s, y-93*s);
  vertex(x+18*s, y-90*s);
  vertex(x+19*s, y-88*s);
  vertex(x+19*s, y-85*s);
  vertex(x+19*s, y-81*s);
  vertex(x+18*s, y-78*s);
  vertex(x+17*s, y-75*s);
  vertex(x+16*s, y-80*s);
  vertex(x+12*s, y-82*s);
  vertex(x+10*s, y-80*s);
  vertex(x+9*s, y-78*s);
  vertex(x-2*s, y-84*s);
  vertex(x-8*s, y-80*s);
  vertex(x-8*s, y-66*s);
  vertex(x-2*s, y-65*s);
  endShape(OPEN);
  //Little light blue and red head piece
  fill(#75B9E3);
  //ellipse(x-16, y-78, 10, 15);
  //rect(x-21, y-85.5, 10, 15);
  beginShape();
  vertex(x-14*s, y-85.5*s);
  vertex(x-18*s, y-85.5*s);
  vertex(x-21*s, y-80*s);
  vertex(x-21*s, y-75*s);
  vertex(x-18*s, y-70*s);
  vertex(x-14*s, y-70*s);
  vertex(x-12*s, y-75*s);
  vertex(x-12*s, y-80*s);
  endShape(CLOSE);
  fill(#FF0000);
  ellipse(x-17*s, y-78*s, 5*s, 10*s);
  fill(#75B9E3);
  noStroke();
  rect(x+3*s, y-96*s, 10*s, 10*s);
  stroke(0);
  //left arm
  fill(#0000FF);
  beginShape();
  vertex(x-20*s, y-60*s);
  vertex(x-28*s, y-65*s);
  vertex(x-35*s, y-55*s);
  vertex(x-26*s, y-50*s);
  //vertex(x, y);`
  endShape(CLOSE);
  beginShape();
  vertex(x-34*s, y-55*s);
  vertex(x-26*s, y-50*s);
  vertex(x-32*s, y-48*s);
  vertex(x-30*s, y-46*s);
  vertex(x-34*s, y-44*s);
  vertex(x-38*s, y-48*s);
  endShape(CLOSE);
  //Right arm
  beginShape();
  vertex(x+12*s, y-60*s);
  vertex(x+20*s, y-60*s);
  vertex(x+20*s, y-50*s);
  vertex(x+18*s, y-47*s);
  vertex(x+12*s, y-47*s);
  vertex(x+12*s, y-50*s);
  endShape(CLOSE);
  rect(x+10*s, y-58*s, 5*s, 7*s);
  line(x+16*s, y-56*s, x+18*s, y-56*s);
  line(x+16*s, y-52*s, x+18*s, y-52*s);

  fill(0, 0);

  //  rect(megax-28-cameraX, megay-65-cameraY, 54, 67);
  rect(x-15, y-65, 30, 67);
}
void map1() {
  //draw all flowers
  //drawFlower(100 - cameraX, 90 - cameraY, #FF0000);
  //drawFlower(350 - cameraX, 190 - cameraY, #00FF00);
  //drawFlower(400 - cameraX, 200 - cameraY, #0000FF);
  //drawFlower(500 - cameraX, 300 - cameraY, #FF0000);
  //drawFlower(650 - cameraX, 600 - cameraY, #00FF00);
  //drawFlower(700 - cameraX, 100 - cameraY, #0000FF);
  //drawFlower(700 - cameraX, 600 - cameraY, #00FFFF);


  for (int i = 0; i < mapWidth; i+=40)
    for (int j = 0; j < mapWidth*2; j+=40)
      drawtile(i-cameraX, j-cameraY);
  /*
  if (item1Visible == 1) {
   drawItem(item1X - cameraX, item1Y - cameraY, #FFFF00, 1);
   }
   if (item2Visible == 1) {
   drawItem(item2X - cameraX, item2Y - cameraY, #FFFF00, 2);
   }
   */
  drawshop(shopX-cameraX, shopY-cameraY);
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
  if (hitWait %2 == 0) {
    drawMEGA(megax - cameraX, megay - cameraY, .6);//main character
  }
  clampT+=.1;
  cx1 = (midPoint - amp) + amp*cos(clampT);
  cx2 = (midPoint + amp) - amp*cos(clampT);



  drawclamp(cx1-cameraX, 320 - cameraY, #999999, cx2-cameraX, 320 - cameraY);
  /*drawhearts(heartX+5, heartY);
   drawhearts(heartX-40+5, heartY);`
   drawhearts(heartX-80+5, heartY);*/
  drawentry(40-cameraX, 720-cameraY);
  drawentry(40+240-40-cameraX, 720-cameraY);
  drawentry(40+240+160-cameraX, 720-cameraY);
  movemega();

  drawcoincounter(240, 240);
}
//ART TAB
void drawFlower(int x, int y, color c) {
  fill(c);
  ellipse(x, y, 10, 9);
}

void drawshop(int x, int y) {
  fill(#257BAF);
  rect(x, y, 80, 80);
  triangle(x+4, y+4, x+4, y+80-4, x+40, y+40); 
  triangle(x+4, y+4, x+80-4, y+4, x+40, y+40);
  triangle(x+80-4, y+4, x+80-4, y+80-4, x+40, y+40);
  triangle(x+4, y+80-4, x+40, y+40, x+80-4, y+80-4);
  rect(x+4, y+4, 10, 10);
  rect(x+70-4, y+4, 10, 10);
  rect(x+4, y+70-4, 10, 10);
  rect(x+70-4, y+70-4, 10, 10);
  //   THIS DIRECTION SQUARES FOR THE SHOP --> \
  ellipse(x+20, y+14, 2, 2);
  ellipse(x+24, y+18, 2, 2);
  ellipse(x+28, y+22, 2, 2);
  ellipse(x+32, y+26, 2, 2);
  ellipse(x+36, y+30, 2, 2);
  ellipse(x+40, y+34, 2, 2);

  ellipse(x+44+2, y+38+2, 2, 2);
  ellipse(x+48+2, y+38+4+2, 2, 2);
  ellipse(x+52+2, y+38+8+2, 2, 2); 
  ellipse(x+56+2, y+38+12+2, 2, 2);
  ellipse(x+56+4+2, y+38+16+2, 2, 2);
  ellipse(x+56+8+2, y+38+20+2, 2, 2);

  ellipse(x+20-6, y+14+6, 2, 2);
  ellipse(x+24-6, y+18+6, 2, 2);
  ellipse(x+28-6, y+22+6, 2, 2);
  ellipse(x+32-6, y+26+6, 2, 2);
  ellipse(x+36-6, y+30+6, 2, 2);
  ellipse(x+40-6, y+34+6, 2, 2);

  ellipse(x+44+2-6, y+38+2+6, 2, 2);
  ellipse(x+48+2-6, y+38+4+2+6, 2, 2);
  ellipse(x+52+2-6, y+38+8+2+6, 2, 2); 
  ellipse(x+56+2-6, y+38+12+2+6, 2, 2);
  ellipse(x+56+4+2-6, y+38+16+2+6, 2, 2);
  ellipse(x+56+8+2-6, y+38+20+2+6, 2, 2);

  //Rivets going in -->/ this direction

  ellipse(x+20-6, y+14+46, 2, 2);
  ellipse(x+20-6+4, y+14+46-4, 2, 2);
  ellipse(x+20-6+8, y+14+46-8, 2, 2);
  ellipse(x+20-6+12, y+14+46-12, 2, 2);
  ellipse(x+20-6+16, y+14+46-16, 2, 2);

  ellipse(x+20-6+6, y+14+46+6, 2, 2);
  ellipse(x+20-6+4+6, y+14+46-4+6, 2, 2);
  ellipse(x+20-6+8+6, y+14+46-8+6, 2, 2);
  ellipse(x+20-6+12+6, y+14+46-12+6, 2, 2);
  ellipse(x+20-6+16+6, y+14+46-16+6, 2, 2);

  // rect(x,y,80,80);
  //  rect(x-28, y-65, 54, 67);  mega
  rect(x+20, y+70, 40, 10);
  textSize(10);
  fill(0);
  text("E", x+38, y+79);
  x+=cameraX;
  y+=cameraY;


  if (goRight>0 && rect2Rect(megax-28, megay-65, 54, 67, x, y, 80, 80) ) {
    goRight = 0;
    megax= x +28-54;
  } else if (goLeft>0 && rect2Rect(megax-28, megay-65, 54, 67, x, y, 80, 80)) {
    //megax=240+80+80;
    goLeft = 0;
    // megax= x-54+80;
    megax=x+80+28;
  } else if (goUp>0 &&  rect2Rect(megax-28, megay-65, 54, 67, x, y, 80, 80)) {
    page=2;
    goUp=0;
    megay=y+80+65;
  } else if (goDown>0 && rect2Rect(megax-28, megay-65, 54, 67, x, y, 80, 80)) {
    //megay=40;
    goDown=0;
    megay=y+65-68;
  }
  fill(255);
  textSize(30);
  //text(megax, 200, 200);
  //text(megay, 200, 300);
  //text(coincount, 200, 400);
}

void drawtile(int x, int y) {

  fill(#57F0EC);
  rect(x, y, 40, 40);
  //ellipse(x, y, 10, 10);
  rect(x+2, y+2, 4, 4);
  rect(x+2, y+35-2, 4, 4);
  rect(x+35-2, y+2, 4, 4);
  rect(x+35-2, y+35-2, 4, 4);
}

//INPUT TAB

int goRight, goLeft, goUp, goDown;
int canJump;  
float megaVY;
void keyPressed
  () {
  if (page==4 || page==5) {
    if (keyCode==UP && canJump ==1) {
      goUp = 1;
      megaVY = -8;
    }
    if (keyCode==DOWN) {
      goDown = 1;
    }
    if (keyCode==LEFT) {
      megaD=-1;
      goLeft =1;
    }
    if (keyCode==RIGHT) {
      megaD = 1;
      goRight = 1;
    }
  }
  if (goDown == 0 && page==1 && (key  == 's' || keyCode == DOWN)) {
    goDown = 1;
  }
  if (goUp == 0 && page==1 &&(key  == 'w' || keyCode == UP)) {
    goUp = 1;
  }
  if (page==4 &&(key  == 'w' || keyCode == UP ) && canJump==1) {
    goUp = 1;
    megaVY = -8;
  }
  if (page==2 && key == ENTER && shopcursorx==70+30 && coincount>=2) {
    healthmax=8;
    health=healthmax;
    coincount-=2;
  }
  if ((key  == 'd' || keyCode == RIGHT) && page==2) {
    if (page==2) {
      shopcursorx+=80;
      if (shopcursorx>70+30+80+80) {
        shopcursorx=70+30;
      }
    }
  }
  if (goRight == 0 && (key  == 'd' || keyCode == RIGHT)) {
    goRight = 1;
  }
  if (key  == 'a' || keyCode == LEFT) {
    if (page==2) {
      shopcursorx-=80;
      if (shopcursorx<70+30) {
        shopcursorx=70+30+80+80;
      }
    }
  }
  if (goLeft == 0 &&(key  == 'a' || keyCode == LEFT)) {
    goLeft = 1;
  }
  if (key== '2') {
    page=2;
  }
  if (key== '1') {
    page=1;
  }
  if ((key == 's' || keyCode == DOWN) && page==2) {
    page=1;
    megay=220;
  }
  if (key =='3') {
    page=3;
  }
  if (key =='4') {
    page=4;
  }
  if (key =='5') {
    page=5;
  }
}

void keyReleased() {
  if (page==4 ||page==5) {
    if (keyCode==UP) {
      goUp = 0;
    }
    if (keyCode==DOWN) {
      goDown = 0;
    }
    if (keyCode==LEFT) {
      goLeft =0;
    }
    if (keyCode==RIGHT) {
      goRight = 0;
    }
  }
  //?
}
void mousePressed() {
  //?
  if (mouseX>shopX-cameraX && mouseX<shopX+80-cameraX && mouseY>shopY-cameraY && mouseY<shopY+80-cameraY) {
    page=2;
  } else if (page==2 && mouseX>250+100 && mouseX<250+70+100 && mouseY>140+20 && mouseY<160+20) {
    page=1;
    megay=300;
  } else if (page==3 && mouseX>250 && mouseX<250+70 && mouseY>140+20 && mouseY<160+20) {
    page=1;
    megay=300;
  } else if (page==0 && mouseX>100 && mouseX<100+400 && mouseY>400 && mouseY<440) {
    page=1;
  }
}
void mouseReleased() {
  //?
}

//FROGMOVE TAB
void movemega() {
  if (goRight >0) {
    megaState = 4;
    goRight++;
    megax+=10;
    if (goRight > 4) {
      goRight = 0;
    }
  }
  if (goLeft >0) {
    megaState = 3;
    goLeft++;
    megax-=10;
    if (goLeft > 4) {
      goLeft = 0;
    }
  }
  if (goDown >0) {
    megaState = 2;
    goDown++;
    megay+=10;
    if (goDown > 4) {
      goDown = 0;
    }
  }
  if (goUp >0) {
    megaState = 1;
    goUp++;
    megay-=10;
    if (goUp > 4) {
      goUp = 0;
    }
  }
  bordersAndCamera();
}

void bordersAndCamera() {
  //left
  if (megax < 26) {
    megax = 26;
  }
  //right       
  if (megax > mapWidth -26) {
    megax = mapWidth - 26;
  }
  //top      
  if (megay < 65) {
    megay = 65;
  }
  //bottom     
  if (megay > mapHeight-2 ) {
    megay = mapHeight-2;
  }
  //horizontal camera 
  if (megax > cameraX + 240 && cameraX < (mapWidth - width)) {//ASSUMING FROG VELOCITY = 40
    cameraX = megax - 240;
  }
  if (megax < cameraX + 120 && cameraX > 0) {//ASSUMING FROG VELOCITY = 40
    cameraX = megax - 120;
  }
  //vertical camera 
  if (megay > cameraY + 360 && cameraY < (mapHeight - height)) {//ASSUMING FROG VELOCITY = 40
    cameraY =(int)(megay - 360);
  }
  if (megay < cameraY + 120 && cameraY > 0) {//ASSUMING FROG VELOCITY = 40
    cameraY = (int)(megay - 120);
  }
}
void drawItem(int x, int y, color c, int q) {
  fill(c);
  ellipse(x, y, 20, 20);
  fill(0);
  ellipse(x, y, 4, 4);

  //1 collision for all items

  x+=camera2X;
  y+=camera2Y;
  x+=camera3X;
  y+=camera3Y;



  //I treat the frog as a circle of radius 20
  if (dist(x, y, megax, megay-30) < 30) {

    if (q == 1) {//item 1
      item1Visible = 0;
      coincount++;
    }

    if (q == 2) {//item 2
      item2Visible = 0;
      coincount++;
    }
    if (q == 3) {//item 2
      item3Visible = 0;
      coincount++;
    }
    if (q == 4) {//item 2
      item4Visible = 0;
      coincount++;
    }
    if (q == 5) {//item 2
      item5Visible = 0;
      coincount++;
    }
    if (q == 6) {//item 2
      item6Visible = 0;
      coincount++;
    }
    if (q == 7) {//item 2
      item7Visible = 0;
      coincount++;
    }
  }
}
void extraheart(int x, int y) {
  smooth();
  noStroke();
  fill(0, 0, 0);
  //First heart black
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x, y); 
  bezierVertex(x, y-20, x+40, 5, x, y+25); 
  vertex(x, y); 
  bezierVertex(x, y-20, x-40, 5, x, y+25); 
  endShape();
  fill(255, 0, 0);
  //first red heart
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x, y); 
  bezierVertex(x, y-20, x+40, 5, x, y+25); 
  vertex(x, y); 
  bezierVertex(x, y-20, x-40, 5, x, y+25); 
  endShape();
  stroke(0);
  if (health==7) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart half
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x, y); 
    bezierVertex(x, y-20, x-40, 5, x, y+25); 
    endShape();
    stroke(0);
  }
  if (health==6) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart
    beginShape(); //int heartX=50+320; int heartY=15;
    vertex(x, y); 
    bezierVertex(x, y-20, x+40, 5, x, y+25); 
    vertex(x, y); 
    bezierVertex(x, y-20, x-40, 5, x, y+25); 
    endShape();
    stroke(0);
  }
  if (health<=6) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart
    beginShape(); //int heartX=50+320; int heartY=15;
    vertex(x, y); 
    bezierVertex(x, y-20, x+40, 5, x, y+25); 
    vertex(x, y); 
    bezierVertex(x, y-20, x-40, 5, x, y+25); 
    endShape();
    stroke(0);
  }
}
void drawhearts(int x, int y) {
  smooth();
  noStroke();
  fill(0, 0, 0);
  //First heart black
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x, y); 
  bezierVertex(x, y-20, x+40, 5, x, y+25); 
  vertex(x, y); 
  bezierVertex(x, y-20, x-40, 5, x, y+25); 
  endShape();
  //2nd heart black
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x-40, y); 
  bezierVertex(x-40, y-20, x+40-40, 5, x-40, y+25); 
  vertex(x-40, y); 
  bezierVertex(x-40, y-20, x-40-40, 5, x-40, y+25); 
  endShape();
  //3rd heart black
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x-40-40, y); 
  bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25); 
  vertex(x-40-40, y); 
  bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
  endShape();

  stroke(0);
  smooth();
  noStroke();
  fill(255, 0, 0);
  //first red heart
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x, y); 
  bezierVertex(x, y-20, x+40, 5, x, y+25); 
  vertex(x, y); 
  bezierVertex(x, y-20, x-40, 5, x, y+25); 
  endShape();
  fill(255, 0, 0);
  //second red heart
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x-40, y); 
  bezierVertex(x-40, y-20, x+40-40, 5, x-40, y+25); 
  vertex(x-40, y); 
  bezierVertex(x-40, y-20, x-40-40, 5, x-40, y+25); 
  endShape();
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x-40-40, y); 
  bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25); 
  vertex(x-40-40, y); 
  bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
  endShape();
  //third red heart
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(x-40-40, y); 
  bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25); 
  vertex(x-40-40, y); 
  bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
  endShape();
  stroke(0);
  //    drawhearts(heartX-40+5, heartY);
  //  drawhearts(heartX-80+5, heartY);

  if (health==5) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart half
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
    endShape();
    stroke(0);
  }
  if (health==4) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart both halves
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25);
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
    endShape();
    stroke(0);
  }
  if (health==3) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart full and half of the next
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25);
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
    endShape();
    beginShape();
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x-40-40, 5, x-40, y+25); 
    endShape();
    stroke(0);
  }
  if (health==2) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart full and full of the next
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25);
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
    endShape();
    beginShape();
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x+40-40, 5, x-40, y+25); 
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x-40-40, 5, x-40, y+25); 
    endShape();
    stroke(0);
  }
  if (health==1) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart full and full of the next
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25);
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
    endShape();
    beginShape();
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x+40-40, 5, x-40, y+25); 
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x-40-40, 5, x-40, y+25); 
    endShape();
    beginShape();
    vertex(x, y); 
    bezierVertex(x, y-20, x-40, 5, x, y+25); 
    endShape();
    stroke(0);
    //beginShape();
    //vertex(x, y); 
    //bezierVertex(x, y-20, x+40, 5, x, y+25); 
    //endShape();
  }
  if (health <=0) {
    smooth();
    noStroke();
    fill(0, 0, 0);
    //first red heart full and full of the next
    beginShape(); //int heartX=50+320; int heartY=15; 
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x+40-40-40, 5, x-40-40, y+25);
    vertex(x-40-40, y); 
    bezierVertex(x-40-40, y-20, x-40-40-40, 5, x-40-40, y+25); 
    endShape();
    beginShape();
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x+40-40, 5, x-40, y+25); 
    vertex(x-40, y); 
    bezierVertex(x-40, y-20, x-40-40, 5, x-40, y+25); 
    endShape();
    beginShape();
    vertex(x, y); 
    bezierVertex(x, y-20, x-40, 5, x, y+25); 
    endShape();
    beginShape();
    vertex(x, y); 
    bezierVertex(x, y-20, x+40, 5, x, y+25); 
    endShape();
    stroke(0);
  }
  textSize(20);
  strokeWeight(1);
  stroke(0);
  fill(0);
  //text(health, 200, 200);
  textSize(1);
  stroke(0);
  if (health<healthmax && health >0) {
    healthcount++;
  }

  if (healthcount>300) {
    health+=1;
    healthcount=0;
  }

  // println(healthcount);
}
void drawentry(int x, int y) {
  fill(#11A75D);
  rect(x, y, 120, 120);
  rect(x-10, y, 140, 18);
  if (megax-26>40&& megax+26<40+120 && megay>780) {
    page=4;
  }
  if (megax-26>40+120+80&& megax+26<40+120+80+120 && megay>780) {
    page=5;
  }
  // line(0, megay-cameraY, 800, megay-cameraY);
}
void drawcoincounter(int x, int y) {
  fill(#FFFFFF);
  rect(x+280, y+340, 80, 20);
  fill(#FAFF08);
  ellipse(x+300, y+349, 12, 12);
  ellipse(x+300, y+349, 7, 7);
  fill(#FFFFFF);
  textSize(10);
  rect(x+310, y+344, 30, 10);
  fill(0);
  text(coincount, x+313, y+353);
}
void movement2() {

  if (goRight >0) {
    megaState = 4;
    goRight++;
    megax+=10;
    if (goRight > 4) {
      goRight = 0;
    }
  }
  if (goLeft >0) {
    megaState = 3;
    goLeft++;
    megax-=10;
    if (goLeft > 4) {
      goLeft = 0;
    }
  }
  //bordersAndCamera();
}
void map0() {
  background(255);
  fill(#0000ff);
  strokeWeight(3);
  rect(40, 40, 20, 20);
  rect(40, 60, 20, 20);
  rect(40, 80, 20, 20);
  rect(40, 100, 20, 20);  
  rect(40, 120, 20, 20);
  rect(60, 60, 20, 20);
  rect(80, 80, 20, 20);
  rect(80, 100, 20, 20);
  rect(80, 120, 20, 20);
  rect(100, 60, 20, 20);
  rect(120, 40, 20, 20);
  rect(120, 60, 20, 20);
  rect(120, 80, 20, 20);
  rect(120, 100, 20, 20);
  rect(120, 120, 20, 20);

  rect(160, 40, 20, 20);
  rect(180, 40, 20, 20);
  rect(200, 40, 20, 20);
  rect(160, 60, 20, 20);
  rect(160, 80, 20, 20);
  rect(180, 80, 20, 20);
  rect(200, 80, 20, 20);
  rect(160, 100, 20, 20);
  rect(160, 120, 20, 20);
  rect(180, 120, 20, 20);
  rect(200, 120, 20, 20);

  rect(240, 40, 20, 20);
  rect(260, 40, 20, 20);
  rect(280, 40, 20, 20);
  rect(300, 40, 20, 20);
  rect(240, 60, 20, 20);
  rect(240, 80, 20, 20);
  rect(240, 100, 20, 20);
  rect(240, 120, 20, 20);
  rect(260, 120, 20, 20);
  rect(280, 120, 20, 20);
  rect(300, 120, 20, 20);
  rect(300, 100, 20, 20);
  rect(300, 80, 20, 20);
  rect(280, 80, 20, 20);

  rect(340, 120, 20, 20);
  rect(360, 100, 20, 20);
  rect(360, 80, 20, 20);
  rect(380, 40, 20, 20);
  rect(380, 60, 20, 20);
  rect(400, 80, 20, 20);
  rect(400, 100, 20, 20);
  rect(380, 100, 20, 20);
  rect(420, 120, 20, 20);

  rect(40, 40+160, 20, 20);
  rect(40, 60+160, 20, 20);
  rect(40, 80+160, 20, 20);
  rect(40, 100+160, 20, 20);  
  rect(40, 120+160, 20, 20);
  rect(60, 60+160, 20, 20);
  rect(80, 80+160, 20, 20);
  rect(80, 100+160, 20, 20);
  rect(80, 120+160, 20, 20);
  rect(100, 60+160, 20, 20);
  rect(120, 40+160, 20, 20);
  rect(120, 60+160, 20, 20);
  rect(120, 80+160, 20, 20);
  rect(120, 100+160, 20, 20);
  rect(120, 120+160, 20, 20);

  rect(340-180, 120+160, 20, 20);
  rect(360-180, 100+160, 20, 20);
  rect(360-180, 80+160, 20, 20);
  rect(380-180, 40+160, 20, 20);
  rect(380-180, 60+160, 20, 20);
  rect(400-180, 80+160, 20, 20);
  rect(400-180, 100+160, 20, 20);
  rect(380-180, 100+160, 20, 20);
  rect(420-180, 120+160, 20, 20);

  rect(40+240, 40+160, 20, 20);
  rect(40+240, 60+160, 20, 20);
  rect(40+240, 80+160, 20, 20);
  rect(40+240, 100+160, 20, 20);  
  rect(40+240, 120+160, 20, 20);
  rect(60+240, 60+160, 20, 20);
  rect(80+240, 80+160, 20, 20);
  rect(100+240, 80+140+40, 20, 20);
  rect(120+240, 80+160+40, 20, 20);
  rect(120+240, 80+140+40, 20, 20);
  rect(120+240, 80+160, 20, 20);
  rect(120+240, 80+100+40, 20, 20);
  rect(120+240, 80+80+40, 20, 20);

  fill(#0000ff, 180);
  rect(100, 400, 400, 40);
  textSize(20);
  fill(0);
  text("START GAME", 240, 430);
  text("- Eduardo Guzman", 300, 520);
}