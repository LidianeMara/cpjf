//CH: sem uso
//void mouseMoved(){
  //handle cursor pointer effects
  //if( mouseX < 10 || mouseX > width-10 || mouseY > 300) cursor(HAND);  
  //else                                                  cursor(ARROW);
//}

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

  //Tutorial 
  if (iMenu == 0){
    if (iNarrativaT == 1 ){
      if (mouseX > width - offset){
          cena(1,true);
          robot.mouseMove(width/2, mouseY);
          delay(300);
       }
    }
    else if (iNarrativaT == 2){
      if (mouseX < offset){
          cena(1,true);
          robot.mouseMove(width/2, mouseY);
           delay(300);
        }
      }
  }
  
  else if ( iMenu == 1 ){
    // TROCA CENA - ACIONA ESQUERDA / direita
    if (mouseX < offsetMouse)  {
      fade=true;
      robot.mouseMove(width/2, height);
      delay(500);
      cena(-1,true);

    }
     else if (mouseX > width-offsetMouse){
       fade=true;
       robot.mouseMove(width/2, height);
       delay(500);
       cena (1,true);
  
    }
  }
  //TROCA Narrativas
  else if ( iMenu > 1){

    // ACIONA ESQUERDA / direita
    if (mouseX < offsetMouse )  {
      if (iNarrativaB>0 || iNarrativaC>0 || iNarrativaD>0 || iNarrativaE>0 || iNarrativaF>0){

        fade=false;
        cena(-1,true);
        delay(500);
        robot.mouseMove(width/2, height);
      }
    }
     else if (mouseX > width-offsetMouse){
      fade=false;
      cena (1,true);
      delay(500);
      robot.mouseMove(width/2, height);
      
      robot.mouseMove(width/2, height);

    }      
    
 }

  //CLICK MOUSE DENTRO DO MENU
  
  if ( mousePressed ){
    println("mouse click!");
    
    //CLICKS DO TUTORIAL
 
    if (iMenu == 0 ){
      cena(0,true);
      //PRIMEIRA TELA
      if (iNarrativaT ==0) {
        cena(1,true);
      }
      //ULTIMA TELA
      else if (iNarrativaT==3){
        iMenu=1;
        cena(1,true);
      }
    }
    //Clicks no menu principal
    else if (iMenu ==1){
      iMenu=iNarrativaM+2;
      cena (0,true);
      robot.mouseMove(width/2, mouseY);
      delay(300);
    }
    //Narrativas B-F
    else if (iMenu > 1){
      //Força o retorno ao menu principal (escolha das narrativas)
      iMenu=1;
      cena(0,true);
      robot.mouseMove(width/2, mouseY);
      delay(300);
    }
  }
  
}


void keyPressed() {
  println("Key: " + (int)key);
    if (keyCode == 97){
      iNarrativaT=0;
      iMenu=0;
      cena(0,true);
    }
   else if (keyCode == 98){
      iNarrativaM=0;
      iMenu=1;
      cena(0,true);
    }
    else if (keyCode == LEFT) {
      cena(-1,true);
      delay(300);
    }
    else if (keyCode == RIGHT ){
      cena (1,true);
      delay(300);
    }
    else if (keyCode == DOWN || keyCode == UP ){
      if ( iMenu == 0) {
        iMenu=1;
        cena (0,true);
      }
      if ( iMenu == 1) {
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
