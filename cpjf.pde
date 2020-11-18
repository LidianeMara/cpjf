
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */ 
int offset = 50;
String texto = "nulo"; // TODO conferir uso
int indice = 0; // TODO conferir uso

int slideTempo = 5; // TODO conferir uso
byte countdown = 60; // segundos
int seconds, startTime; //<>// //<>//

boolean iddle = true; // sem interação = true
boolean fade = true;  // transição

boolean debug = true; //desliga mouse quando ligado


int iMenu = 0;
int iBg = 0; // TODO conferir uso
int iNarrativaT = 0 ; // indice tutorial
int iNarrativaM = 0 ; // indice cena menu
int iNarrativaB = 0;// indice cena narrativa B
int iNarrativaC = 0; // indice cena narrativa C
int iNarrativaD = 0; // indice cena narrativa D
int iNarrativaE = 0; // indice cena narrativa E
int iNarrativaF = 0; // indice cena narrativa F

String bgpath=""; //TODO conferir uso

/*  FONTES  */
PFont f, p, p1, p2, p3;

/*  IMAGENS    */
float timer = 0.0; //TODO conferir uso
PImage[] narrativaT = new PImage[4];
PImage[] narrativaM = new PImage[5];
PImage[] narrativaB = new PImage[61];
PImage[] narrativaC = new PImage[36];
PImage[] narrativaD = new PImage[33];
PImage[] narrativaE = new PImage[52];
PImage[] narrativaF = new PImage[35];

PImage[]headerNarrativa = new PImage [5];

PImage iconMaoEOn, iconMaoDOn, iconMaoE, iconMaoD;
PImage iconMaoET, iconMaoDT;
PImage iconProgEsqOn, iconProgEsqOff, iconProgDirOn, iconProgDirOff;
PImage areaProgEsqOn, areaProgEsqOff, areaProgDirOn, areaProgDirOff;


//tutorial over
PImage overTutorialAOff, overTutorialAOn;

float scaleE;
float scaleD;
float scaleTA=60;
boolean up = true;


int offx = 50, offy = 900; //MAO ESQUERDA
int offx1 = width*10, offy1 = 900; // MAO DIREITA
float transparency = 255;

color bgcolor = color(253,245,232);
//color bgcolorT = color (97,186,154); // APAGAR
color bgcolorT = color (255,250,242); 
color verde = color (97,186,154);
boolean auto = true; // TODO conferir uso


void setup() {
  //TODO fullscreen
  //fullScreen();
  //size(displayHeight, displayWidth,P2D);
  size(displayHeight, displayWidth);
  iconMaoE = requestImage("menu/A006_maoEsquerda_off.png");
  iconMaoEOn = requestImage("menu/A006_maoEsquerda_on.png");
  iconMaoD = requestImage("menu/A006_maoDireita_off.png");
  iconMaoDOn = requestImage("menu/A006_maoDireita_on.png");
  //imageHeaderTD = requestImage("tela descanso/TD000_header.png");
  iconMaoET = requestImage("tela descanso/iconemaoesquerda.png");
  iconMaoDT = requestImage("tela descanso/iconemaodireita.png");
  
  //imagens tutorial, primeira tela
  overTutorialAOn = requestImage("tela descanso/TD001_sobreposição.png");
  overTutorialAOff = requestImage("tela descanso/TD001_sobreposicaoOFF.png");
  
  
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

  //desenha icones
  //icone tutorial narrativa tela A1 e A2
  if (iMenu==0  && iNarrativaT==0 || iMenu ==0 && iNarrativaT==1){
   drawIconsTutorialA();
  }
  //icone tutorial narrativa tela B
  else if (iMenu ==0 && iNarrativaT==2)
  {
    drawIconsTutorialB();
  }
  else if (iMenu == 0 && iNarrativaT == 3)
  {
     drawIconsTutorialB();
  }
  else if (iMenu == 0 && iNarrativaT == 4)
  {
    drawIconsTutorialA();
  }
  else 
  {
    drawMouse();
  }
   
  println(seconds);
  if (iMenu ==0 && iNarrativaT ==0 && seconds < countdown -5){
    
    startTime = millis()/1000 + countdown;
  }
  else if (iMenu ==0 && iNarrativaT ==1 && seconds < countdown-5){
    
    startTime = millis()/1000 + countdown;
   }

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
    else{
      startTime = millis()/1000 + countdown;
    }
    //zera timer
    

    //
    if (fade){
      if (transparency > 0 ){
         transparency -= 2.5;
      }
      else {
        fade = false;
      }
       
    }
    else {   
      if (transparency < 255){
        transparency += 5; // sem p2d conferir 
        cena(0,false);
        return;
      }
      else{
        iddle=true;
        delay(200);
      }
    }   
  }
