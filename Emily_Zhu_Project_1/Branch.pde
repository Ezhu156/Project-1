void branch(float h, float i) {
  h *= 0.70;
  i *= 0.8;

  if (h > 10) {
    strokeWeight(i);
    pushMatrix();  
    rotate(0.4);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h, i);
    popMatrix();

    pushMatrix();
    rotate(-0.4);
    strokeWeight(i);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h, i);
    popMatrix();
/*
    pushMatrix();  
    rotate(.8);
    line(0, 0, 0, -h/2);
    translate(0, -h);
    branch(h, i);
    popMatrix();

    pushMatrix();
    rotate(-.8);
    strokeWeight(i);
    line(0, 0, 0, -h/2);
    translate(0, -h);
    branch(h, i);
    popMatrix();
    */
  }
}