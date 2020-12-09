
void printImage(PImage photo, float X, float Y, float W, float H)
{
  //println("X" + X + " Y: " + Y);
  //println("W" + W + " H: " + H);
  if (photo.width > 0)
  {
    image(photo,X,Y,W,H);
  }
}

void debug()
{
  if (debug){
    
    p1 = createFont("fonts/IBMPlexMono-Bold.ttf", 20);
    textFont(p1);
    text("seconds: " + seconds, 30, 30);
    text("iMenu: " + iMenu + " M:" + iNarrativaM +" B:" + iNarrativaB + " C:" + iNarrativaC + " D:" + iNarrativaD + " E:" + iNarrativaE + " F:" + iNarrativaF  , 200, 30);
    text("iddle: " + iddle , 200, 50);
  
  
    //ellipse(mouseX, mouseY, 33, 33);
  }
  
}

// Novas setas de navegação dos menus
void drawSeta(){
  //ajuste antes de ativação
  
  color blue = color(15,76,129); 
  color cream = color (226,220,208);
  //imagem limpadora da barra
  if (iMenu ==0){
    if (iDescanso == 63 ) {
      printImage(rodapeDescansoA, 0, height-rodapeDescansoA.height, rodapeDescansoA.width, rodapeDescansoA.height);
    }
    else if (iDescanso == 67 ) {
      printImage(rodapeDescansoV, 0, height-rodapeDescansoV.height, rodapeDescansoV.width, rodapeDescansoV.height);
    }
  }
  else if (iMenu==1) {
    printImage(rodapeMenu, 0, height-rodapeMenu.height, rodapeMenu.width, rodapeMenu.height);
  }
  else if (iMenu >= 2) {
    printImage(rodapeNarrativa, 0, height-rodapeNarrativa.height, rodapeNarrativa.width, rodapeNarrativa.height);
  }
  
    
  if (debug){
    fill(255,0,0);
    stroke(cream);          
    rectMode(CORNER);
    //Offsets
    rect(offsetMouse, height-miniOffset, 2, miniOffset/2 );
    rect(offsetMouse+miniOffset, height-miniOffset, 2, miniOffset/2 );
    rect(width/2-1, height-miniOffset, 2, miniOffset/2 );
    rect(width-offsetMouse, height-miniOffset, 2, miniOffset/2 );
    rect(width-offsetMouse-miniOffset, height-miniOffset, 2, miniOffset/2 );
    fill(0,255,0);
    rect(mouseX, height-miniOffset, 2, miniOffset/1.5 );
    
  }

  //barra esquerda        
  if ( iddle && mouseX >= offsetMouse-miniOffset/2 && mouseX < width/2){
    fill(blue);
    stroke(cream);          
    rectMode(CORNER); 
    rect(width/2, height-offset*3.2, -dist(mouseX,0,width/2,0),25);
  }

  //ativação  seta esquerda
  if (iddle && mouseX < offsetMouse+miniOffset ){
    /*fill(blue);
    stroke(cream);          
    rectMode(CORNER); 
    rect(offsetMouse-15, height-offset*3.4, width/2-offsetMouse+15,45);*/
    printImage(iconProgEsq, 355, height-offset*4.3, iconProgEsq.width, iconProgEsq.height);
  }
  
  // centro do footer - imagem do meio
    String string = "";
    // imagem do meio
    //printImage(iconMenu, width/2-iconMenu.width/2, height-offset*3.5, iconMenu.width, iconMenu.height);
    
    if (iMenu == 1)       { 
      int iM=iNarrativaM;
      int iL=narrativaM.length-1;
      string = iM + "/" + iL;  
    }
    else if (iMenu == 2)  {
      int total = narrativaB.length-1;
      string = iNarrativaB + "/" + total;
    }
    else if (iMenu == 3)  { 
      int total = narrativaC.length-1;  
      string = iNarrativaC + "/" + total; 
    }
    else if (iMenu == 4)  {
      int total = narrativaD.length-1;
      string = iNarrativaD + "/" + total;
    }
    else if (iMenu == 5)  {
      int total = narrativaE.length-1;
      string = iNarrativaE + "/" + total;
    }
    else if (iMenu == 6)  { 
      int total = narrativaF.length-1;
      string = iNarrativaF + "/" + total;
    }
    
    if(iddle && iMenu>=1){
          textFont(p);
          textAlign(CENTER);
          fill(112,112,112);
          text(string, offset*2.5, height-offset*2.5);
    }
    

  //barra e setas da direita
  if (iddle && mouseX >= width/2  && mouseX <= width-offsetMouse+miniOffset ){
    //TODO revisar vazio
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2, height-offset*3.2, dist(mouseX,0,width/2,0),25);
  }
  
  //ativa seta na direita 
   if (iddle && mouseX > width-offsetMouse-miniOffset ){
    printImage(iconProgDir, width-435, height-offset*4.3, iconProgDir.width, iconProgDir.height);
  }
}
