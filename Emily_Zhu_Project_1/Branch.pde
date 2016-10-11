void branch(float h, float i) {
  h *= 0.70;
  i *= 0.8;

  if (h > 10) {
    Leaves(h, h); //adds leaves to the end of the branches
    strokeWeight(i);
    stroke(0);
    pushMatrix();  
    rotate(0.4); //rotates the matrix so the branches draw at an angle
    line(0, 0, 0, -h); //draws the initial line
    translate(0, -h); //moves the line over for the next branch to draw
    branch(h, i); //redraws the branch
    popMatrix();

    pushMatrix();
    stroke(0);
    rotate(-0.4);
    strokeWeight(i);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h, i);
    popMatrix();
  }
}
