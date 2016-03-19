int shopcursorx=70+30;
int shopcursory=40;

/*
 line(shopcursorx, shopcursory, shopcursorx+10, shopcursory);
 line(shopcursorx, shopcursory, shopcursorx, shopcursory+10);
 line(shopcursorx, shopcursory+40, shopcursorx+10, shopcursory+40);
 line(shopcursorx, shopcursory+30,shopcursorx, shopcursory+40);
 
 line(100+30, 40, 110+30, 40);
 line(110+30, 40, 110+30, 50);
 line(100+30, 80, 110+30, 80);
 line(110+30, 70, 110+30, 80);
 */
void shop() {
  background(#43A5A2);
  fill(#43A5A2);
  rect(0+100, 30, 400, 5);
  fill(#47CE7E); // Change this color to the top mid light blue

  rect(0+100, 50, 400, 10);
  rect(0+100, 70, 400, 10);
  fill(#43A5A2);
  rect(35+100, 35, 10, 15);
  rect(395+100, 35, 10, 15);
  ellipse(10+100, 43, 5, 5);
  ellipse(370+100, 43, 5, 5);
  fill(0);  
  rect(0+100, 80, 400, 30);
  strokeWeight(2);
  fill(#47CE7E);
  rect(40+100, 0, 320, 300);
  fill(#43A5A2);
  ellipse(200+100, 300, 90, 120);
  strokeWeight(1);
  rect(197.5+100, 240, 5, 60);
  rect(155+100, 290, 90, 5);
  rect(140+100, 290, 8, 6);
  rect(250+2+100, 290, 8, 6);
  strokeWeight(2);
  fill(#47CE7E);
  ellipse(200+100, 300, 50, 80);
  noStroke();
  fill(#43A5A2);
  rect(100+100, 300, 200, 70);
  stroke(0);
  fill(0);
  rect(60+100, 25, 280, 160); // black computer screen 145
  strokeWeight(1);
  fill(#FFFFFF);
  rect(250+100, 160, 70, 20);
  fill(0);
  textSize(20);
  text("EXIT", 265+100, 157.5+20);
  //middle left screen
  fill(#47CE7E);
  rect(60+4+100, 125+16, 90, 40);
  fill(0);
  rect(75+4+100, 130+16, 60, 30);
  strokeWeight(3);
  line(65+4+100, 132+16, 71+4+100, 132+16);
  line(65+4+100, 158+16, 71+4+100, 158+16);
  line(139+4+100, 132+16, 145+4+100, 132+16);
  line(139+4+100, 158+16, 145+4+100, 158+16);
  fill(#47CE7E);
  rect(0+100, 130, 40, 50);
  strokeWeight(1);
  line(10+100, 130, 10+100, 180);
  strokeWeight(2);
  line(20+100, 130, 20+100, 180);
  strokeWeight(1);
  line(0+100, 176, 40+100, 176);
  strokeWeight(3);
  fill(#47CE7E);
  rect(360+100, 130, 40, 50);
  strokeWeight(1);
  line(390+100, 130, 390+100, 180);
  line(380+100, 130, 380+100, 180);
  line(360+100, 176, 400+100, 176);
  fill(0);
  rect(360+100, 150, 5, 15);
  rect(35+100, 150, 5, 15);
  line(40+100, 30, 70+100, 0);
  line(360+100, 30, 330+100, 0);
  fill(#57F0EC);
  strokeWeight(2);
  rect(150+100, 0, 100, 25);
  rect(150+100, 0, 15, 25);
  rect(250-15+100, 0, 15, 25);
  rect(165+100, 7.5, 5, 10);
  rect(250-15-5+100, 7.5, 5, 10);
  rect(180+100, 0, 10, 15);
  rect(210+100, 0, 10, 15);
  //LEFT TOP LINES
  strokeWeight(2);
  line(80+100, 6, 130+100, 6);
  line(80+100, 9, 130+100, 9);
  line(80+100, 12, 130+100, 12);
  line(80+100, 15, 130+100, 15);
  line(80+100, 18, 130+100, 18);
  //RIGHT TOP LINES
  line(80+190+100, 6, 130+190+100, 6);
  line(80+190+100, 9, 130+190+100, 9);
  line(80+190+100, 12, 130+190+100, 12);
  line(80+190+100, 15, 130+190+100, 15);
  line(80+190+100, 18, 130+190+100, 18);
  //Right overlap cylinder 
  fill(#47CE7E);
  strokeWeight(3);
  rect(340+100, 140, 20, 30);
  //Right overlap cylinder
  rect(40+100, 140, 20, 30);
  //baby blue floor
  fill(#57F0EC);
  strokeWeight(4);
  rect(0+100, 300, 400, 20);
  strokeWeight(1);
  rect(0+100, 320, 400, 20);
  rect(10+100, 298, 6, 24);
  rect(70+100, 298, 6, 24);
  rect(130+100, 298, 6, 24);
  rect(190+100, 298, 6, 24);
  rect(250+100, 298, 6, 24);
  rect(310+100, 298, 6, 24);
  rect(370+100, 298, 6, 24);
  line(20+100, 320, 20+100, 340);
  //line(80, 320, 80, 340);
  line(140+100, 320, 140+100, 340);
  //line(200, 320, 200, 340);
  line(260+100, 320, 260+100, 340);
  line(380+100, 320, 380+100, 340);
  fill(#47CE7E);
  rect(55+100, 170+14, 290, 20);

  /// FIX THE SPACING OF THE SQUARES -DONE
  rect(65+1+100, 176+14, 8, 8);
  rect(85+1+100, 176+14, 8, 8);
  rect(105+1+100, 176+14, 8, 8);
  rect(125+1+100, 176+14, 8, 8);
  rect(145+1+100, 176+14, 8, 8);
  rect(165+1+100, 176+14, 8, 8);
  rect(185+1+100, 176+14, 8, 8);  
  rect(205+1+100, 176+14, 8, 8);
  rect(225+1+100, 176+14, 8, 8);
  rect(245+1+100, 176+14, 8, 8);
  rect(265+1+100, 176+14, 8, 8);
  rect(285+1+100, 176+14, 8, 8);
  rect(305+1+100, 176+14, 8, 8);
  rect(325+1+100, 176+14, 8, 8);
  //bottom left lines
  strokeWeight(2);
  line(40+100, 220, 100+100, 220);
  line(40+100, 223, 100+100, 223);
  line(40+100, 226, 100+100, 226);
  line(40+100, 229, 100+100, 229);
  //middle left lines bottom
  line(120+100, 220, 160+100, 220);
  line(120+100, 223, 160+100, 223);
  line(120+100, 226, 160+100, 226);
  line(120+100, 229, 160+100, 229);
  //middle right lines bottom
  line(240+100, 220, 280+100, 220);
  line(240+100, 223, 280+100, 223);
  line(240+100, 226, 280+100, 226);
  line(240+100, 229, 280+100, 229);
  //bottom left lines
  line(300+100, 220, 360+100, 220);
  line(300+100, 223, 360+100, 223);
  line(300+100, 226, 360+100, 226);
  line(300+100, 229, 360+100, 229);
  strokeWeight(1);
  stroke(0);
  fill(#FFFFFF);
  strokeWeight(4);
  stroke(#FFFFFF);
  //Q1
  line(shopcursorx+100, shopcursory, shopcursorx+10+100, shopcursory);
  line(shopcursorx+100, shopcursory, shopcursorx+100, shopcursory+10);
  line(shopcursorx+100, shopcursory+40, shopcursorx+10+100, shopcursory+40);
  line(shopcursorx+100, shopcursory+30, shopcursorx+100, shopcursory+40);

  line(shopcursorx+30+100, shopcursory, shopcursorx+40+100, shopcursory);
  line(shopcursorx+40+100, shopcursory, shopcursorx+40+100, shopcursory+10);
  line(shopcursorx+30+100, shopcursory+40, shopcursorx+40+100, shopcursory+40);
  line(shopcursorx+40+100, shopcursory+30, shopcursorx+40+100, shopcursory+40);
  /*
  line(70+30, 40, 80+30, 40);
   line(70+30, 40, 70+30, 50);
   line(70+30, 80, 80+30, 80);
   line(70+30, 70, 70+30, 80);
   
   
   line(100+30, 40, 110+30, 40);
   line(110+30, 40, 110+30, 50);
   line(100+30, 80, 110+30, 80);
   line(110+30, 70, 110+30, 80);
   
   //Q2
   line(shopcursorx+80, shopcursory, shopcursorx+90, shopcursory);
   line(shopcursorx+80, shopcursory, shopcursorx+80, shopcursory+10);
   line(shopcursorx+80, shopcursory+40, shopcursorx+90, shopcursory+40);
   line(shopcursorx+80, shopcursory+30, shopcursorx+80, shopcursory+40);
   
   line(100+80+30, 40, 110+80+30, 40);
   line(110+80+30, 40, 110+80+30, 50);
   line(100+80+30, 80, 110+80+30, 80);
   line(110+80+30, 70, 110+80+30, 80);
   //Q3
   line(70+80+80+30, 40, 80+80+80+30, 40);
   line(70+80+80+30, 40, 70+80+80+30, 50);
   line(70+80+80+30, 80, 80+80+80+30, 80);
   line(70+80+80+30, 70, 70+80+80+30, 80);
   
   line(100+80+80+30, 40, 110+80+80+30, 40);
   line(110+80+80+30, 40, 110+80+80+30, 50);
   line(100+80+80+30, 80, 110+80+80+30, 80);
   line(110+80+80+30, 70, 110+80+80+30, 80);
   */
  strokeWeight(1);
  stroke(0);
  textSize(15);
  fill(#FFFFFF);
  smooth();
  noStroke();
  fill(255, 0, 0);
  //first red heart full and full of the next
  beginShape(); //int heartX=50+320; int heartY=15;
  vertex(120+100, 55); 
  bezierVertex(120+100, 55-20, 120+40+100, 45, 120+100, 55+25); 
  vertex(120+100, 55); 
  bezierVertex(120+100, 55-20, 120-40+100, 45, 120+100, 55+25); 
  endShape();
  textSize(10);
  text("Health Plus", 80+14+100, 95);
  textSize(15);
  text("Q2", 80+80+30+100, 65);
  text("Q3", 80+80+80+30+100, 65);
  fill(0);
  stroke(0);
  textSize(35);
  text("DOWN TO EXIT", 70+100, 400);
  fill(#FAFF08);
  stroke(0);
  ellipse(194, 110, 12, 12);
  ellipse(194, 110, 7, 7);
  textSize(10);
  fill(#FFFFFF);
  text("5 coins", 204, 114);
  drawcoincounter(240, 240);
}