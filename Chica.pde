
class Chica{
  
  PImage photo;
  String url;
  void setup()
  {
    url = "./images/tika3.png";
    photo = loadImage( url,"png" ); 
    photo.resize(photo.width/8, photo.height/8); 
  }

  void draw()
  {
    image( photo,mouseX-20, mouseY-50);
  }
}
