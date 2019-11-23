class SceneManager {
  int counter;
  int endTime;
  boolean endGame;
  PImage startImage;
  String url;

  SceneManager() {
    counter=25;
    endTime=0;
    endGame=false;
    url="./images/start.png";
    startImage = loadImage(url, "png");
  }

  void timer() {
    //delay(10);
    if (this.counter > this.endTime) {
      counter = 25 - second;
    } else if (counter==0) {
      text("score", 500, 300);
      text(score, 600, 300);
    }
  }

  void displayTimer() {
    if (this.counter > this.endTime) {
      text(mg.counter, 50, 50);
    } else {
      text("Finish!!", 50, 50);
    }
  }

  void displayScene() {
    if (this.counter>20) {
      image(startImage, 0, 0);
      noCursor();
    } else if (this.counter>0) {
      background(#fcc0e9);
      if (!dog.isAlive() && !mg.isEndGame()) {
        dog = new Yoshida();
      }
      food.fooddraw();
      dog.yoshidraw();
      chica.draw();
    } else {
      noCursor();
      background(#9E959A);
    }
  }
  boolean isEndGame() {
    if (counter>0) {
      return false;
    } else {
      return true;
    }
  }
}
