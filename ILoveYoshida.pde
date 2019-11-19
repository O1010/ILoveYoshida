import ddf.minim.*;

Minim minim;
AudioPlayer song;

//SoundFile song;
Yoshida dog;
Chica chica;
DarkMatter food;
Hitjudg hit;

void setup() {
  background(#9E959A);
  size(1200, 600);
  frameRate(20);
  dog = new Yoshida();
  chica = new Chica();
  food = new DarkMatter();
  hit = new Hitjudg();
  chica.setup();

  //Load bgm
  minim = new Minim(this);
  song = minim.loadFile("gameBgm.mp3");
  song.loop();

}

void draw() {
  background(#9E959A);

  //item draw
  food.fooddraw();
  dog.yoshidraw();
  chica.draw();
  
  if (hit.judg(dog)) {
    dog.foodTrace();
  }

  if (!dog.isAlive()) {
    dog = new Yoshida();
  }

}

//for confirm moving
void keyPressed() {
  final int k = keyCode;

  if (k == 'S') if (looping) noLoop();
  else loop();
}
