
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */ 
int offset = 50;
String texto = "nulo";
int indice = 0;

int slideTempo = 5;
byte countdown = 90; // segundos
int seconds, startTime; //<>//

boolean iddle = true;
boolean fade = true;

boolean debug = true; //desliga mouse quando ligado


int iMenu = 0;
int iBg = 0; 
int iNarrativaM = 0 ; // indice cena menu
int iNarrativaT = 0 ; // indice tutorial
int iNarrativaB = 0;// indice cena narrativa B
int iNarrativaC = 0; // indice cena narrativa C
int iNarrativaD = 0; // indice cena narrativa D
int iNarrativaE = 0; // indice cena narrativa E
int iNarrativaF = 0; // indice cena narrativa F

String bgpath="";

/*  FONTES  */
PFont f, p, p1, p2, p3;

/*  IMAGENS    */
float timer = 0.0;
PImage[] narrativaM = new PImage[5];
PImage[] narrativaT = new PImage[6];
PImage[] narrativaB = new PImage[61];
PImage[] narrativaC = new PImage[36];
PImage[] narrativaD = new PImage[33];
PImage[] narrativaE = new PImage[52];
PImage[] narrativaF = new PImage[35];

PImage iconMaoEOn, iconMaoDOn, iconMaoE, iconMaoD;
PImage iconProgEsqOn, iconProgEsqOff, iconProgDirOn, iconProgDirOff;
PImage areaProgEsqOn, areaProgEsqOff, areaProgDirOn, areaProgDirOff;

float scaleE;
float scaleD;


int offx = 50, offy = 900; //MAO ESQUERDA
int offx1 = width*10, offy1 = 900; // MAO DIREITA
float transparency = 255;

color bgcolor = color(253,245,232);

boolean auto = true;


void setup() {
  //TODO fullscreen
  //fullScreen();
  size(displayHeight, displayWidth, P2D);
  iconMaoE = requestImage("menu/A006_maoEsquerda_off.png");
  iconMaoEOn = requestImage("menu/A006_maoEsquerda_on.png");
  iconMaoD = requestImage("menu/A006_maoDireita_off.png");
  iconMaoDOn = requestImage("menu/A006_maoDireita_on.png");
  
  /*iconProgEsqOn = requestImage("geral/G005_progressoEsquerda_off.png");
  iconProgEsqOff = requestImage("geral/G005_progressoEsquerda_on.png");
  iconProgDirOn = requestImage("geral/G005_progressoDireita_on.png");
  iconProgDirOff = requestImage("geral/G005_progressoDireita_on.png");
 */
  
  loadimages();

  try {
    robot = new Robot();
  } 
  catch (Throwable e) {}
  //reset mouse
  iNarrativaT=0;
  iMenu=0;
  cena(0,true);
  
  robot.mouseMove(width/2, height/2);
  
  // inicializa relogio  
  startTime = millis()/1000 + countdown;
 }

void draw () {
  seconds = startTime - millis()/1000;
   drawMouse();
   
   //modo inativo (iddle true)
   if (iddle){
       if ( seconds <=0) {
        iNarrativaM=0;
        iNarrativaT=0;
        iNarrativaB=0;
        iNarrativaC=0;
        iNarrativaD=0;
        iNarrativaE=0;
        iNarrativaF=0;
        iMenu=0;
        delay(1000);
        cena(0,true);
       }
       
       getMouse();

    }
    //modo ativo (iddle false)
   else{
     //zera timer
     startTime = millis()/1000 + countdown;
     
     //
     if (fade){
       if (transparency >0 ){
         transparency-=2.5;
       }
       else {
         fade = false;
       }
       
     }
     else {   
         if (transparency < 255){
           transparency+=5;
           cena(0,false);
           return;
         }
         else{
           
           iddle=true;
          delay(200);
          }
     }
       
     
   }
   
   
    

  
  
}
