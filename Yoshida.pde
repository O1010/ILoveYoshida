int time = 0;
class Yoshida
{ 
  //yohida position
  float x_position=random(width);
  float y_position=0;
  
  //yoshida y_velocity
  int yv=0;
  float speed = 9.8;
  
  //yohida imag
  PImage img = loadImage( "yoshida.png" );
  
  boolean iruka=false;
  
  void draw(){
    yv += speed;
    if (iruka==false){
    image( img, x_position, y_position );
    y_position += yv;
    iruka = true;
    }else{
    background(#9E959A);
    iruka = false;
    }
    
  }
  
  void fall(){
     image (this.img, x_position, yv * speed);
  }
}
