
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
  text("tempo: " + tempo, 30, 30);
  text("iMenu: " + iMenu + " M:" + iNarrativaM + " A:" + iNarrativaA + " B:" + iNarrativaB + " C:" + iNarrativaC + " D:" + iNarrativaD + " E:" + iNarrativaE, 200, 30);
  text("iddle: " + iddle , 200, 50);
  
  //ellipse(mouseX, mouseY, 33, 33);
  }
  
}

void drawIcons(){
        
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
    image(iconMaoE, offx, offy, iconMaoE.width*scaleE, iconMaoE.height*scaleE*2);  
    image(iconMaoD, offx1, offy, iconMaoD.width*scaleD, iconMaoD.height*scaleD*2);
}


void drawIconE(){
        float scale =dist(mouseX,1,width/2-offset,1)/800;
        noStroke();
        fill(bgcolor);
        rect(0, offy, 300 ,280 );
        image(iconMaoE, offx, offy, iconMaoE.width*scale, iconMaoE.height*scale);        
}  

void drawIconD(){
        float scale =dist(mouseX,1,width/2+offset,1)/800;
        noStroke();
        fill(bgcolor);
        rect(1080, offy, 300 ,280 );
        image(iconMaoD, offx1, offy, iconMaoD.width*scale, iconMaoD.height*scale); 
}  


void fade()
{
      //for (int i=0;i<10;i++){  
      //if (transparency > 0) { transparency -= 0.25; }
        //tint(255, transparency);
//        scale = 0.9;
//      }
}
