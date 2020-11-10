
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */ 
int offset = 50;
String texto = "nulo";
int indice = 0;
int tempo = 0;
int tempomax = 500;
boolean iddle = true;


boolean debug = true; //desliga mouse quando ligado

int slideTempo = 5;
byte countdown = 10; // segundos
int seconds, startTime;

int iMenu = 0;
int iBg = 0; 
int iNarrativaM = 0 ; // indice cena menu
int iNarrativaA = 0; // indice cena narrativa A
int iNarrativaB = 0; // indice cena narrativa B
int iNarrativaC = 0; // indice cena narrativa C
int iNarrativaD = 0; // indice cena narrativa D
int iNarrativaE = 0; // indice cena narrativa E

String bgpath="";

/*  FONTES  */
PFont f, p, p1, p2, p3;

/*  IMAGENS    */
float timer = 0.0;
PImage[] narrativaM = new PImage[6];
PImage[] narrativaA = new PImage[4];
PImage[] narrativaB = new PImage[5];
PImage[] narrativaC = new PImage[36];
PImage[] narrativaD = new PImage[36];
PImage[] narrativaE = new PImage[5];

float scaleE;
float scaleD;

PImage iconMaoE, iconMaoD;


int offx = 50, offy = 900; //MAO ESQUERDA
int offx1 = width*10, offy1 = 900; // MAO DIREITA
float transparency = 255;

color bgcolor = color(253,245,232);

boolean auto = true;


void setup() {
  //TODO fullscreen
  //fullScreen();
  size(displayHeight, displayWidth);  
  iconMaoE = requestImage("menu/A007_maoEsquerda.png");
  iconMaoD = requestImage("menu/A006_maoDireita.png");
  loadimages();
  cena (0);
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {
  }
  //reset mouse
  
  robot.mouseMove(width/2, height/2);
  startTime = millis()/1000 + countdown;
 }

void draw () {
   
  seconds = startTime - millis()/1000;
    
   println(seconds);
   println(iddle);
     

  //ROTEIRO
  // inicio
  if (seconds < 5 && seconds > 0){
     cena(0);
  }
  
  //TODO tela descanso
  if ( iddle && seconds <=0) {
     iNarrativaM=0;
     iMenu=0;
     cena(0);
     iddle=false;
  }
   
  //INTERAÇÃO
  else  {
   getMouse();
    //DEBUG    
    //debug();    
   
  }
  if (!iddle){
     startTime = millis()/1000 + countdown;
     iddle=true;
   }
  
}
