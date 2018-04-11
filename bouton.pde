class Print{
  int x,y;
  int size=30;
  Print(int tempX,int tempY){x=tempX;y=tempY;};
  void display(){
                  if(this.mouseOn()){fill(100,12,100);already_on_focus=true;}else{fill(100,12,250);already_on_focus=false;};
                  if(this.mouseOn()&&mousePressed){fill(100,100,0);thread("export");};
                  rect(x,y,size,size,8);
                  fill(255);
                  textSize(10);textAlign(CENTER,CENTER);
                  rect(x+6,y+11,size-12,size-22,2);
                  noFill();stroke(255);
                  rect(x+9,y+6,size-19,size-15);
                  stroke(0);
                  line(x+8,y+13,x+10,y+13);
                };
  boolean mouseOn(){return mouseX>x&&mouseX<x+size&&mouseY>y&&mouseY<y+size;};
  boolean mouseOut(){return !this.mouseOn();};
  void setPos(int tempX,int tempY){x=tempX;y=tempY;};
  
};