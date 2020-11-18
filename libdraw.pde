
void drawCabecalho() {
  stroke(36,46,54);
  fill(36,46,54);
  rect(0,0,width*2,340*2);
  fill(253,245,232);
  fill(253,245,232);
  p = createFont("fonts/IBMPlexMono-Medium.ttf", 40);
  textFont(p);
  text("Aqui você pode trilhar alguns dos diferentes", width/50, 120);
  fill(253,245,232);
  rectMode(CENTER);
  text("caminhos de um processo judicial na Justiça", width/50, 170);
  fill(253,245,232);
  rectMode(CENTER);
  text("Federal. As histórias são ilustrativas e os", width/50, 210);
  fill(253,245,232);
  rectMode(CENTER);
  text("personagens fictícios.", width/50, 260);  
}

void drawCabecalhoB() {
<<<<<<< HEAD
  printImage(headerNarrativa[iMenu - 2], width/500, 0, width, height/5);    
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
=======
  printImage(headerNarrativa[iMenu - 2], 0, 0, width, 426);    
>>>>>>> f9c45ca8b26fc813571402688c26e115c73306fb
}


void printImage(PImage photo, float X, float Y, float W, float H)
{
  if (photo.width > 0)
  {
    image(photo,X,Y,W,H);
  }
}

void textFooter(float y) {
  //TODO CRIAR FONTES
  p2 = createFont("fonts/IBMPlexMono-Light.ttf", 97);
  textFont(p2);
  fill(223, 215, 202);
  text("PROCESSO", -140, y*4.4);
  p3 = createFont("fonts/IBMPlexMono-SemiBold.ttf", 68);
  textFont(p3);
  fill(223, 215, 202);
  text("AUTOR", 325, y*4.4);
  fill(223, 215, 202);
  p2 = createFont("fonts/IBMPlexMono-Light.ttf", 97);
  textFont(p2);
  text("DEMOCRACIA", width/2, y*4.4);
  fill(223, 215, 202);
  p1 = createFont("fonts/IBMPlexMono-Bold.ttf", 115);
  textFont(p1);
  text("JUSTIÇA", -180, y*4.75);
  fill(223, 215, 202);
  p2 = createFont("fonts/IBMPlexMono-Light.ttf", 100);
  textFont(p2);
  text("RÉU", 350, y*4.75);
  fill(223, 215, 202);
  p1 = createFont("fonts/IBMPlexMono-Bold.ttf", 203);
  textFont(p1);
  text("DIREITO", width/2, y*4.85);
  fill(223, 215, 202);
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
        
    int autoscale =300;
    if (mouseX < width/2){
      scaleE =dist(mouseX,1,width/2,1)*autoscale;
      scaleD =dist(mouseX,1,width/2,1)/autoscale;
    } else {
      scaleE =dist(mouseX,1,width/2,1)/autoscale;
      scaleD =dist(mouseX,1,width/2,1)*autoscale;
    }
        
    noStroke();
    fill(bgcolor);
    rect(0, offy, 300 ,280 );
    rect(1080, offy, 300 ,280 );
    image(iconMaoET, offx, offy, iconMaoET.width*scaleE, iconMaoE.height*scaleE*2);  
    image(iconMaoDT, offx1, offy, iconMaoDT.width*scaleD, iconMaoD.height*scaleD*2);
}

void drawIconsTutorialA(){
      if (scaleTA >= 30 ){
        scaleTA-=3;
      }
      else{
        scaleTA = 60;
        //up = false;
      } 
  
    noStroke();
    fill(verde);
    rect(width/2-offset*3, offy-40, offset*7 ,200 );
    image(iconMaoET, 440, offy, 1*scaleTA, 2*scaleTA);
    image(iconMaoDT, 620, offy, 1*scaleTA, 2*scaleTA);
}

void drawIconsTutorialB(){
    float s=sin(millis());
    float c=cos(millis());
    int offscale = 20;
    int autoscale =5;
    scaleE =offscale+s*autoscale;
    scaleD =offscale+c*autoscale;
//    println(scaleE);
    noStroke();
    fill(bgcolorT);
    rect(width/2-offset*3, offy-40, offset*7 ,200 );
    image(iconMaoET, 440, offy, 1*scaleE, 2*scaleE*2);
    image(iconMaoDT, 620, offy, 1*scaleD, 2*scaleD*2);
}

void drawIconMaoE(){
        float scale =dist(mouseX,1,width/2-offset,1)/800;
        noStroke();
        fill(bgcolor);
        rect(0, offy, 300 ,280 );
        image(iconMaoE, offx, offy, iconMaoE.width*scale, iconMaoE.height*scale);        
}  

void drawIconMaoD(){
        float scale =dist(mouseX,1,width/2+offset,1)/800;
        noStroke();
        fill(bgcolor);
        rect(1080, offy, 300 ,280 );
        image(iconMaoD, offx1, offy, iconMaoD.width*scale, iconMaoD.height*scale); 
}  



// setas experimentais - TODO REMOVER
void drawSeta(){
        color blue = color(10,30,250);    
        noStroke();
        
        if (debug){
          fill(255,0,0);
          rect(0, height-offset-20, width*2 , 40 );
        }
        //Primeiro circulo esquerdo
         if (  mouseX < width/2 - offset/2  ){
          fill(blue);
          stroke(blue);
          circle(width/2-offset, height-offset, 20);
        }
        else {
          fill(bgcolor);
          stroke(blue);
          circle(width/2-offset, height-offset, 20);
        }
        
        //segundo circulo esquerdo
        if ( mouseX < width/2 - offset){
          fill(blue);
          stroke(blue);
          circle(width/2-offset*2, height-offset, 20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          circle(width/2-offset*2, height-offset, 20);
        }
        //terceiro circulo esquerdo
        if ( mouseX < width/2 - offset*2){
          fill(blue);
          stroke(blue);
          circle(width/2-offset*3, height-offset, 20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          circle(width/2-offset*3, height-offset, 20);
        }
        //barra e seta
        if ( mouseX > offset && mouseX < width/2 - offset*4){
          fill(blue);
          stroke(blue);
          rect(width/2-offset*4, height-offset-10, 20, 20);
          rect(mouseX, height-offset-10, dist(mouseX,0,width/2-20-offset*4,0), 20);
        }
        else if (mouseX < offset ){
          fill(blue);
          stroke(blue);
          rect(width/2-offset*4, height-offset-10, 20, 20);
          rect(offset+5, height-offset-10, 250, 20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          rect(width/2-offset*4, height-offset-10, 20, 20);
        }
        
        
        if ( mouseX > 0 && mouseX < offset*1.5){
          fill(blue);
          stroke(blue);
          triangle(10, height-offset, offset+10, height-offset-20, offset+10, height-offset+20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          triangle(10, height-offset, offset+10, height-offset-20, offset+10, height-offset+20);
        }        
         

       //Primeiro circulo direito
        //print (width);
         if (  mouseX > width/2 + offset/2  ){
          fill(blue);
          stroke(blue);
          circle(width/2+offset, height-offset, 20);
        }
        else {
          fill(bgcolor);
          stroke(blue);
          circle(width/2+offset, height-offset, 20);
          
        }
        
        //segundo circulo esquerdo
        if ( mouseX > width/2 + offset){
          fill(blue);
          stroke(blue);
          circle(width/2+offset*2, height-offset, 20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          circle(width/2+offset*2, height-offset, 20);
          
        }
        //terceiro circulo direito
        if ( mouseX > width/2 + offset*2){
          fill(blue);
          stroke(blue);
          circle(width/2+offset*3, height-offset, 20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          circle(width/2+offset*3, height-offset, 20);
          
        }

        //barra e setas direitas
        //barra 
        if ( mouseX < width-offset && mouseX > width/2 + offset*4){
          fill(blue);
          stroke(blue);
          rect(width/2+offset*4, height-offset-10, 20, 20);
          rect(width/2+offset*4+20, height-offset-10, dist(mouseX,0,width/2+20+offset*4,0), 20);
          triangle(width-10, height-offset, width-offset+10, height-offset-20, width-offset+10, height-offset+20);
        }
        //região ativa
        else if (mouseX > width-offset ){
          fill(blue);
          stroke(blue);
          rect(width/2+offset*4, height-offset-10, 20, 20);
          rect(width/2+offset*5, height-offset-10, 250, 20);
          triangle(width-10, height-offset, width-offset+10, height-offset-20, width-offset+10, height-offset+20);
        }
        else {
          //desenha desligada
          fill(bgcolor);
          stroke(blue);
          rect(width/2+offset*4, height-offset-10, 20, 20);
          triangle(width-10, height-offset, width-offset+10, height-offset-20, width-offset+10, height-offset+20);
        }
}  

void drawMouse(){
  
  //TODO juntar depois
  
  if ( iMenu == 1 ){
    if (mouseX < width/2-offset)
     {
       //drawIcons();
       drawIconMaoE();
     }
     else if (mouseX > width/2+offset)
     {
       //drawIcons();
       drawIconMaoD();
     }
  }
  else if (iMenu > 1){
    drawIconsMenu();
    drawSeta();
  }
   
}
