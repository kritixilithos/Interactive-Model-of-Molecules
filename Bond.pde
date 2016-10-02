class Bond {
  int x,y,z;
  int sides = 30;
  Bond(int _x, int _y, int _z) {
    x=_x;
    y=_y;
    z=_z;
  }
  
  void display() {
    fill(255);
    pushMatrix();
    if(x>y) {
      translate(0-x/2,0,0);
    }else if(y>x) {
      translate(0, 0-y/2, 0);
    }else{
      translate(0, 0, 0-z/2);
    }
    
    /*BEGIN CYLINDER: courtesy of 
    http://vormplus.be/blog/article/drawing-a-cylinder-with-processing*/
    float angle = 360 / sides;
    float halfHeight = y / 2;
    // draw top shape
    int r = x;
    rotateX(PI/2);
    beginShape();
    for (int i = 0; i < sides; i++) {
      float x = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;
      vertex( x, y, -halfHeight );    
    }
    endShape(CLOSE);
    // draw bottom shape
    beginShape();
    for (int i = 0; i < sides; i++) {
      float x = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;
      vertex( x, y, halfHeight );    
    }
    endShape(CLOSE);
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
      float x = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;
      vertex( x, y, halfHeight);
      vertex( x, y, -halfHeight);    
    }
    endShape(CLOSE);
    /*END CYLINDER*/
    popMatrix();
  }
}