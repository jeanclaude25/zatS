//pour le drop de données
import drop.*;
SDrop drop;
MyDropListener m1;

//Les dimensions de l'export sont celles du drop
float dimensionX;
float dimensionY;

PGraphics pg,fade;

int identifier=0,nombres_de_cercles=0;
boolean already_on_focus=false;
//creation de l'objet
Cercle[] cercles =new Cercle[2000];Line[] lignes =new Line[1000];
Reunion[] reunions =new Reunion[1000];
Loading loading = new Loading();

//bouton
Print print;

void settings(){
                size(400,400);
                };

void setup(){
             frameRate(30);
             drop = new SDrop(this);
             m1 = new MyDropListener();
             drop.addDropListener(m1);
             
             //bouton
             print = new Print(width/2,height-30);
             loading = new Loading();
            };

void draw(){
            surface.setTitle("police frame edit  "+int(frameRate) + " fps");  
            background(255);
            m1.draw_photo();
            tint(255,50);
            
            for (int i=0;i<identifier;i++){reunions[i].draw();};
            print.display();
            
            //utiliser un deuxieme thread
            loading.draw();
            };


void mousePressed(){
                    if (mouseButton == LEFT && already_on_focus==false) {
                                              reunions[identifier]= new Reunion(identifier);
                                              identifier++;
                                              };
                    
                       
                  };

void mouseDragged(){
                    if (mouseButton == LEFT && already_on_focus==false) {
                                              reunions[identifier-1].update_onStart();
                                              }
                    if (mouseButton == RIGHT) {
                                              for (int i=0;i<nombres_de_cercles;i++){
                                                                                    if(cercles[i].mouseOn()){
                                                                                                            //cercles[i].get_id()
                                                                                                            //cercles[i].get_place()
                                                                                                            reunions[cercles[i].get_id()].update(cercles[i].get_place());
                                                                                                             };
                                                                                    };
                                              };
                    };

void mouseReleased(){
                    if (mouseButton == LEFT) {
                                              }
                    };

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  for (int i=0;i<nombres_de_cercles;i++){
                                        if(cercles[i].mouseOn()&&e>0){
                                                                      cercles[i].down();}
                                                                                      else if(cercles[i].mouseOn()&&e<0){
                                                                                            cercles[i].up();
                                                                                            };
                                                                                      };
                                                                      };