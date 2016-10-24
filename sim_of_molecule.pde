//methane- by Kritixi Lithos

Atom carbon; //TEMPLATE
Atom[]Hs = new Atom[4];

float[]currRot = {0,0,0}; //TEMPLATE

void methane() {
  carbon.display();
  
  //HYDROGEN 1
  pushMatrix();
  translate(100,100,100);
  Hs[0].display();
  stroke(255,0,0);
  line(0,0,0,-100,-100,-100);
  strokeWeight(3);
  popMatrix();
  
  //HYDROGEN 2
  pushMatrix();
  translate(-100,100,-100);
  Hs[1].display();
  stroke(255,0,0);
  line(0,0,0,100,-100,100);
  popMatrix();
  
  //HYDROGEN 3
  pushMatrix();
  translate(100,-100,-100);
  Hs[2].display();
  stroke(255,0,0);
  line(0,0,0,-100,100,100);
  popMatrix();
  
  //HYDROGEN 4
  pushMatrix();
  translate(-100,-100,100);
  Hs[3].display();
  stroke(255,0,0);
  line(0,0,0,100,100,-100);
  popMatrix();
}

void setup() {
  size(800, 800, P3D);   //TEMPLATE
  carbon = new Atom(25); //TEMPLATE
  for(int i = 0; i < Hs.length; i++) {
    Hs[i] = new Atom(255);
  }
}

void draw() { //TEMPLATE
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
   
   methane();
}