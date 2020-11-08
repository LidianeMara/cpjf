/**
 * Teste mouse -  - já adaptado ao código, referencia de menu 
 * 
 * prototipo de interatividade cmfj por chgp 
 * para executar em janelas:
 * a janela deve ser posicionada no topo esquerdo da tela
 */

/*

//PFont f;

void setup() {
  
  size(1920, 1080);
  cena(0);
  background(cor);
  
  noStroke();
  // Create the font
  printArray(PFont.list());
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {
  }
  //reset mouse
  robot.mouseMove(width/2, height/2);
  cena(0);

} 

int counter = 1;

void draw() {
 
  //cena(0);
//  background(cor);
  int m = millis();  
 
  
  fill(color(50,0,0));
  rect(0, 500, offsetZero, height);
  
  fill(color(50,0,0));  
  
  rect(width-offsetZero, 500, offsetZero, height);
  rect(width/2-offsetZero, height-50, offsetZero*2, 50);
  
  
  //icones
  fill(color(250,100,100));
  rect(10,120,iconeSizeL,iconeSizeL);
  rect(width-500,120,iconeSizeR,iconeSizeR);
  
  //textos de depuração
   fill(color(150,220,200));
  text(counter + " - " + m, width/2, 50);
  text("X: " + mouseX, width/2, 100);
  text(texto, width/2,150);
  text("Quadro : " + indice + " de " + frames, width/2, 200);
  text("dbg: " + debug, width/2, 250);
    
      // TODO trocar por relógio
      counter++;

      
      if (counter > tempoMax){
        
        counter=0;
        
        
        //aciona a esquerda
        if(mouseX < (offsetZero) ){
          texto="esquerda";
          cor=color(50,50-indice*50,50);
          cena(-1);
          robot.mouseMove(width/2, height/2);
        }
        //aciona a direita
        else if (mouseX > (width - offsetZero)){
          texto="direita";
          cor=color(50,50+indice*50,50);
          cena(1);
          robot.mouseMove(width/2, height/2);
          
          }
      }
      
      
      if (mouseX > (width/2-offsetZero) && (mouseX < width/2+offsetZero) ){
        counter=0;
        texto="anulou";
        iconeSizeL=0;
        iconeSizeR=0;
      }

       
       if(mouseX < (width/2-offsetZero)){
        iconeSizeL = ( m%250) ;
        
         debug = str(iconeSizeL);
         
        
      } 
       else if(mouseX > (width/2+offsetZero)){
        //iconeSizeR = (width/2 + offsetZero - mouseX/2)/5 + (counter*10)-offsetZero*2 ;

        iconeSizeR = mouseX/5 - m%250 ;
        debug = str(iconeSizeR);
      }
      
   
}
*/
