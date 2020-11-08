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
    narrativaMIndex = narrativaMIndex + param;
    if (narrativaMIndex >= narrativaM.length  ) {
      narrativaMIndex = 1;
    } else if (narrativaMIndex < 1) {
      narrativaMIndex = 4;
      }
    /*
    for (int i=0;i<10;i++){  
      if (transparency > 0) { transparency -= 0.25; }
      tint(255, transparency);
     
     }
     */
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
