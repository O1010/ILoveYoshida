PImage photo;
class Chica{
  void setup()
  {
    
    photo = loadImage( "./images/tika3.png","png" ); 
    photo.resize(photo.width/8, photo.height/8); 
  }

  void draw()
  {
    image( photo,mouseX-20, mouseY-50);
  }
}
