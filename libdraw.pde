
void drawBackgroundB() {
  final int WIDTH =  1000;
  final int HEIGHT = 1000;
  final int BLOCKX = WIDTH/12;
  final int BLOCKY = HEIGHT/12;
  for (int i = 0; i < 24; i ++) {
    for (int j = 0; j < 24; j ++) {
      if ((i + j + 1) % 2 == 0) {
        fill(253,245,232);
      } else {
        fill(253,245,232);
      }
      rect(i * BLOCKX, j * BLOCKY, (i + 1) * BLOCKX, (j + 1) * BLOCKY);
      stroke(206, 183, 145, 26);
    } 
  }
  printImage(headerNarrativa[iMenu - 2], 0, 0, width, 426);
  
}


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

//TODO Remover desabilitado ultima revisão
/*
void drawIconsMenu(){
        
  int autoscale =800;
    
  noStroke();
  fill(bgcolor);
  rect(0, offy+150, 300 ,280 );
  rect(1080, offy+150, 300 ,280 );
    
  if (mouseX < width/2){
    scaleE =dist(mouseX,1,width/2,1)/autoscale;
    scaleD =10+dist(mouseX,1,width/2,1)*autoscale;
    image(iconMaoEOn, offx, offy+150, iconMaoEOn.width*scaleE, iconMaoEOn.height*scaleE*2);  
    image(iconMaoD, offx1, offy+150, iconMaoD.width*scaleD, iconMaoD.height*scaleD*2);
  } else {
    scaleE =dist(mouseX,1,width/2,1)*autoscale;
    scaleD =dist(mouseX,1,width/2,1)/autoscale;
    image(iconMaoE, offx, offy+150, iconMaoE.width*scaleE, iconMaoE.height*scaleE*2);  
    image(iconMaoDOn, offx1, offy+150, iconMaoDOn.width*scaleD, iconMaoDOn.height*scaleD*2);
  }

}
*/

// void drawIconsTutorialA(color cor){
//   if (scaleTA >= 30 ){
//     scaleTA-=0.25;
//   }
//   else{
//     scaleTA = 60;
//     //up = false;
//   } 
  
//   noStroke();
//   fill(cor);
//   rect(width/2-offset*3, offy-40, offset*7 ,330 );
//   //image(iconMaoET, 440, offy, 1*scaleTA, 2*scaleTA);
//   //image(iconMaoDT, 620, offy, 1*scaleTA, 2*scaleTA);
// }

// void drawIconsTutorialAvancar(){
//   //    println(scaleE);
//   noStroke();
//   fill(bgcolorT);
//   rect(width/2-offset*5, offy-40, offset*10 ,445 );
//   image(iconAvancar, 440, offy, 300, 250);
// }

// void drawIconsTutorialVoltar(){ 
//   //    println(scaleE);
//   noStroke();
//   fill(bgcolorT);
//   rect(width/2-offset*5, offy-40, offset*10 ,445 );
//   image(iconVoltar, 440, offy, 300, 250);
// }

// Novas setas de navegação dos menus
void drawSeta(){
  //ajuste antes de ativação
  
  color blue = color(15,76,129); 
  color cream = color (226,220,208);
  //imagem limpadora da barra
  if (iMenu ==0){
    if (iDescanso == 40 ) {
            printImage(rodapeDescansoA, 0, height-rodapeDescansoA.height, rodapeDescansoA.width, rodapeDescansoA.height);
    }
    else if (iDescanso == 41 ) {
            printImage(rodapeDescansoV, 0, height-rodapeDescansoV.height, rodapeDescansoV.width, rodapeDescansoV.height);
    }
  }
  else if (iMenu==1){
      printImage(rodapeMenu, 0, height-rodapeMenu.height, rodapeMenu.width, rodapeMenu.height);
  }
  else if (iMenu >= 2){
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
  if ( mouseX >= offsetMouse-miniOffset/2 && mouseX < width/2){
    fill(blue);
    stroke(cream);          
    rectMode(CORNER); 
    rect(width/2, height-offset*3.2, -dist(mouseX,0,width/2,0),25);
  }

  //ativação  seta esquerda
  if (mouseX < offsetMouse+miniOffset ){
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
      int iM=iNarrativaM+1;
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
    
    if(iMenu>1){
          textFont(p);
          textAlign(CENTER);
          fill(112,112,112);
          text(string, offset*2.5, height-offset*2.5);
    }
    

  //barra e setas da direita
  if (mouseX >= width/2  && mouseX <= width-offsetMouse+miniOffset ){
    //TODO revisar vazio
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2, height-offset*3.2, dist(mouseX,0,width/2,0),25);
  }
  
  //ativa seta na direita 
   if (mouseX > width-offsetMouse-miniOffset ){
/*     fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2, height-offset*3.4, width/2-offsetMouse+miniOffset,45);*/
    printImage(iconProgDir, width-435, height-offset*4.3, iconProgDir.width, iconProgDir.height);
  }
}

//Sem uso
/*
  void drawMouse(){
  //TODO juntar depois
  if ( iMenu == 1 ){
  drawIconsMenu();
  drawSeta();
  }
  else if (iMenu > 1){
  drawIconsMenu();
  drawSeta();
  }
  }
*/
