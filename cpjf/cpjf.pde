
/* LIB JAVA - CONTROLE MOUSE */
import java.awt.Robot;
Robot robot;

/* CONFIG */ 
int offset = 100;
String texto = "nulo";
int iconeSizeL = 20;
int iconeSizeR = 20;
int indice = 0;
int tempo = 0;
int tempomax = 500;
boolean iddle = true;

int iMenu = 0;
int iCena = 0;

boolean debug = true; //desliga mouse quando ligado

int slideTempo = 5;

int backgroundIndex = 0; 
int narrativaMIndex = 0 ; // indice cena menu
int narrativaAIndex = 0; // indice cena narrativa A
int narrativaBIndex = 0; // indice cena narrativa B
int narrativaCIndex = 0; // indice cena narrativa C
int narrativaDIndex = 0; // indice cena narrativa D
int narrativaEIndex = 0; // indice cena narrativa E

String bgpath="";

/*  FONTES  */
PFont f, p, p1, p2, p3;

/*  IMAGENS    */
float timer = 0.0;
PImage[] narrativaM = new PImage[5];
PImage[] narrativaA = new PImage[4];
PImage[] narrativaB = new PImage[5];
PImage[] narrativaC = new PImage[30];
PImage[] narrativaD = new PImage[5];
PImage[] narrativaE = new PImage[5];

float scaleE;
float scaleD;

PImage img;
PImage img1;
float scale = 1.0;
int offx = 50;  int offy = 900; //MAO ESQUERDA
int offx1 = width*10; int offy1 = 900; // MAO DIREITA
float transparency = 255;


boolean auto = true;
void setup() {
  size(displayHeight, displayWidth);  
  img = loadImage("A007_maoEsquerda.png");
  img1 = loadImage("A006_maoDireita.png");
  loadimages();
  cena (0);
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {
  }
  //reset mouse
  
  robot.mouseMove(width/2, height/2);
  }
void draw () {
  tempo = millis();
  if (tempo < 5000){
    iMenu=0;
    cena(0);
  }
  else{
    if (iddle && tempo > tempo % 2500){
      println("teste");
    }
    

    background(253,245,232);  
    
    drawCabecalho();
    //maoEsquerda();
    getMouse();
    //maoDireita();
    //menuPrincipal();
    drawDots();
    
    debug();
    textFooter(height/5);
  }
}
