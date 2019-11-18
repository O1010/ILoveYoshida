//頑張ります。
PImage photo;

void setup()
{
  size( 1200,600 );
  photo = loadImage( "tika3.png" );
  
  photo.resize(photo.width/9, photo.height/8); 
  
}

void draw()
{
  background(0,0,0);
  image( photo,mouseX, mouseY);
}
