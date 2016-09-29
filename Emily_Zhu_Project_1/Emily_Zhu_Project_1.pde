int x;
int y;
int r=0;
int g=0;
int b=0;
void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  // 81 circles that cycle through b+w when mouse is pressed
  if (mousePressed) {
    for (int x=300; x<=700; x+=50) {
      for (int y=300; y<=700; y+=50) {
        stroke(255, 86, 0); //red orange
        strokeWeight(3);
        fill(r, g, b);
        ellipse(x, y, 50, 50);
        r += 1;// r value increase by 3 each time
        g += 2;//g value increases by 3 each time
        b += 5;//b value increases by 3 each time
        if (r > 255) { //when r is greater than 255, the value is reset to 0
          r=0;
        }
        if (g > 255) { //when g is greater than 255, the value is reset to 0
            g=0;
        }
        if (b > 255) { //when b is greater than 255, the value is reset to 0
              b=0;
            }
      }//end of for y
    }//end of for x
  }//end of if mousePressed

  smile(mouseX, mouseY);

// flower();
  
}//end of draw

void smile(float x, float y) {
  noStroke();
  fill(255, 255, 0);
  ellipse(x, y, 75, 75);

  noStroke();
  fill(0);
  ellipse(x-12, y-12, 15, 15);
  ellipse(x+12, y-12, 15, 15);

  stroke(0);
  strokeWeight(4);
  noFill();
  arc(x, y+10, 40, 35, 0, PI, OPEN);
}

void flower() {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  quad(500, 500, 300, 200, 100, 100, 200, 300);
  quad(500, 500, 700, 200, 900, 100, 800, 300);
  quad(500, 500, 700, 800, 900, 900, 800, 700);
  quad(500, 500, 300, 800, 100, 900, 200, 700);
  quad(500, 500, 575, 200, 500, 0, 425, 200);
  quad(500, 500, 575, 800, 500, 1000, 425, 800);
  quad(500, 500, 800, 575, 1000, 500, 800, 425);
  quad(500, 500, 200, 575, 0, 500, 200, 425);
}