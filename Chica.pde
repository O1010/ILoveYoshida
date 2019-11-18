//頑張ります。
PImage photo;
class Chica{
  void setup()
  {
    photo = loadImage( "tika3.png" ); 
    photo.resize(photo.width/9, photo.height/8); 
  }

  void draw()
  {
    image( photo,mouseX, mouseY);
  }
}
