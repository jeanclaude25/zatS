class Reunion {
             int id; 
             int x1,y1;
             int start,end;
      Reunion(int tempId){
                          id=tempId;
                          x1=mouseX;y1=mouseY;
                          cercles[nombres_de_cercles]= new Cercle(x1,y1,id,"start");start=nombres_de_cercles; nombres_de_cercles++;   
                          cercles[nombres_de_cercles]= new Cercle(x1,y1,id,"end");end=nombres_de_cercles; nombres_de_cercles++; 
                          lignes[id]= new Line(x1,y1);
                                  };

  void draw(){  
              cercles[start].draw();
              cercles[end].draw();
              lignes[id].draw();
              };

void update_onStart(){
              cercles[end].update();
              lignes[id].update_end();
              };
              
 void update(String place){
             if(place=="start"){cercles[start].update();lignes[id].update_start();}else{cercles[end].update();lignes[id].update_end();};
              
            };             
              


          }