import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;

Minim minim;
AudioPlayer song;
GraficEqualizer eq;

AudioInput  in;
FFT fft;

//characterConstracter
Yoshida dog;
Chica chica;
DarkMatter food;

//part instracter
Hitjudg hit;
SceneManager mg;

int score;
int second;
//constant
final int SCREDDN_YSIZE = 600;
  
void setup() {
  size(1200, 600);
  textSize(32);
  frameRate(30);
  
  dog = new Yoshida();
  chica = new Chica();
  food = new DarkMatter();
  hit = new Hitjudg();
  mg = new SceneManager();

  //Load bgm
  minim = new Minim(this);
  song = minim.loadFile("gameBgm.mp3");
  song.loop();
  
  eq = new GraficEqualizer();
  
}

void draw() {
  startScene();
  second = millis()/1000;
  mg.timer();
  mg.displayTimer();
  
  eq.drawEqualize();

  //item draw
  dog.yoshidraw();
  chica.draw();
  
  if (hit.judg(dog)) {
    dog.foodTrace();
    score++;
  }

  if (!dog.isAlive() && !mg.isEndGame()) {
    dog = new Yoshida();
  }
}


//start Scene
void startScene(){

  PImage countFirst;

  String url="./images/test.png";
  
  countFirst = loadImage(url, "png");
    if(mg.counter>18){
    image(countFirst,0,0);
  }else if(mg.counter>0){
    background(#fcc0e9);
    food.fooddraw();
  }else{
    background(#9E959A);
  }
}

//for confirm moving
void keyPressed() {
  final int k = keyCode;

  if (k == 'S') if (looping) noLoop();
  else loop();
}
