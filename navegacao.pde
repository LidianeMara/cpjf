//CENÁRIOS E COMPORTAMENTO GERAL DOS MENUS

void cena(int param, boolean refresh){
  if (refresh){
    transparency=0;
    iddle=false;
  }
    
  if (iMenu == 0) {
    iNarrativaT = iNarrativaT + param;
    if (refresh == false && transparency != 255) {
        tint(255, transparency);
        printImage(narrativaT[iNarrativaT],0,0,width,height);
    }
  }
  //MENU PRINCIPAL
  else if (iMenu == 1) {
    iNarrativaM = iNarrativaM + param;
    if ( iNarrativaM < 0){
      iNarrativaM = 4; 
    }
    else if (iNarrativaM > 4 ) {
      iNarrativaM = 0;
    }
    
    if (refresh == false && transparency != 255) {  
       tint(255, transparency);
       printImage(narrativaM[iNarrativaM],width/500,height/50,width,height);
    }
    else {
      background(bgcolor);
      drawCabecalho();
    }
  }
  //NARRATIVA B
  else if (iMenu == 2){
    iNarrativaB = iNarrativaB + param;
      if (iNarrativaB >= narrativaB.length) {
        iNarrativaB = narrativaB.length-1;
      } else if (iNarrativaB < 0) {
        iNarrativaB = 0;
      }
      
    if (refresh == false && transparency != 255) {  
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaB != 0){    
         drawBackgroundB();
       }
       tint(255, transparency);
       printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);

    }
    else{
      if (iNarrativaB != 0){
        background(bgcolor);
         drawBackgroundB();
       }
      //printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);      
    }
    

  }
  //NARRATIVA C
  else if (iMenu == 3){ 
    iNarrativaC = iNarrativaC + param;
      if (iNarrativaC >= narrativaC.length) {
        iNarrativaC = narrativaC.length-1;
      } else if (iNarrativaC < 0) {
        iNarrativaC = 0;
      }
      
    if (refresh == false && transparency != 255) {  
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaC != 0){    
          drawBackgroundB();
       }
       tint(255, transparency);
       printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);

    }
    else{
      if (iNarrativaC != 0){
        background(bgcolor);
         drawBackgroundB();         
       }
      //printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);      
    }
    
  }
  //NARRATIVA D
  else if (iMenu == 4){ 
    iNarrativaD = iNarrativaD + param;
      if (iNarrativaD >= narrativaD.length) {
        iNarrativaD = narrativaD.length-1;
      } else if (iNarrativaD < 0) {
        iNarrativaD = 0;
      }
      
    if (refresh == false && transparency != 255) {  
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaD != 0){    
          drawBackgroundB();
       }
       tint(255, transparency);
       printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);

    }
    else{
      if (iNarrativaD != 0){
        background(bgcolor);
         drawBackgroundB();
       }
      //printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);      
    }
    
  }
  //NARRATIVA E
  else if (iMenu == 5){ 
    iNarrativaE = iNarrativaE + param;
      if (iNarrativaE >= narrativaE.length) {
        iNarrativaE = narrativaE.length-1;
      } else if (iNarrativaE < 0) {
        iNarrativaE = 0;
      }
      
    if (refresh == false && transparency != 255) {  
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaE != 0){    
          drawBackgroundB();
       }
       tint(255, transparency);
       printImage(narrativaE[iNarrativaE],width/100,height/100,width,height);

    }
    else{
      if (iNarrativaB != 0){
        background(bgcolor);
         drawBackgroundB();
       }
      //printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);      
    }
    
  }
  //NARRATIVA F
  else if (iMenu == 6){ 
    if (refresh == false && transparency != 255) {  
       //background(bgcolor);
       tint(255, 255);
       if (iNarrativaF != 0){     
         drawBackgroundB();
       }
       tint(255, transparency);
       printImage(narrativaF[iNarrativaF],width/100,height/100,width,height);
       
    }
    else{
      iNarrativaF = iNarrativaF + param;
      if (iNarrativaF >= narrativaF.length) {
        iNarrativaF = narrativaF.length-1;
      } else if (iNarrativaF < 0) {
        iNarrativaF =0;
      }
      background(bgcolor);
      tint(255, 255);
      if (iNarrativaF != 0){     
         drawBackgroundB();
       }
      printImage(narrativaF[iNarrativaF],width/100,height/100,width,height);
    }
  } 
}

void zeracenas(){
       iNarrativaM=0;
       iNarrativaT=0;
       iNarrativaB=0;
       iNarrativaC=0;
       iNarrativaD=0;
       iNarrativaE=0;
       iNarrativaF=0;
       iMenu=0;
}
