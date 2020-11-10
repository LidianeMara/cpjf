void menuPrincipal() {

  /*timer= timer + (1.0/10.0);
  if (timer > slideTempo)
  {
    backgroundIndex= backgroundIndex + 1;
    timer= 0;
  }
  */
  if (iBg >= narrativaM.length)
  {
    iBg= 0;
  }
  if (narrativaM[iBg].width > 0)
  {
    printImage(narrativaM[iBg],width/100,height/100,width,height);
  } 
}

void cena(int param){
  //int frame = 0;
  background(bgcolor);
  drawCabecalho();
  
  
  //MENU principal
  if (iMenu == 0) {
    
    if ( iNarrativaM ==0 & param==0 || iNarrativaM==0 & param==-1){
      iNarrativaM =0; 
    }
    
    else if (iNarrativaM >= narrativaM.length-1 ) {
      iNarrativaM = 1;
    }
    else if (iNarrativaM == 1 && param == -1) {
      iNarrativaM = 5;
    }
    else  {
      iNarrativaM = iNarrativaM + param;
    }
    printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
      
  }
  else if (iMenu == 2){ 
    iNarrativaC = iNarrativaC + param;
    if (iNarrativaC >= narrativaC.length) {
      iNarrativaC = narrativaC.length-1;
    } else if (iNarrativaC < 0) {
      iNarrativaC =0;
    }
    
    printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);
  }
  else if (iMenu == 3){ 
    iNarrativaD = iNarrativaD + param;
    if (iNarrativaD >= narrativaD.length) {
      iNarrativaD = narrativaD.length-1;
    } else if (iNarrativaD < 0) {
      iNarrativaD =0;
    }
    
    printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);
  }
  
       
    textFooter(height/5);
 
 
}
