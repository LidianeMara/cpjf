
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
  if (iMenu == 0){
    if (iNarrativaT == 1){
      if (mouseX>width-offset){
          cena(1,true);
       }
    }
    else if (iNarrativaT == 2){
        if (mouseX<offset){
          cena(1,true);
        }
    }
  }
  
  else if ( iMenu ==1 ){
    // TROCA CENA - ACIONA ESQUERDA / direita
    if (mouseX < offset)  {
      iddle=false;
      cena(-1,true);
      robot.mouseMove(width/2, mouseY);
      delay(300);
    }
     else if (mouseX > width-offset){
      iddle=false;
      cena (1,true);
      delay(300);
    }
  }
  //TROCA Narrativas
  else if ( iMenu >1){
  
    // ACIONA ESQUERDA / direita
    if (mouseX < offset)  {
      iddle=false;
      transparency=20;
      cena(-1,true);
      delay(300);
    }
     else if (mouseX > width-offset){
      iddle=false;
      transparency=20;
      cena (1,true);
      delay(300);
    }      
    
 }

  //CLICK MOUSE DENTRO DO MENU
  
  if ( mousePressed ){
    println("mouse click!");
    
    //CLICKS DO TUTORIAL
 
    if (iMenu == 0){
      //PRIMEIRA TELA
      if (iNarrativaT == 0) {
        iddle=false;
        cena(1,true);
      }
      //ULTIMA TELA
      else if (iNarrativaT==3){
        iMenu=1;
        iddle=false;
        cena(0,true);
      }
    }
    //Clicks no menu principal
    else if (iMenu ==1){
      iddle=false;
      transparency=0;
      iMenu=iNarrativaM+2;
      cena (0,true);
      robot.mouseMove(width/2, mouseY);
    }
    //Narrativas B-F
    else if (iMenu > 1){
      //Força o retorno ao menu principal (escolha das narrativas)
      iMenu=1;
      transparency=0;
      iddle=false;
      cena(0,true);
      robot.mouseMove(width/2, mouseY);
    }
  }
  
}


void keyPressed() {
  println("Key: " + (int)key);
    println("KeyCode: " + keyCode);
  if (key == CODED) {
    if (keyCode == 97){
      iddle=false;
      iNarrativaT=0;
      iMenu=0;
      cena(0,true);
    }
   if (keyCode == 98){
      iddle=false;
      iNarrativaM=0;
      iMenu=1;
      cena(0,true);
    }
    if (keyCode == 99){
      iddle=false;
      iNarrativaB=0;
      iMenu--;
      cena(0,true);
    }
    if (keyCode == 100){
      iddle=false;
      iNarrativaB=0;
      iMenu++;
      cena(0,true);
    }
    
    
    
    if (keyCode == LEFT) {
      iddle=false;
      cena(-1,true);
      delay(300);
    }
    else if (keyCode == RIGHT ){
      iddle=false;
      cena (1,true);
      delay(300);
    }
    else if (keyCode == DOWN || keyCode == UP ){
      if ( iMenu == 0) {
        iddle=false;
        iMenu=1;
        cena (0,true);
      }
      if ( iMenu == 1) {
        iddle=false;
        iMenu=iNarrativaM+2;
        cena (0,true);
      }
      else
      {
        iMenu=1;
        cena(0,true);
      }
     }

  }
  
}
