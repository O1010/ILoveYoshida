class Yoshida {
  //constant
  int SCREDDN_SIZE = 600;
  
  //yohida position
  float xPosition;
  float yPosition;

  //yoshida y_velocity
  int yv;
  float speed = 9.8;

  //yohida imag
  PImage img;
  String url;

  //yoshida live in screen
  boolean lifetime;

  Yoshida() {
    xPosition = random(0, 800);
    yPosition = 0;
    yv = 0;

    lifetime = true;
    url = "./images/yoshida.png";
    img = loadImage(url, "png");  
  }

  void yoshidraw() {
    yv += speed;
    this.yPosition += yv;
    image(img, this.xPosition, this.yPosition);

    if (yPosition > SCREDDN_SIZE) {
      this.lifetime = false;
    }
  }
  
  boolean isAlive(){
    return lifetime;
  }
  
  void foodTrace(){
    this.xPosition = lerp(this.xPosition, food.x_position, 1.0);
    this.yPosition = lerp(this.yPosition, food.y_position, 1.0);
  }

}
