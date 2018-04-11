class MyDropListener extends DropListener {
  PImage temp;
  boolean loading=false;
  float photoX,photoY;
  float targetX=width;
  float targetY=height;
  
  MyDropListener() {
    setTargetRect(0,0,targetX,targetY);
    
  };

            


void loading(){
  //chargement de l'image à mettre dans n'importe quel draw_function
    if(temp!=null&&loading){
                            while(loading){
                                          if(temp.width>10){loading=false;};//sans chargement, il vaut 4
                                          photoX = temp.width;
                                          photoY = temp.height;
                                          dimensionX = photoX;//dimension de l'export
                                          dimensionY = photoY;
                                          targetX = photoX;//dimension de la zone de drop
                                          targetY = photoY;
                                          print.setPos(int(photoX/2),int(photoY-30));//replace le bouton print
                                          println("### photo chargée ...");
                            surface.setResizable(true);//taille de la fenetre
                            surface.setSize(int(photoX),int(photoY));
                            surface.setResizable(false);
                            
                            };
                            
                            };
  
                  };
                  
                  
  void draw_photo() {
    
    this.loading();
    
    if(temp!=null){ 
                          image(temp,0,0,photoX,photoY); 
                          };
                                
    
    
     };//fin du draw_photo


  void dropEvent(DropEvent theEvent) {
    if(theEvent.isImage()) {
      println("### loading file ...");
      temp = theEvent.loadImage();
      loading=true;
  }
  }
  
  
  };