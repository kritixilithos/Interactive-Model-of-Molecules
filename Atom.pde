class Atom { //TEMPLATE
  color atom;
  
  Atom(int _atom) {
    atom = color(_atom);
  }
  
  void display() {
    fill(atom);
    noStroke();
    sphere(50);
  }
}