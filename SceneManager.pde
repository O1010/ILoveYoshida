class SceneManager{
  int counter;
  int endTime;
  
  SceneManager(){
    counter=30;
    endTime=0;
  }
  
  void timer(){
    delay(10);
    if(this.counter > this.endTime){
      counter--;
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
      text("おわり", 50, 50);
    }
  }
}
