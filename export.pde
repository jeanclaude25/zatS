//les variables qu'il faudra modifier pour donner plus de controle à l'user
int nombre_de_frame=250;
int lignes_max=15;
int lignes_min=0;
int couleur_des_lignes = color(0);
boolean variation_color = true;


int frame_actuelle=0;

void export(){
loading.show();
/*
  //test avec un slow fade
  pg = createGraphics(dimensionX, dimensionY);
  fade = createGraphics(dimensionX, dimensionY);
                                pg.beginDraw();
                                pg.background(255);
  */
  fade = createGraphics(int(dimensionX), int(dimensionY));
  
for (int i=0;i<nombre_de_frame;i++){
                                pg = createGraphics(int(dimensionX), int(dimensionY));
                                pg.beginDraw();
                                
                                pg.image(fade,0,0);
                                fade = createGraphics(int(dimensionX), int(dimensionY));
                                
                                /*pg.fill(255, 70); // semi-transparent white
                                pg.noStroke();
                                pg.rect(0, 0, dimensionX, dimensionY);*/
                                
                                pg.stroke(couleur_des_lignes);
                                for (int is=0;is<nombres_de_cercles-1;is=is+2){
                                                                          int nombre_de_ligne_choisi=int(random(lignes_min,lignes_max));
                                                                          for (int iss=0;iss<nombre_de_ligne_choisi;iss++){
                                                                                                                    if(variation_color){int alpha=int(random(0,255));pg.stroke(alpha);};
                                                                                                                    int nombreX1=int(random(cercles[is].get_x()-(cercles[is].get_size()/2),cercles[is].get_x()+(cercles[is].get_size()/2)));
                                                                                                                    int nombreX2=int(random(cercles[is+1].get_x()-(cercles[is+1].get_size()/2),cercles[is+1].get_x()+(cercles[is+1].get_size()/2)));
                                                                                                                    int nombreY1=int(random(cercles[is].get_y()-(cercles[is].get_size()/2),cercles[is].get_y()+(cercles[is].get_size()/2)));
                                                                                                                    int nombreY2=int(random(cercles[is+1].get_y()-(cercles[is+1].get_size()/2),cercles[is+1].get_y()+(cercles[is+1].get_size()/2)));
                                                                                                                    pg.line(nombreX1,nombreY1,nombreX2,nombreY2);
                                                                                                                    };
                                                                          
                                                                          };
                                                                 
                                
                                 
                                frame_actuelle=i; 
                                pg.save("/out/"+frame_actuelle+".png");
                                
                                
                                fade.beginDraw();
                                
                                for(int px=0;px<dimensionX;px++){
                                                                      for(int py=0;py<dimensionY;py++){
                                                                      };
                                  
                                };
                                //faire une boucle for qui check chaque pixel en long et en large.
                                //si le pixel est blanc alors ne rien faire.. sinon, picker la couleur de pg et l'appliquer sur fade avec un niveau de transparence
                                // boucle de pixels horizontaux
                                        //boucle de pixels verticaux
                                fade.endDraw();
                                loading.update(i,nombre_de_frame);
                                };
                                
 pg.endDraw();  
 loading.hide();


};