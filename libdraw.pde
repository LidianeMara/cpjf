
void drawCabecalho() {
  stroke(36,46,54);
  fill(36,46,54);
  rect(0,0,width*2,340);
  fill(253,245,232);
  fill(253,245,232);
  p = createFont("fonts/IBMPlexMono-Medium.ttf", 40);
  textFont(p);
  textAlign(LEFT);
  text("Aqui você pode trilhar alguns dos diferentes", width/50, 120);
//  fill(253,245,232);
//  rectMode(CENTER);
  text("caminhos de um processo judicial na Justiça", width/50, 170);
  //fill(253,245,232);
 // rectMode(CENTER);
  text("Federal. As histórias são ilustrativas e os", width/50, 210);
  //fill(253,245,232);
 // rectMode(CENTER);
  text("personagens fictícios.", width/50, 260);
}

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
  if (photo.width > 0)
  {
    image(photo,X,Y,W,H);
  }
}

void debug()
{
  if (debug){
    
    p1 = createFont("IBMPlexMono-Bold.ttf", 20);
    textFont(p1);
    text("seconds: " + seconds, 30, 30);
    text("iMenu: " + iMenu + " M:" + iNarrativaM +" B:" + iNarrativaB + " C:" + iNarrativaC + " D:" + iNarrativaD + " E:" + iNarrativaE + " F:" + iNarrativaF  , 200, 30);
    text("iddle: " + iddle , 200, 50);
  
  
    //ellipse(mouseX, mouseY, 33, 33);
  }
  
}

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

void drawIconsTutorialA(color cor){
  if (scaleTA >= 30 ){
    scaleTA-=0.25;
  }
  else{
    scaleTA = 60;
    //up = false;
  } 
  
  noStroke();
  fill(cor);
  rect(width/2-offset*3, offy-40, offset*7 ,330 );
  image(iconMaoET, 440, offy, 1*scaleTA, 2*scaleTA);
  image(iconMaoDT, 620, offy, 1*scaleTA, 2*scaleTA);
}

void drawIconsTutorialAvancar(){
  //    println(scaleE);
  noStroke();
  fill(bgcolorT);
  rect(width/2-offset*5, offy-40, offset*10 ,445 );
  image(iconAvancar, 440, offy, 300, 250);
}

void drawIconsTutorialVoltar(){ 
  //    println(scaleE);
  noStroke();
  fill(bgcolorT);
  rect(width/2-offset*5, offy-40, offset*10 ,445 );
  image(iconVoltar, 440, offy, 300, 250);
}


// setas de navegação dos menus
void drawSeta(){
  color blue = color(15,76,129); 
  color cream = color (226,220,208);
  printImage(ProgBar, 0, height-offset*4, ProgBar.width, ProgBar.height);

  //Primeiro circulo esquerdo
  if (  mouseX < width/2 - offset*2  ){
    fill(blue);
    stroke(cream);
    circle(width/2-offset*2, height-offset, 12);
  }
  else {
    fill(cream);
    stroke(cream);
    circle(width/2-offset*2, height-offset, 12);
  }
        
  //segundo circulo esquerdo
  if ( mouseX < width/2 - offset*2.5){
    fill(blue);
    stroke(cream);
    circle(width/2-offset*2.5, height-offset, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    circle(width/2-offset*2.5, height-offset, 12);
  }
  //terceiro circulo esquerdo
  if ( mouseX < width/2 - offset*3){
    fill(blue);
    stroke(cream);
    circle(width/2-offset*3, height-offset, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    circle(width/2-offset*3, height-offset, 12);
  }
        
  //quarto icone esquerdo (quadrado)
  if ( mouseX < width/2 - offset*3.5){
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2-offset*3.7, height-offset-6, 12, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2-offset*3.7, height-offset-6, 12, 12);
  }
        
  //quinto icone esquerdo (quadrado)
  if ( mouseX < width/2 - offset*4){
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2-offset*4.3, height-offset-6, 12, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2-offset*4.3, height-offset-6, 12, 12);
  }
                
  //barra e seta esquerdas        
  if ( mouseX > offset*1.2 && mouseX < width/2 - offset*4.8){
    fill(blue);
    stroke(cream);          
    rectMode(CORNER);
    //retangulo da barra
    rect(mouseX, height-offset-6, dist(mouseX,0,width/2-offset*4.8,0),12);
    fill(bgcolor);
    stroke(bgcolor);
    rectMode(CORNER);
    //apagador do retangulo
    rect(offset+8, height-offset-6, mouseX-offset+5,12);
    //desenha desligada
    fill(bgcolor);
    stroke(bgcolor);
    rectMode(CORNER);
    rect(offset-9, height-offset-8, 20, 20);
    printImage(iconProgEsqOff, offset-9, height-offset-8, 20, 20);
          
  }
  //ativação
  else if (mouseX < offset+15 ){
    fill(blue);
    stroke(cream);
    rect(offset+3, height-offset-6, 100, 12);
    printImage(iconProgEsqOn, offset-9, height-offset-8, 20, 20);
  }
  else {
    //desenha desligada
    fill(bgcolor);
    stroke(bgcolor);
    rectMode(CORNER);
    rect(offset-9, height-offset-8, 20, 20);
    printImage(iconProgEsqOff, offset-9, height-offset-8, 20, 20);
  }

  // centro do footer - imagem do meio
  if (iMenu == 2 && iNarrativaB == 0 || iMenu == 3 && iNarrativaC == 0 ||
      iMenu == 4 && iNarrativaD == 0 || iMenu == 5 && iNarrativaE == 0 ||
      iMenu == 6 && iNarrativaF == 0 || iMenu == 1  ){

    printImage(iconMenu, width/2-iconMenu.width/2, height-offset*2.5, iconMenu.width, iconMenu.height);

  }
  else{
    String string = "";
    // imagem do meio
    printImage(iconMenu, width/2-iconMenu.width/2, height-offset*3.5, iconMenu.width, iconMenu.height);
    fill(cream);
    p = createFont("fonts/IBMPlexMono-Medium.ttf", 30);
    textFont(p);
    if (iMenu == 2)       { string = iNarrativaB + "/" + narrativaB.length;  }
    else if (iMenu == 3)  { string = iNarrativaC + "/" + narrativaC.length; }
    else if (iMenu == 4)  { string = iNarrativaD + "/" + narrativaD.length; }
    else if (iMenu == 5)  { string = iNarrativaE + "/" + narrativaE.length; }
    else if (iMenu == 6)  { string = iNarrativaF + "/" + narrativaF.length; }
    textAlign(CENTER);
    text(string, width/2, height-offset/2);
  }


  //Primeiro circulo direito
  //print (width);
  if (  mouseX > width/2 + offset*2  ){
    fill(blue);
    stroke(cream);
    circle(width/2+offset*2, height-offset, 12);
  }
  else {
    fill(cream);
    stroke(cream);
    circle(width/2+offset*2, height-offset, 12);
  }

  //segundo circulo direito
  if ( mouseX > width/2 + offset*2.5){
    fill(blue);
    stroke(cream);
    circle(width/2+offset*2.5, height-offset, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    circle(width/2+offset*2.5, height-offset, 12);
  }

  //terceiro circulo direito
  if ( mouseX > width/2 + offset*3){
    fill(blue);
    stroke(cream);
    circle(width/2+offset*3, height-offset, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    circle(width/2+offset*3, height-offset, 12);
  }

  //quarto icone direito (quadrado)
  if ( mouseX > width/2 + offset*3.5){
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2+offset*3.5, height-offset-6, 12, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2+offset*3.5, height-offset-6, 12, 12);
  }

  //quinto icone direito (quadrado)
  if ( mouseX > width/2 + offset*4){
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2+offset*4, height-offset-6, 12, 12);
  }
  else {
    //desenha desligada
    fill(cream);
    stroke(cream);
    rectMode(CORNER);
    rect(width/2+offset*4, height-offset-6, 12, 12);
  }
  //barra e setas da direita
  if (mouseX > width/2 + offset*4.8 && mouseX < width-offset-10 ){
    fill(blue);
    stroke(cream);
    rectMode(CORNER);
    //retangulo da barra
    rect(width/2+offset*4.8, height-offset-6, dist(mouseX,0,width/2+offset*4.8,0),12);
    //apagador do retangulo
    fill(bgcolor);
    stroke(bgcolor);
    rectMode(CORNER);
    rect(mouseX+1, height-offset-6, dist(mouseX,0,width-offset-15,0),12);
    //desenha desligada
    fill(bgcolor);
    stroke(bgcolor);
    rectMode(CORNER);
    rect(width-offset-9, height-offset-6, 20, 20);
    printImage(iconProgDirOff, width-offset-10, height-offset-9, 20, 20);
  }
  //ativa seta direita 
  else if (mouseX > width-offset-15 ){
    fill(blue);
    stroke(cream);
    rect(width-offset+3, height-offset-6, -100, 12);
    printImage(iconProgDirOn, width-offset-10, height-offset-9, 20, 20);
  }
  else {
    //desenha seta direita desligada
    fill(bgcolor);
    stroke(bgcolor);
    rectMode(CORNER);
    rect(width-offset-9, height-offset-6, 20, 20);
    printImage(iconProgDirOff, width-offset-10, height-offset-9, 20, 20);
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
