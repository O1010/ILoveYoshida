class Yoshida {
 //yohida position
 float x_position;
 float y_position;

 //yoshida y_velocity
 int yv;
 float speed = 9.8;

 //yohida imag
 PImage img;

 boolean existance;
 boolean lifetime = true;

 Yoshida() {
  x_position = random(width);
  y_position = 0;
  yv = 0;
  img = loadImage("yoshida.png");
  existance = false;
  lifetime = true;
 }

 void draw() {
   yv += speed;

   if (this.lifetime) {
    if (existance == false) {
     image(img, this.x_position, this.y_position);
     this.y_position += yv;
     this.existance = true;
    } else {
     background(#9E959A);
      this.existance = false;
     }
    }

    if (y_position > 600) {
     this.lifetime = false;
     background(#9E959A);
    } 
  }
  
  boolean isYoshidaAlive(){
    return this.lifetime;
  }
}
