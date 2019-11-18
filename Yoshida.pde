class Yoshida {
 //yohida position
 float x_position;
 float y_position;

 //yoshida y_velocity
 int yv;
 float speed = 9.8;

 //yohida imag
 PImage img;

 //yoshida live in screen
 boolean lifetime;

Yoshida() {
  x_position = random(0, 800);
  y_position = 0;
  yv = 0;
  img = loadImage("yoshida.png");
  lifetime = true;
 }

 void yoshidraw() {
   yv += speed;
   this.y_position += yv;
   image(img, this.x_position, this.y_position);

    if (y_position > 600) {
     this.lifetime = false;

    }
  }
  
}
