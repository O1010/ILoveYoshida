class SceneManager{
  int counter;
  int endTime;
  SceneManager(){
    counter=20;
    endTime=0;

  }
  
  void timer(){
    delay(10);
    if(this.counter > this.endTime){
      counter = 20 - second;
    }else if (counter==0){
      text("score", 500, 300);
      text(score, 600, 300);
      
      noLoop();
    }
  }

  void displayTimer(){
    if(this.counter > this.endTime){
      text(mg.counter, 50, 50);
    }else{
      text("Fish!!", 50, 50);
    }
  }
  
}
