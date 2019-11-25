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
  mg.displayScene();
  second = millis()/1000;
  mg.timer();
  mg.displayTimer();

  eq.drawEqualize();

  hit.hitJudg();
}


//for confirm moving
void keyPressed() {
  final int k = keyCode;

  if (k == 'S') if (looping) noLoop();
  else loop();
}
