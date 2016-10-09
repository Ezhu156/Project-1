float x=0;
float y;
void setup() {
  size(1000, 1000);
  background(255);
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
   //sky (TEMPORARY)
  noStroke();
  fill(154,240,255); //MAKE SKY CHANGE COLORS WITH CERTAIN COMMANDS
  rectMode(CORNER);
  rect(0, 0,1000,height/1.5);
  
  //the line indicating the ground (TEMPORARY)
  stroke(0);
  strokeWeight(8);
  line(0, height/1.5, 1000, height/1.5); 
  //trunk
  stroke(0);
  strokeWeight(7);
  translate(width/2, height/1.5); //centers the frame
  line(0, 0, 0, 0-y);
  //branch
  translate(0, -120);
  branch(x, 7); //branch(length of branch, width of branch)
  //translate(width/2, height/1.5);
  //roots(x, 7); //branch(length of branch, width of branch)
  popMatrix();

//TEMPORARY
  //sun
  noStroke();
  fill(250,250,0);
  ellipse(900,100,100,100);

//TEMPORARY
  //ground
  noStroke();
  fill(209,165,96);
  rectMode(CORNER);
  rect(0, height/1.5,1000,height/1.5);
  
/*
//FIGRUE OUT HOW TO ADD LEAVES/SOMETHING TO THE BRANCHES
  if(x>199) {
    for (float z = 200; z <= 800; z+= 50) {
      for (float w = 200; w <= 400; w+=50) {
        noStroke();
        fill(255, 0, 0);
        ellipse(z, w,10, 10);
      }
    }
  }
  */
} //end draw
