class Hitjudg{
  float judg_x,judg_y,judg_distance;
 
  boolean judg(Yoshida dog){
    float yoshi_x = dog.x_position;
    float yoshi_y = dog.y_position;
    judg_x = yoshi_x - mouseX;
    judg_y = yoshi_y - mouseY;
    judg_distance = (judg_x)*(judg_x) + (judg_y)*(judg_y);
    if (judg_distance < 10000) {
      return true;
    }else{
      return false;
    }
  }
}
