Yoshida dog;

void setup(){
  background(#9E959A);
  size(600,600);
  frameRate( 10 );
  dog = new Yoshida();
  
  
}

void draw(){
  dog.draw();
  //print(dog.lifetime);
  if (!dog.lifetime){
    setup();
  }

}
