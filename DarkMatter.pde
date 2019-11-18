class DarkMatter {

  //DarkMatter position
  float x_position;
  float y_position;

  //DarkMatter image
  PImage img;
  String url;

  DarkMatter() {
    x_position = 850;
    y_position = 200;
    url = "./images/meuniere.jpeg";
    img = loadImage(url, "jpeg");
  }
  void fooddraw() {
    image(img, this.x_position, this.y_position);
  }
}
