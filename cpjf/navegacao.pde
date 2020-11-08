void menuPrincipal() {

  /*timer= timer + (1.0/10.0);
  if (timer > slideTempo)
  {
    backgroundIndex= backgroundIndex + 1;
    timer= 0;
  }
  */
  if (backgroundIndex >= narrativaM.length)
  {
    backgroundIndex= 0;
  }
  if (narrativaM[backgroundIndex].width > 0)
  {
    printImage(narrativaM[backgroundIndex],width/100,height/100,width,height);
  } 
}

void cena(int param){
  int frame = 0;
  
  //MENU principal
  if (iMenu == 0) {
    
    if ( narrativaMIndex ==0 & param==0 || narrativaMIndex==0 & param==-1){
      narrativaMIndex =0; 
    }
    
    else if (narrativaMIndex >= narrativaM.length-1 ) {
      narrativaMIndex = 1;
    }
    else if (narrativaMIndex == 1 && param == -1) {
      narrativaMIndex = 4;
    }
    else  {
      narrativaMIndex = narrativaMIndex + param;
    }
    printImage(narrativaM[narrativaMIndex],width/100,height/100,width,height);
      
  }
  else if (iMenu == 1){ 
    narrativaCIndex = narrativaCIndex + param;
    if (narrativaCIndex >= narrativaC.length) {
      narrativaCIndex = narrativaC.length-1;
    } else if (narrativaCIndex < 0) {
      narrativaCIndex =0;
    }
    
    printImage(narrativaC[narrativaCIndex],width/100,height/100,width,height);
  }
  
    
 
}
