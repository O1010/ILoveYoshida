class Yoshida {

  //yohida position
  private float xPosition;
  private float yPosition;

  //yoshida y_velocity
  private int yv;
  private float speed = 9.8;

  //yohida image
  private PImage img;
  private String url;

  //yoshida live in screen
  private boolean lifetime;

  Yoshida() {
    xPosition = random(0, 700);
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

    if (yPosition > SCREDDN_YSIZE) {
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
