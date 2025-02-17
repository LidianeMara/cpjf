
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */
int offset = 50;
int offsetMouse = 370;
int miniOffset=15;

int countdown = 90; // segundos para tela de descanso
int seconds, seconds2, startTime, startTime2;  //<>//

int delaySegundo=1000; // o valor correto é 1000, diminuir para acelerar
int delayPadrao=2*delaySegundo;

boolean iddle = true; // sem interação = true
boolean fade = false;  // transição //<>//

//TODO desligar na instalação
boolean debug = true; //desliga mouse quando ligado

int iMenu = 0;
int iDescanso = 0 ; // indice tutorial
int iNarrativaT = 0 ; // indice tutorial
int iNarrativaM = 0 ; // indice cena menu
int iNarrativaB = 0;// indice cena narrativa B
int iNarrativaC = 0; // indice cena narrativa C
int iNarrativaD = 0; // indice cena narrativa D
int iNarrativaE = 0; // indice cena narrativa E
int iNarrativaF = 0; // indice cena narrativa F

/*  FONTES  */
PFont p, p1;


/*  IMAGENS    */
PImage[] narrativaT = new PImage[20];  // Menu tutorial
PImage[] narrativaM = new PImage[6];  // Menu Principal personagens
PImage[] narrativaB = new PImage[23]; // B Samira
PImage[] narrativaC = new PImage[25]; // C Julia
PImage[] narrativaD = new PImage[41]; // D Bernardo
PImage[] narrativaE = new PImage[26]; // E Camila 
PImage[] narrativaF = new PImage[47]; // F João


PImage iconProgEsq, iconProgDir, rodapeMenu, rodapeNarrativa;
PImage rodapeDescansoA, rodapeDescansoV;

boolean descansoInverso = false;
boolean descansoAcao = false;

int offx = 50, offy = 900; //MAO ESQUERDA
int offx1 = width*10, offy1 = 900; // MAO DIREITA

color bgcolor = color(253, 245, 232);
color bgcolorT = color (255, 250, 242); 
color verde = color (97, 186, 154);
color quasebranco = color (252, 247, 239);


void setup() {
  //Exemplos de display
  //fullscreen(); // Padrão para instalação
  //fullScreen(2); // fullscreen na segunda tela
  //size(displayHeight, displayWidth,P2D);
  //size(displayHeight, displayWidth); // uso em desenvolvimento
  size(1080, 1920); // uso em desenvolvimento
    surface.setTitle("Caminhos dos processos - Powered by Tijolo");
    surface.setResizable(false);
    surface.setLocation(0, -500);
  //size(displayWidth, displayHeight);


  //Desliga icone mouse
  //não funciona em fullscreen (present)
  noCursor();

  p = createFont("fonts/inter/Inter-VariableFont_slnt,wght.ttf", 80);

  iconProgEsq = loadImage("geral/SetaESQ.png");
  iconProgDir = loadImage("geral/SetaDIR.png");
  rodapeMenu = loadImage("geral/G000_rodapeMenu.png");
  rodapeNarrativa = loadImage("geral/G000_rodapeNarrativa.png");
  rodapeDescansoA = loadImage("tela descanso/TD_rodapeA.png");
  rodapeDescansoV = loadImage("tela descanso/TD_rodapeV.png");

  //carrega tabelas de imagens das narrativas 
  loadimages();
  
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {
  }
  //reset mouse

  if (!debug){
      cena(0);
  }
  else{
    iMenu=1;
    cena(0);
  }

  robot.mouseMove(width/2, height/2);

  // inicializa relogio  
  startTime = millis()/1000 + countdown;
  startTime2 = millis()/1000 + countdown;

}

void draw () {
  seconds = startTime - millis()/1000;
  //println(seconds);

  //modo inativo (iddle true)
  if (iddle) {
    //print ("iddle" + seconds);   
    if ( iMenu == 0) {
      if (iDescanso >= 0)
      {
        seconds2 = startTime2 - millis()/1000;
        cena(0);
      }
    } else if (iMenu == 1) {
      if ( seconds <= 0) {
        zeracenas(); // reinicializa todos indices
        cena(0);
        delay(1000);
      }
      drawSeta();
      getMouse();
    } else if (iMenu >= 2) {
      if ( seconds <=0) {
        zeracenas(); // reinicializa todos indices
        delay(1000);
        cena(0);
        iddle=false;
      }

      drawSeta();
      getMouse();
    }
    //modo ativo - iddle false
  } else {
    iddle=true;
    startTime = millis()/1000 + countdown;
  }
}
