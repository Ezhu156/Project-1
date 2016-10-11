// ADJECTIVE= LIVELY

float x=0; //affects the tree growth
float y; //the trunk
float j=60; //blue value of sky
float k=30; //green value of sky
int c, f; //stars (c is x value, f is y value)
float g=715; //movement of the sun
float o=85; //opacity of the stars
int v, b, t; //colors of the circles (v is red, b is green, t is blue)
int q, p; //q affects the size of the circles in the sky (p is commented out)
int num = 100; //controls the number of leaves it calls
//int[] a = new int[num]; // x value for leaves (commented out below in draw)
//int[] s = new int[num];  //y value for leaves (commented out below in draw)


void setup() {
  size(1000, 1000);
}//end setup

void draw() {
  if (keyPressed) {
    if (x<=200) { //max growth for branches
      x= x + .1; //rate branches are growing
    }
    if (y<120) { //max height of trunk
      y += 1.5; //rate trunk is growing
    } //end if y
  } //end keypressed


  pushMatrix();
  //sky
  noStroke();
  fill(0, k, j); //sky changes color with the arrow keys
  rectMode(CORNER);
  rect(0, 0, 1000, height/1.5);

  //sun
  noStroke();
  fill(255, 255, 0);
  ellipse(900, g, 100, 100); //location of the sun begins in the ground and rises with the arrow keys
  //corresponds with the color of the sky and grass

  //ground
  noStroke();
  fill(209, 165, 96); //brown (dirt)
  rectMode(CORNER);
  rect(0, height/1.5, 1000, height/1.5);


  //the line indicating the ground 
  stroke(k, j, k); //changes color corresponding to the sky and sun
  strokeWeight(8);
  line(0, height/1.5, 1000, height/1.5); 

  //trunk
  stroke(0);
  strokeWeight(8);
  translate(width/2, height/1.5); //centers the frame
  line(0, 0, 0, 0-y);

  //branch
  translate(0, -120);
  branch(x, 7); //branch(length of branch, width of branch)

  // roots
  translate(0, 120);
  roots(x, 7); //branch(length of branch, width of branch)
  popMatrix();


  // affects the color of the sky
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT) { //the sky gets lighter (more blue)
        if (j <=400) {
          j+= .4; //blue
          k += .2; //green
          if (g>=100) { //sun
            g-= 1;
          } //end of g
          if (o >= 100) { //opacity of the stars
            o-= .1;
          }//end o
        }//end j
      }// end right
    } //end key coded
    if (keyCode == UP) { //sky is set to midday
      j=255; //blue
      k= 152; //green
      g=100; //location of the sun
    } //end up
    if (keyCode == LEFT) { //the sky gets darker (less blue)
      if (j >= 0) {
        j-= .4; //blue
        k-= .8; //green
        if (g>=100) {
          g+= .7; //sun
        } //end of g
        if (o <= 255) { //opacity
          o+= .1;
        }//end o
      }//end j
    } //end left
    if (keyCode== DOWN) { //sky is reset to night time
      j=85; //blue
      k=40; //green
      g= 715; //sun
      o=85; //opactiy
    } //end down
  }//end keypressed

  //stars
  if (j <= 100) {
    for (c =0; c<= width; c+= random(100)) { //generated to show up in a random place
      for (f = 0; f <=650; f+= random(100)) {//also random placement
        noStroke();
        fill(255, o); //opacity is used so that the stars dissapear when the sun comes up
        ellipse(c, f, 3, 3);
      }//end b
    }//end a
  } //end if

  if (keyPressed) {
    noStroke();
    fill(0, 0, t, 150); //random blue circles
    ellipse(random(width), random(650), q, q); //random circles in the sky
    if (j >= 100) {
      fill(255, random(255)); //random white circles
      ellipse(random(width), random(650), q, q); //random white circles in the sky
    }

    if (q <=40) { //affects the size of the circles in the sky
      q+= 1;
    } else //max size of the circles is 40
    q= 1;
    v += 1;// r value increase by 3 each time
    b += 2;//g value increases by 3 each time
    t += 4;//b value increases by 3 each time
    if (v > 255) { //when r is greater than 255, the value is reset to 0
      v=0;
    }
    if (b > 255) { //when g is greater than 255, the value is reset to 0
      b=0;
    }
    if (t > 255) { //when b is greater than 255, the value is reset to 0
      t=0;
    }
  }//end keypressed

  //grid pattern of circles in the ground
  for (int a = 680; a<=height; a +=25) { //x coordinates of the circles in the ground
    for (int p = 0; p<=width; p +=25) { //y coordinates of the circles in the ground
      noStroke();
      fill(mouseX, mouseY, 0, 25); //color cycles through yellow and green
      ellipse(p, a, 15, 15);
    } //for p
  } //for a

  /* for (int i = num-1; i > 0; i--) { 
   a[i] = a[i-1]; 
   s[i] = s[i-1];
   } //end for
   a[0] = mouseX; 
   s[0] = mouseY; 
   for (int i = 0; i < num; i+= 2) { 
   Leaves(a[i], s[i]);
   } //end for  
   
   */
} //end draw
