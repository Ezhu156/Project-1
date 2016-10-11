void roots(float e, float r) {
  e *= .8;
  r *= 0.8; //stroke

  if (e > 10) {
    strokeWeight(r);
    stroke(0);
    pushMatrix();  
    rotate(0.4); //rotates the matrix so the roots draw at an angle
    line(0, 0, 0, e); //draws the initial line
    translate(0, e); //moves the line over for the next root to draw
    roots(e, r); //redraws the root
    popMatrix();

    pushMatrix();
    rotate(-0.4);
    strokeWeight(r);
    line(0, 0, 0, e);
    translate(0, e);
    roots(e, r);
    popMatrix(); 
  }
}
