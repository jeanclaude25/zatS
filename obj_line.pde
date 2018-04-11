class Line {
            int lx1,lx2,ly1,ly2;
  
 Line(int tempX,int tempY){
                           lx1=tempX;
                           ly1=tempY;
                           lx2=lx1;
                           ly2=ly1;
                           }
  
void draw(){
            stroke(0);
            line(lx1,ly1,lx2,ly2);
            };
  
   void update_start(){
                lx1=mouseX;
                ly1=mouseY;
                }; 
  
  void update_end(){
                lx2=mouseX;
                ly2=mouseY;
                };
          }