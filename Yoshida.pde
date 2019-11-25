class Yoshida {

  //yohida position
  private float xPosition;
  private float yPosition;

  //yoshida y_velocity
  private int yv;
  private float speed = 2;

  //yohida image
  private PImage img;
  private String path;

  //yoshida live in screen
  private boolean lifetime;
  
  private boolean toFood;
  public boolean gettoFood(){return this.toFood;}
  public void settoFood(boolean hit){this.toFood = hit;}

  Yoshida() {
    xPosition = random(0, 700);
    yPosition = 0;
    yv = 0;
    
    toFood = false;
    lifetime = true;
    path = "./images/yoshida.png";
    img = loadImage(path, "png");
  }

  void yoshidraw() {
    yv += speed;
    this.yPosition += yv;
    image(img, this.xPosition, this.yPosition);
    
    if(toFood){
      foodTrace();
    }

    if (yPosition > SCREDDN_YSIZE) {
      this.lifetime = false;
    }
  }

  boolean isAlive() {
    return lifetime;
  }

  void foodTrace() {
    this.xPosition = lerp(this.xPosition, food.x_position, 0.1);
    this.yPosition = lerp(this.yPosition, food.y_position, 1.0);
  }
}
