
void drawCabecalho() {
  stroke(36,46,54);
  fill(36,46,54);
  rect(0,0,width*2,340*2);
  fill(253,245,232);
  fill(253,245,232);
  p = createFont("IBMPlexMono-Medium.ttf", 40);
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


void printImage(PImage photo, float X, float Y, float W, float H)
{
  if (photo.width > 0)
  {
    image(photo,X,Y,W,H);
  }
}

void drawDots(){
  int offset = width/2 - (narrativaM.length * 20 )/2;
  for( int i = 0; i < narrativaM.length; i++){
      if( backgroundIndex == i)   fill( 150 );
      else              fill( 225 );
      ellipse(i*20 + offset + 10, height-10, 10, 10);
  }
}

void textFooter(float y) {
  //TODO CRIAR FONTES
  p2 = createFont("IBMPlexMono-Light.ttf", 97);
  textFont(p2);
  fill(223, 215, 202);
  text("PROCESSO", -140, y*4.4);
  p3 = createFont("IBMPlexMono-SemiBold.ttf", 68);
  textFont(p3);
  fill(223, 215, 202);
  text("AUTOR", 325, y*4.4);
  fill(223, 215, 202);
  p2 = createFont("IBMPlexMono-Light.ttf", 97);
  textFont(p2);
  text("DEMOCRACIA", width/2, y*4.4);
  fill(223, 215, 202);
  p1 = createFont("IBMPlexMono-Bold.ttf", 115);
  textFont(p1);
  text("JUSTIÇA", -180, y*4.75);
  fill(223, 215, 202);
  p2 = createFont("IBMPlexMono-Light.ttf", 100);
  textFont(p2);
  text("RÉU", 350, y*4.75);
  fill(223, 215, 202);
  p1 = createFont("IBMPlexMono-Bold.ttf", 203);
  textFont(p1);
  text("DIREITO", width/2, y*4.85);
  fill(223, 215, 202);
}


void maoEsquerda() {
 scale = 1.2;
  if ( mouseover() ) {
    scale = 0.9; 
  image(img, offx, offy, img.width*scale, img.height*scale);
  }
  else image(img, offx, offy, img.width*scale, img.height*scale);

}
  
void maoDireita () {
 scale = 1.2;
  if ( mouseover1() ) {
    scale = 0.9; 
  image(img1, offx1, offy1, img1.width*scale, img1.height*scale);
  }
  else image(img1, offx1, offy1, img1.width*scale, img1.height*scale);

}



void debug()
{
  p1 = createFont("IBMPlexMono-Bold.ttf", 20);
  textFont(p1);
  text("tempo: " + tempo, 30, 30);
  text("iMenu: " + iMenu + " M:" + narrativaMIndex + " A:" + narrativaAIndex + " B:" + narrativaBIndex + " C:" + narrativaCIndex + " D:" + narrativaDIndex + " E:" + narrativaEIndex, 200, 30);
  text("iddle: " + iddle , 200, 50);
  
 
  if (debug){
      ellipse(mouseX, mouseY, 33, 33);
  }
  
}


void iconeAe(){
 
    for (int i=0;i<10;i++){  
      if (transparency > 0) { transparency -= 0.25; }
      tint(255, transparency);
     
    }
 
}  
