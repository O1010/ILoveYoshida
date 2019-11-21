class SceneManager{
  int counter;
  int endTime;
  boolean endGame;
  
  SceneManager(){
    counter=20;
    endTime=0;
    endGame=false;
  }
  
  void timer(){
    //delay(10);
    if(this.counter > this.endTime){
      counter = 20 - second;
    }else if (counter==0){
      text("score", 500, 300);
      text(score, 600, 300);

    }
  }

  void displayTimer(){
    if(this.counter > this.endTime){
      text(mg.counter, 50, 50);
    }else{
      text("Fish!!", 50, 50);
    }
  }
  boolean isEndGame(){
    if (counter>0){
      return false;
    }else{
      return true;
    }
  }
}
