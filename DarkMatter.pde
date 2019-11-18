class DarkMatter{
  
  //DarkMatter position
  float x_position;
  float y_position;
  
  //DarkMatter image
  PImage img;
  
  DarkMatter(){
    x_position = 700;
    y_position = 200;
    img = loadImage("meuniere .jpeg");    
  }
  void fooddraw(){
    image(img, this.x_position, this.y_position);
  }
}
