
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */ 
int offset = 50;
int offsetMouse = 300;

int countdown = 120; // segundos
int seconds, startTime; //<>// //<>//

boolean iddle = true; // sem interação = true
boolean fade = false;  // transição //<>//


//TODO desligar na instalação
boolean debug = true; //desliga mouse quando ligado


int iMenu = 0;
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
PImage iconMenu;
PImage iconSelecionar;
PImage iconProgEsqOn, iconProgEsqOff, iconProgDirOn, iconProgDirOff, ProgBar;
PImage areaProgEsqOn, areaProgEsqOff, areaProgDirOn, areaProgDirOff;

PImage iconVoltar, iconAvancar;


//tutorial over
PImage overTutorialAOff, overTutorialAOn;

float scaleE;
float scaleD;
float scaleTA=10;
boolean up = true;
boolean tutorialSobre = false;

int offx = 50, offy = 900; //MAO ESQUERDA
int offx1 = width*10, offy1 = 900; // MAO DIREITA
float transparency = 255;

color bgcolor = color(253,245,232);
color bgcolorT = color (255,250,242); 
color verde = color (97,186,154);
color quasebranco = color (252,247,239);


void setup() {
  //TODO fullscreen
  //fullScreen();
  size(displayHeight, displayWidth,P2D);
  //size(displayWidth, displayHeight);
  

  //Desliga icone mouse
  //não funciona em fullscreen (present)
  noCursor();
  
  
  iconMaoE = loadImage("menu/A006_maoEsquerda_off.png");
  iconMaoEOn = loadImage("menu/A006_maoEsquerda_on.png");
  iconMaoD = loadImage("menu/A006_maoDireita_off.png");
  iconMaoDOn = loadImage("menu/A006_maoDireita_on.png");
  
  //Tutorial
  iconMaoET = loadImage("tela descanso/iconemaoesquerda.png");
  iconMaoDT = loadImage("tela descanso/iconemaodireita.png");
  
  iconVoltar = loadImage("tela descanso/TD000_maosVoltar.png");
  iconAvancar = loadImage("tela descanso/TD000_maosAvancar.png");
  
  
  iconMenu = loadImage("geral/G001_btnMenu.png");
  iconSelecionar = loadImage("geral/G001_btnSelecionar.png");
  
  //imagens tutorial, primeira tela
  overTutorialAOn = loadImage("tela descanso/TD001_sobreposicao.png");
  overTutorialAOff = loadImage("tela descanso/TD001_sobreposicaoOFF.png");
  
 
  iconProgEsqOn = loadImage("geral/G002_setaON.png");
  iconProgEsqOff = loadImage("geral/G002_setaOFF.png");
  iconProgDirOn = loadImage("geral/G002_setaDireitaON.png");
  iconProgDirOff = loadImage("geral/G002_setaDireitaOFF.png");
  ProgBar = loadImage("geral/G000_rodape.png");

   //carrega tabelas de imagens das narrativas 
  loadimages();
  delay(3000);
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {}
  //reset mouse
  
  cena(0,true);
  
  robot.mouseMove(width/2, height/2);
  
  // inicializa relogio  
  startTime = millis()/1000 + countdown;
    cena(0,true);

 }

void draw () {

  
  seconds = startTime - millis()/1000;
  //println(seconds);
  //desenha icones
  //icone tutorial narrativa tela A1 e A2

// icones animados e interação!;
   
//modo inativo (iddle true)
   if (iddle){
     //print ("iddle" + seconds);   
     if ( iMenu == 0){
        if ( iNarrativaT == 0 ){
          drawIconsTutorialA ( verde );
          if (!tutorialSobre && seconds < countdown - 5){
             tint(255, 255);
             printImage(overTutorialAOn, offset*2, height-600, overTutorialAOn.width, overTutorialAOn.height);           
             startTime = millis()/1000 + countdown;
             tutorialSobre=!tutorialSobre;
           
          }
          else if (seconds < countdown - 10){
            printImage(overTutorialAOff, offset*2, height-600, overTutorialAOn.width, overTutorialAOn.height);
            startTime = millis()/1000 + countdown;
            tutorialSobre=!tutorialSobre;
          }
        }
        //icone tutorial narrativa tela B
        else if( iNarrativaT == 1)
        {
          drawIconsTutorialAvancar();
        }
        else if( iNarrativaT == 2)
        {
           drawIconsTutorialVoltar();
        }
        else if( iNarrativaT == 3)
        {
          drawIconsTutorialA( bgcolorT );
        }
        getMouse(); 
     }
     else if (iMenu == 1){
       if ( seconds <= 0) {
         zeracenas(); // reinicializa todos indices
         cena(0,true);
         delay(1000);
       }
       drawSeta();
       getMouse();
     }
     else if (iMenu >= 2){
         if ( seconds <=0) {
           zeracenas(); // reinicializa todos indices
           delay(1000);
           cena(0,true);
       }
        
       drawSeta();
       getMouse();
     }
   }
   else{
     //println("not iddle");
      
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
          transparency += 10; // sem p2d conferir 
          cena(0,false);
        //  return;
        }
        else{
          //fade=true;
          iddle=true;
          startTime = millis()/1000 + countdown;
        }
        
        
    }
  }
    //zera timer
    

   
    //
    
// !   }  
  }
