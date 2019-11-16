
ArrayList<Yoshida> yoshidas;

void draw(){
  frameRate( 300 );
}

void setup(){
  background(#9E959A);
  size(600,600);
  yoshidas = new ArrayList<Yoshida>();
  yoshidas.add(new Yoshida());

  for(Yoshida b: yoshidas){
    b.draw();
  }
}
