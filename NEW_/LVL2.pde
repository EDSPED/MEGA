int p6X = 300, p5Y = 100, p5W = 160;
int p5X = 30, p6Y = 160, p6W = 100;
int p7X = 600, p7Y = 150, p7W = 160;
int p8X = 1050, p8Y = 200, p8W = 200;
int enemy4x=860;
int enemy4y=140;
int enemy5x=280-40;
int enemy5y=100+40;
int enemy6x=540-20;
int enemy6y=120+40;
int enemy7x=960;
int enemy7y=140;
int camera3X;
int camera3Y;
ENEMY e4 =new ENEMY(enemy4x, enemy4y, #43F0F5);
ENEMY e5 =new ENEMY(enemy5x, enemy5y, #43F0F5);
ENEMY e6 =new ENEMY(enemy6x, enemy6y, #43F0F5);
ENEMY e7 =new ENEMY(enemy7x, enemy7y, #43F0F5);

void page5() {
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
  if (megax+18>p5X && megax<p5X+p5W && megay>=p5Y && megay<=p5Y+megaVY) {
    megay=p5Y;
    megaVY = 0; 
    canJump = 1;
  }
  if (megax+9>p6X && megax-9<p6X+p6W && megay>=p6Y && megay<=p6Y+megaVY) {
    megay=p6Y;
    megaVY = 0; 
    canJump = 1;
  }
  if (megax+9>p7X && megax-9<p7X+p7W && megay>=p7Y && megay<=p7Y+megaVY) {
    megay=p7Y;
    megaVY = 0; 
    canJump = 1;
  }

  if (megax+9>p8X && megax-9<p8X+p8W && megay>=p8Y && megay<=p8Y+megaVY) {
    megay=p8Y;
    megaVY = 0; 
    canJump = 1;
  }

  camera3();

  if (item4Visible == 1) {
    drawItem(item4X - camera3X, item4Y - camera3Y, #FFFF00, 4);
  }
  if (item5Visible == 1) {
    drawItem(item5X - camera3X, item5Y - camera3Y, #FFFF00, 5);
  }
  if (item6Visible == 1) {
    drawItem(item6X - camera3X, item6Y - camera3Y, #FFFF00, 6);
  }
  if (item7Visible == 1) {
    drawItem(item7X - camera3X, item7Y - camera3Y, #FFFF00, 7);
  }

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
  drawPlatforms(p5X-camera3X, p5Y, p5W);
  drawPlatforms(p6X - camera3X, p6Y, p6W);
  drawPlatforms(p7X - camera3X, p7Y, p7W);
  drawPlatforms(p8X - camera3X, p8Y, p8W);


  boxes(p5X-camera3X, p5Y, p5W);
  boxes(p6X-camera3X, p6Y, p6W);
  boxes(p7X-camera3X, p7Y, p7W);
  boxes(p8X-camera3X, p8Y, p8W);
  //enemy(enemy4x-camera3X, enemy4y);
  // enemy(enemy5x-camera3X, enemy5y);
  //enemy(enemy6x-camera3X, enemy6y);
  //enemy(enemy7x-camera3X, enemy7y);
  e4.update();
  e5.update();
  e6.update();
  e7.update();
  if (hitWait %2 == 0) {
    drawMEGA(megax-camera3X, megay - camera3Y, .6);//main character
  }
  portalto2(1070-camera3X, 130);
  drawcoincounter(240, 240);
}
void camera3() {
 // println(camera3X + "  " + megax + "   " + mapWidth+ "   " + megay);
  //horizontal camera 
  if (megax > camera3X + 240 && camera3X < (mapWidth - width)) {//ASSUMING FROG VELOCITY = 40
    camera3X = megax - 240;
  }
  if (megax < camera3X + 120 && camera3X > 0) {//ASSUMING FROG VELOCITY = 40
    camera3X = megax - 120;
  }
  if (megay-60>800) {
    megay=-100;
  }
  if (megay>800) {
    health-=1;
  }
}