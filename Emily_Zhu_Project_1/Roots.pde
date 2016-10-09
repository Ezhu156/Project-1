void roots(float e, float r) {
  e *= 1;
  r *= 0.2; //stroke
  
  if (e > 29) {
    strokeWeight(r);
    pushMatrix();  
    rotate(PI);
    line(0, 0, 0, e*2);
    //translate(0, -e);
    branch(e,r);
    popMatrix();           
    
    pushMatrix();
    rotate(PI);
    strokeWeight(r);
    line(0, 0, 0, e/2);
    //translate(0, -e);
    branch(e,r);
    popMatrix();


  }
}