class Yoshida
{
  float x_position;
  float y_position;
  PImage img = loadImage( "yoshida.png" );
  
  void draw(){
    image( img, random(width), y_position );
  }
  
}
