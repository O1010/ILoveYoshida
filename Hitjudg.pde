class Hitjudg {
  final int DISTANCE = 100;
  float judg_x, 
    judg_y, 
    judg_distance;

  boolean judg(Yoshida dog) {
    float yoshi_x = dog.xPosition;
    float yoshi_y = dog.yPosition;
    judg_x = yoshi_x - mouseX;
    judg_y = yoshi_y - mouseY;
    judg_distance = sqrt((judg_x) * (judg_x) + (judg_y) * (judg_y));
    if (judg_distance < DISTANCE) {
      return true;
    } else {
      return false;
    }
  }

  void hitJudg() {
    if (this.judg(dog) && mg.counter<20 &&mg.counter>0) {
      dog.foodTrace();
      swish.play();
      swish.rewind();
      score++;
    }
  }
}
