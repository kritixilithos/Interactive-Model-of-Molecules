//methane- by Kritixi Lithos

Atom carbon;
Atom[]Hs = new Atom[4];
/*James*/Bond[]bonds = new Bond[4];

float[]currRot = {0,0,0};

void setup() {
  size(800, 800, P3D);
  carbon = new Atom(25);
  for(int i = 0; i < Hs.length; i++) {
    Hs[i] = new Atom(255);
  }
  for(int i = 0; i < bonds.length; i++) {
    bonds[i] = new Bond(10, 200, 10);
  }
}

void draw() {
  background(230,230,200);
  directionalLight(146,146,146,0,0,-1);
  ambientLight(122, 122, 122);
  
   translate(width/2, height/2);
   
   if(key == 'a') {
     currRot[0] += (2*PI*(mouseX-pmouseX)/width);
     currRot[1] += (2*PI*(mouseY-pmouseY)/width);
   }else if(key == 's') {
     currRot[1] += (2*PI*(mouseX-pmouseX)/width);
     currRot[2] += (2*PI*(mouseY-pmouseY)/width);
   }else if(key == 'd') {
     currRot[2] += (2*PI*(mouseX-pmouseX)/width);
     currRot[0] += (2*PI*(mouseY-pmouseY)/width);
   }
   
   rotateX(currRot[0]);
   rotateY(currRot[1]);
   rotateZ(currRot[2]);
   
   stroke(255,0,0);
   line(-width,0,0,width,0,0);
   line(0,-width,0,0,width,0);
   line(0,0,-width,0,0,width);
   
   carbon.display();
   pushMatrix();
   rotateY(radians(109.5*2));
   pushMatrix();
    rotateY(radians(109.5));
    pushMatrix();
     translate(0,-200,0);
     Hs[0].display();
    popMatrix();
    
    bonds[0].display();
    
    pushMatrix();
     rotateZ(radians(109.5));
     bonds[1].display();
     pushMatrix();
      translate(0,-200,0);
      Hs[1].display();
     popMatrix();
    popMatrix();
   popMatrix();
   
   pushMatrix();
    rotateZ(radians(109.5));
    bonds[2].display();
    pushMatrix();
     translate(0,-200,0);
     Hs[2].display();
    popMatrix();
   popMatrix();
  popMatrix();
  
  pushMatrix();
   rotateX(radians(109.5));
   bonds[3].display();
   pushMatrix();
    translate(0,-200,0);
    Hs[3].display();
   popMatrix();
  popMatrix();
}