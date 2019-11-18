Yoshida dog;

void setup(){
  background(#9E959A);
  size(600,600);
  frameRate( 20 );
  dog = new Yoshida();
  
}

void draw(){
  background(#9E959A);
  dog.yoshidraw();
  //print(dog.lifetime);
  if (!dog.lifetime){
    setup();
  }
}

//for confirm moving
void keyPressed() {
  final int k = keyCode;

  if (k == 'S')
    if (looping)  noLoop();
    else          loop();
}
