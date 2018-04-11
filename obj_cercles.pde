class Cercle {
              int x,y,sizeX,sizeY;
              int id;String placement;
      Cercle(int tempX,int tempY,int tempId,String tempPlacement){
                                  x=tempX;
                                  y=tempY;
                                  sizeX=25;
                                  sizeY=25;
                                  id=tempId;
                                  placement=tempPlacement;
                                  };

  void draw(){  
              if(this.mouseOn()){stroke(255,0,0);fill(255,0,0,100);}else{stroke(0);noFill();};
              ellipse(x,y,sizeX,sizeY);
              };

  boolean mouseOn(){return mouseX>x-(sizeX/2)&&mouseY>y-(sizeY/2)&&mouseX<x+(sizeX/2)&&mouseY<y+(sizeY/2);};
  
void update(){x=mouseX;y=mouseY;};
void up(){sizeX=sizeX+5;sizeY=sizeY+5;};
void down(){sizeX=sizeX-5;sizeY=sizeY-5;};

int get_id(){return id;};
String get_place(){return placement;};

int get_x(){return x;};
int get_y(){return y;};
int get_size(){return sizeX;};

          }