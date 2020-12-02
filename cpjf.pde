
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */ 
int offset = 50;
int offsetMouse = 370;
int miniOffset=15;

int countdown = 90; // segundos
int seconds, startTime; //<>// //<>// //<>//

boolean iddle = true; // sem interação = true
boolean fade = false;  // transição //<>// //<>//

//TODO desligar na instalação
boolean debug = false; //desliga mouse quando ligado

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
PImage[] narrativaT = new PImage[4];  // Menu tutorial
PImage[] narrativaM = new PImage[6];  // Menu Principal personagens
PImage[] narrativaB = new PImage[23]; // B Samira
PImage[] narrativaC = new PImage[25]; // C Julia
PImage[] narrativaD = new PImage[41]; // D Bernardo
PImage[] narrativaE = new PImage[26]; // E Camila 
PImage[] narrativaF = new PImage[47]; // F João

PImage[] headerNarrativa = new PImage [5];


//PImage iconMaoEOn, iconMaoDOn, iconMaoE, iconMaoD;
PImage iconMaoET, iconMaoDT;
PImage iconProgEsq, iconProgDir, rodapeMenu, rodapeNarrativa;
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
  
    //Tutorial
  iconMaoET = loadImage("tela descanso/iconemaoesquerda.png");
  iconMaoDT = loadImage("tela descanso/iconemaodireita.png");
  
  iconVoltar = loadImage("tela descanso/TD000_maosVoltar.png");
  iconAvancar = loadImage("tela descanso/TD000_maosAvancar.png");

  p = createFont("fonts/inter/Inter-VariableFont_slnt,wght.ttf", 80);
  
  //TODO imagem apagada
  //iconMenu = loadImage("geral/G001_btnMenu.png");
  //iconSelecionar = loadImage("geral/G001_btnSelecionar.png");
  
  //imagens tutorial, primeira tela
  overTutorialAOn = loadImage("tela descanso/TD001_sobreposicao.png");
  overTutorialAOff = loadImage("tela descanso/TD001_sobreposicaoOFF.png");
  
 
  iconProgEsq = loadImage("geral/SetaESQ.png");
  iconProgDir = loadImage("geral/SetaDIR.png");
  rodapeMenu = loadImage("geral/G000_rodapeMenu.png");
  rodapeNarrativa = loadImage("geral/G000_rodapeNarrativa.png");

   //carrega tabelas de imagens das narrativas 
  loadimages();
  delay(3000);
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {}
  //reset mouse
  
  cena(0);
  
  robot.mouseMove(width/2, height/2);
  
  // inicializa relogio  
  startTime = millis()/1000 + countdown;
    cena(0);

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
         cena(0);
         delay(1000);
       }
       drawSeta();
       getMouse();
     }
     else if (iMenu >= 2){
         if ( seconds <=0) {
           zeracenas(); // reinicializa todos indices
           delay(1000);
           cena(0);
       }
        
       drawSeta();
       getMouse();
     }
   }
   else{
          iddle=true;
          startTime = millis()/1000 + countdown;
        }
 
  }
