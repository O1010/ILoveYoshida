import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;

Minim minim;
AudioPlayer song;
AudioPlayer swish;
GraficEqualizer eq;

AudioInput  in;
FFT fft;

//characterConstracter
ArrayList<Yoshida> dogs;
Chica chica;
DarkMatter food;

//part instracter
Hitjudg hit;
SceneManager mg;

int score;
int second;
float yoshidatime;
float deltatime;

//constant
final int SCREDDN_YSIZE = 600;

void setup() {
  size(1200, 600);
  textSize(32);
  frameRate(30);

  dogs = new ArrayList<Yoshida>();
  chica = new Chica();
  food = new DarkMatter();
  hit = new Hitjudg();
  mg = new SceneManager();

  yoshidatime = mg.counter;
  deltatime = 1;
  dogs.add(new Yoshida());
  chica.setup(this);
  
  //Load bgm
  minim = new Minim(this);
  song = minim.loadFile("gameBgm.mp3");
  song.play();
  //Load SE
  swish = minim.loadFile("Swish.mp3");

  eq = new GraficEqualizer();
}

void draw() {
  //startScene();
  this.displayScene();
  second = millis()/1000;
  mg.timer();
  mg.displayTimer();
  eq.drawEqualize();
}

void displayScene() {
  if (mg.counter>20) {
    image(mg.startImage, 0, 0);
    noCursor();
  } else if (mg.counter > 0) {
    background(#fcc0e9);
    //if (!dog.isAlive() && !mg.isEndGame()) {
    //dog = new Yoshida();
    //}
    for(Yoshida dog : dogs){
    dog.yoshidraw();
    hit.hitJudg(dog);
    }
    food.fooddraw();
    chica.draw();
  } else {
    noCursor();
    background(#9E959A);
  }
  
  if (yoshidatime - deltatime >= mg.counter && !mg.isEndGame()){
    dogs.add(new Yoshida());
    yoshidatime = mg.counter;
  }
}


//for confirm moving
void keyPressed() {
  final int k = keyCode;

  if (k == 'S') if (looping) noLoop();
  else loop();
}
