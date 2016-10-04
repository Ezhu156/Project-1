int a= 500; //x value for the flower
int b= 500; //y value for the flower
int x; //x value for smile
int y; //y value for smile
int r; //red value for circle
int g; //green value for circle
int c; //blue value for circle
int d= 500; //x value for triangles
int e= 500; //y value for triangles

void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  // red flower at center of the page
  flower();

  //triangles between the flower (FIGURE OUT THE VALUES SO THEY ARE EVEN)
  // FIND A MORE EFFICIENT WAY TO CODE THIS IF POSSIBLE
  stroke(255);
  strokeWeight(5);
  //triangle(Lx,Ly,Cx,Cy,Rx,Ry);
  //11 oclock (260, 240, 415, 285, 480, 155)
  triangle(d-240, e-260, 415, 285, d-20, e-345);
  //1 oclock (520, 155, 585, 285, 740, 240)
  triangle(d+20, e-345, 585, 285, d+240, e-260);
  //2 oclock(760, 260, 715, 415, 840, 480)
  triangle(d+260, e-240, 715, 415, d+340, e-20);
  //4 oclock (840, 520, 715, 585, 760, 740)
  triangle(d+340, e+20, 715, 585, d+260, e+240);
  //5 oclock (740, 760, 585, 715, 520, 840)
  triangle(d+240, e+260, 585, 715, d+20, e+340);
  //7 oclock (480, 840, 415, 715, 260, 760)
  triangle(d-20, e+340, 415, 715, d-240, e+260);
  //8 oclock (240, 730, 285, 585, 160, 520)
  triangle(d-260, e+230, 285, 585, d-340, e+20);
  //10 oclock (160, 480, 285, 410, 240, 270)
  triangle(d-340, e-20, 285, 410, d-260, e-230);

  // Circle in the middle of the flower that changes color when mouse is pressed
  if (mousePressed) {
    // for (int x=100; x<=900; x+=400) {
    //  for (int y=100; y<=900; y+=400) {
    stroke(255, 86, 0); //red orange
    strokeWeight(4);
    fill(r, g, c);
    // ellipse(x, y, 50, 50);
    ellipse(500, 500, 50, 50);
    r += 1;// r value increase by 3 each time
    g += 2;//g value increases by 3 each time
    c += 5;//b value increases by 3 each time
    if (r > 255) { //when r is greater than 255, the value is reset to 0
      r=0;
    }
    if (g > 255) { //when g is greater than 255, the value is reset to 0
      g=0;
    }
    if (c > 255) { //when b is greater than 255, the value is reset to 0
      c=0;
    }
    // }//end of for y
    // }//end of for x
  }
   else//end of if mousePressed
    stroke(255, 86, 0); //red orange
  strokeWeight(4);
  fill(c, r, g);
  ellipse(500, 500, 50, 50);

// IS IT POSSIBLE TO HAVE THIS WORK BUT ONLY WITHIN THE INSIDE OF THE FLOWER
  //smile(mouseX, mouseY);
}// end draw
/*
void mouseDragged() {
  d -= 5;
    e -= 5;
    if (d == 500) {
    d=500;
    if (e==500) {
      e= 500;
    }
  }
}
*/

// FIGURE OUT MAP FUNCTIONS AND HOW IT WILL WORK
/*
void smile(float x, float y) {
 float smileX= map(mouseX, 500, width, 100, 300);
 float smileY=map(mouseY, 500, height, 300, 200);
 noStroke();
 fill(255, 255, 0);
 ellipse(smileX, smileY, 75, 75);
 
 noStroke();
 fill(0);
 ellipse(smileX-12, smileY-12, 15, 15);
 ellipse(smileX+12, smileY-12, 15, 15);
 
 stroke(0);
 strokeWeight(4);
 noFill();
 arc(smileX, smileY+10, 40, 35, 0, PI, OPEN);
 }
 */


void flower() {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(5);
  //top left corner (500,500,420,300,250,250,300,420)
  quad(a, b, a-80, b-200, a-250, b-250, a-200, b-80);
  //top right corner (500,500,580,300,750,250,300,420)
  quad(a, b, a+80, b-200, a+250, b-250, a+200, b-80);
  //bottom right corner (500,500,580,700,750,750,700,580)
  quad(a, b, a+80, b+200, a+250, b+250, a+200, b+80);
  //bottom left corner (500,500,420,700,250,750,300,580)
  quad(a, b, a-80, b+200, a-250, b+250, a-200, b+80);

  //top (500,500,420,300,500,150,580,300)
  quad(a, b, a-80, b-200, a, b-350, a+80, b-200);
  //bottom (500,500,420,700,500,850,580,700)
  quad(a, b, a-80, b+200, a, b+350, a+80, b+200);
  //right (500,500,700,420,850,500,700,580)
  quad(a, b, a+200, b-80, a+350, b, a+200, b+80);
  //left (500,500,300,420,150,500,300,580)
  quad(a, b, a-200, b-80, a-350, b, a-200, b+80);
}
