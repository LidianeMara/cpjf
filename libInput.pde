
//CH: sem uso
boolean mouseover() {
  if ( ( mouseX > offx && mouseX < iconMaoE.width+offx ) && ( mouseY > offy && mouseY < iconMaoE.height +offy) ) return false;
  return true; 
  } 
//CH: sem uso
boolean mouseover1() {
  if ( ( mouseX > offx1 && mouseX < iconMaoD.width+offx1) && ( mouseY > offy1 && mouseY < iconMaoD.height +offy1 ) ) return false;
  return true;
}

//CH: sem uso
void mouseMoved(){
  //handle cursor pointer effects
  if( mouseX < 10 || mouseX > width-10 || mouseY > 300) cursor(HAND);  
  else                                                  cursor(ARROW);
}

//CH: sem uso
/*void mousePressed(){
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
*/


void getMouse(){
 
  // 
  if ( iMenu ==0 ){
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
  else {
    if (mouseX < width/2-offset)
     {
       //TODO trocar função
       drawSetaE();
       //drawProgE();
     }
     else if (mouseX > width/2+offset)
     {
       //TODO trocar função
       //drawSetaD();
       drawProgD();
     }
       
  }


  
  // ACIONA ESQUERDA / direita
  if (mouseX < offset)  {
    iddle=false;
    cena(-1);
    delay(300);
  }
   else if (mouseX > width-offset){
    iddle=false;
    cena (1);
    delay(300);
  }

  //CLICK MOUSE DENTRO DO MENU
  if (  mousePressed && iMenu == 0) {
    iddle=false;
    iMenu=iNarrativaM;
    cena (0);
     robot.mouseMove(width/2, mouseY);
    
   }
   else if ( mousePressed && iMenu > 0){
     iMenu=0;
     cena(0);
     
   }
   
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      iddle=false;
      cena(-1);
      delay(300);
    }
    else if (keyCode == RIGHT ){
      iddle=false;
      cena (1);
      delay(300);
    }
    else if (keyCode == DOWN || keyCode == UP ){
      if ( iMenu == 0) {
        iddle=false;
        iMenu=iNarrativaM;
        cena (0);
      }
      else
      {
        iMenu=0;
        cena(0);
      }
     }
   else if ( mousePressed && iMenu > 0){
     iMenu=0;
     cena(0);
  
    }
  }
  
}
