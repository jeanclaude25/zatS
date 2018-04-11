class Loading{
  int load=0;
  int alpha =0;
  Loading(){
    
  }
  
  void draw(){

    stroke(0,alpha);noFill();
            rect(width/2-120,180,250,10);
            fill(0,255,0,alpha);
            rect(width/2-118,182,load,6);
  }
  
  void update(int a,int b){
    load=a*246/b;
  };
  void show(){
    alpha =255;
  }
  
  void hide(){
        alpha =0;
  };
  
};