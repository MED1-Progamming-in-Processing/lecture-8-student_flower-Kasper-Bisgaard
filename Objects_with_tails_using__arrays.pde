Bubble bubble0, bubble1;

void setup(){
  size(500,500);
  
  float x1=random(0+width/10,width-width/10);
  float y1=random(0+height/10,height-height/10);
  float radius=50;
  
  bubble0 = new Bubble(x1,y1,radius);
  bubble1 = new Bubble(random(50,100),random(300,400),random(1,3), random(1,5),radius);
}

void draw(){
  background(160);
  bubble1.display();
  bubble1.move();
  bubble1.bounce();
  bubble0.display1();
}
