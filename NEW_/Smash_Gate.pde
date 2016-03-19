float midPoint = 350;
float amp = 200;
float cx1, cx2;


float clampT = 0;
void drawclamp(float x, int y, color c, float x2, int y2) {

  fill(#11A75D);
  rect(x, y, -900, 80);
  rect(x, y-10, -20, 100);

  x+=cameraX;
  y+=cameraY;

  if (rect2Rect(0, y, x, 80, megax-15, megay-65, 30, 67)) {
    println("left " + random(1));
    //background(#FF0000);
    if (hitWait == 0) {
      health-=1;
      hitWait  = 1;
    }
    // megax=120;
    //megay=120;
  }

  rect(x2, y2, 900, 80);
  rect(x2, y2-10, 20, 100);

  x2+=cameraX;
  y2+=cameraY;



  //rect(x-15, y-65, 30, 67);
  if (rect2Rect(x2, y2, 900, 80, megax-15, megay-65, 30, 67)) {
    println("right: " + random(1));
    // background(#FF0000);
    if (hitWait == 0) {
      health-=1;
      hitWait  = 1;
    }
    //megax=120;
    //  megay=120;
  }
  /*  
   rect(x2+((mapWidth/2)-20), y2-2, (mapWidth/2)-20, 80);
   rect(x2+(mapWidth/2-20), y2-10, 20, 100);
   rect(x+(mapWidth/2-20)-20, y-10, 20, 100);
   if (megay>y || megay>y2) {
   goDown=0;
   megay=y+65-69;
   if (megax+26>x+((mapWidth/2)-20) && megax-26<x+((mapWidth/2)-20)+20) {
   println("true");
   }
   }
   
   */
}