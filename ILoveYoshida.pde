
ArrayList<Yoshida> yoshidas;

void setup(){
  background(#9E959A);
  size(600,600);
  frameRate( 10 );
  yoshidas = new ArrayList<Yoshida>();
  for (int i=0;i<1;i++){
      yoshidas.add(new Yoshida());
      delay(10);
    }


}

void draw(){
  
  for(Yoshida yoshi: yoshidas){
    yoshi.draw();
  }
}
