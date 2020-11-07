class Bubble {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float radius;

int num = 50;
float[] objectPosX = new float[num]; //x-position of the bubble
float[] objectPosY = new float[num]; //y-position of the bubble

int indexPosition=0;


  //First constructor
  Bubble (float _x, float _y, float tempR){
   objectPosX[0]=_x;
   
   objectPosY[0]=_y;
  
   radius=tempR;
  
  }
  
  //Second constructor
  Bubble(float x, float y, float _ySpeed, float _xSpeed, float tempR){
  objectPosX[0]=x;
  objectPosY[0]=y;
   ySpeed=_ySpeed;
   xSpeed=_xSpeed;
   radius=tempR;
  }
    //draws the second constructors
  void display(){
    fill(255,0,0);
    noStroke();
    for(int i =num-1; i>0;i--){
      ellipse(objectPosX[i], objectPosY[i], radius-i, radius-i);
    
  }}
  //draws the first constructor and makes it move via cursor and creates the tail after it
  void display1(){
    indexPosition = (indexPosition + 1) % num;
    objectPosX[indexPosition]=mouseX;
    objectPosY[indexPosition]=mouseY;
    for (int i = 0; i < num; i++) {
      
        int pos = (indexPosition + i) % num;
        noStroke();
        ellipse(objectPosX[pos], objectPosY[pos], radius+i, radius+i);
     
    }}
  //makes the second constructor move
  void move(){
    for (int i = num-1; i > 0; i--) {
      objectPosX[i] = objectPosX[i-1];
      objectPosY[i] = objectPosY[i-1];
    }
    objectPosX[0]+=xSpeed;
    objectPosY[0]+=ySpeed;
  }
    
    //makes the second constructor bounce off the walls
  void bounce(){
    if (objectPosX[0] >= width-radius/2 || objectPosX[0] <= 0+radius/2) {
      xSpeed = xSpeed *= -1;
    }if (objectPosY[0] >= height-radius/2 || objectPosY[0] <= 0+radius/2) {
      ySpeed = ySpeed *= -1;
    }
}}
  
  
  
  
