
//CH: sem uso

boolean mouseover() {
  if ( ( mouseX > offx && mouseX < img.width+offx ) && ( mouseY > offy && mouseY < img.height +offy) ) return false;
  return true; 
  } 
//CH: sem uso
boolean mouseover1() {
  if ( ( mouseX > offx1 && mouseX < img1.width+offx1) && ( mouseY > offy1 && mouseY < img1.height +offy1 ) ) return false;
  return true;
}

//CH: sem uso
void mouseMoved(){
  //handle cursor pointer effects
  if( mouseX < 10 || mouseX > width-10 || mouseY > 300) cursor(HAND);  
  else                                                  cursor(ARROW);
}

//CH: sem uso
void mousePressed(){
  auto = false;
  //handle prev / next
  if( mouseX < 10 || mouseX > width-10){
    if( mouseX < 10) backgroundIndex = backgroundIndex>0?backgroundIndex-1:2;
    else             backgroundIndex = backgroundIndex<2?backgroundIndex+1:0;
  }
  else if(mouseY > 300){
    // calculate index position of chosen ball
    int idxOffset = floor((10+mouseX-(width/2))/20);
    //console.log(idxOffset);
    int newIdx = 1 + idxOffset;
    if( newIdx < 0) newIdx = 0;
    if( newIdx > narrativaM.length-1) newIdx = narrativaM.length-1;
    backgroundIndex = newIdx;   
  }
}

void getMouse(){

  // ACIONA ESQUERDA
  if (mouseX < offset)  {
    cena(-1);
    delay(200);

  }
  
  //DIREITA
  else if (mouseX > width-offset){
    cena (1);
    delay(200);
  }
  //CLICK MOUSE DENTRO DO MENU
  else if (  mousePressed && iMenu == 0) {
    iMenu=narrativaMIndex;
    cena (0);
    iddle=false;
    
   }
   else if ( mousePressed && iMenu > 0){
     iMenu=0;
     cena(0);
     iddle=false;
   }
   else{
     cena(0);
   }
   
    if (!debug){
      robot.mouseMove(width/2, mouseY);
    }
  
  // ICONE MOUSE
  else if (mouseX < width/2-offset)
  {
    iconeAE();
    cena(0);
  }
  else if (mouseX > width/2+offset)
  {
    iconeAD();
    cena(0);
  }
  
  

}
