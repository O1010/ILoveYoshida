import processing.sound.*;
SoundFile file;
Yoshida dog;
Chica chica;
DarkMatter food;

void setup() {
  background(#9E959A);
  size(1200, 600);
  frameRate( 20 );
  dog = new Yoshida();
  chica = new Chica();
  food = new DarkMatter();
  chica.setup();
  
  //Load bgm
  file = new SoundFile(this, "gameBgm.mp3");
  file.play();
 
}

void draw() {
  background(#9E959A);
  food.fooddraw();
  dog.yoshidraw();
  chica.draw();
  //print(dog.lifetime);
  if (!dog.lifetime) {
    dog = new Yoshida();
  }
}

//for confirm moving
void keyPressed() {
  final int k = keyCode;

  if (k == 'S')
    if (looping)  noLoop();
    else          loop();
}

boolean tobuyo(){
  return true;
}
