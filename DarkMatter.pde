class DarkMatter{
  
  //DarkMatter position
  float x_position;
  float y_position;
  
  //DarkMatter image
  PImage img;
  
  DarkMatter(){
    x_position = 1000;
    y_position = 300;
    img = loadImage("yoshida.png");
    
  }
  void fooddraw(){
    image(img, this.x_position, this.y_position);
  }
}
