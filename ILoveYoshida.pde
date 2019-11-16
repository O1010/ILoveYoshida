class Yoshida
{
  float x_position;
  float y_position;
  PImage img = loadImage( "yoshida.png" );
  
  void draw(){
    image( img, random(width), y_position );
  }
  
}

void setup(){
  background(#9E959A);
  size(640, 480);
  yoshidas = new ArrayList<Yoshida>();
  yoshidas.add(new Yoshida());

  for(Yoshida b: yoshidas){
    b.draw();
  }
}

ArrayList<Yoshida> yoshidas;

void draw(){
  frameRate( 300 );
}
