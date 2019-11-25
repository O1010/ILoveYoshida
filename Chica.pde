import gifAnimation.*;

class Chica{
  Gif myAnimation;
  String path;
  
  Chica(){
    path = "./images/Chica.gif";
  }
  
  void setup(PApplet parent)
  {
  myAnimation = new Gif(parent, path);
  myAnimation.loop(); 
  }

  void draw()
  {
   image( myAnimation,mouseX-20, mouseY-50);
  }
}
