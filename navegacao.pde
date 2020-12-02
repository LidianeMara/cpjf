//CENÁRIOS E COMPORTAMENTO GERAL DOS MENUS

void cena(int param){
  iddle=false;
  debug();
     
  //MENU 0 - tutorial
  if (iMenu == 0) {
    iNarrativaT = iNarrativaT + param;
    printImage(narrativaT[iNarrativaT],0,0,width,height);
  }

  //iMenu 1 - MENU PRINCIPAL
  else if (iMenu == 1) {
    iNarrativaM = iNarrativaM + param;
    if ( iNarrativaM < 0){
      iNarrativaM = 4; 
    }
    else if (iNarrativaM > 4 ) {
      iNarrativaM = 0;
    }
    //background(bgcolor);
    printImage(narrativaM[0],width/500,height/50,width,height);
    printImage(narrativaM[iNarrativaM+1],width/500,height/50,width,height);
  }

  //iMenu 2 - NARRATIVA B  Samira
  else if (iMenu == 2){
    iNarrativaB = iNarrativaB + param;
    if (iNarrativaB >= narrativaB.length) {
      iNarrativaB = narrativaB.length-1;
    } else if (iNarrativaB < 0) {
      iNarrativaB = 0;
    }     
    
    if (iNarrativaB != 0){    
      drawBackgroundB();
      //drawSeta();
    }
    printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);

  }
  //iMenu 3 NARRATIVA C Julia
  else if (iMenu == 3){ 
    iNarrativaC = iNarrativaC + param;
      if (iNarrativaC >= narrativaC.length) {
        iNarrativaC = narrativaC.length-1;
      } else if (iNarrativaC < 0) {
        iNarrativaC = 0;
      }
      
      //background(bgcolor);
      if (iNarrativaC != 0){    
         drawBackgroundB();
         //drawSeta();
      }
     
      printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);    
  }
  
  // iMenu 4 - NARRATIVA D -  Bernardo
  else if (iMenu == 4){ 
    iNarrativaD = iNarrativaD + param;
      if (iNarrativaD >= narrativaD.length) {
        iNarrativaD = narrativaD.length-1;
      } else if (iNarrativaD < 0) {
        iNarrativaD = 0;
      }
      //background(bgcolor);
       if (iNarrativaD != 0){    
          drawBackgroundB();
          //drawSeta();
       }
       printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);
  }
  
  //iMenu 5 NARRATIVA E - Camila
  else if (iMenu == 5){ 
    iNarrativaE = iNarrativaE + param;
      if (iNarrativaE >= narrativaE.length) {
        iNarrativaE = narrativaE.length-1;
      } else if (iNarrativaE < 0) {
        iNarrativaE = 0;
      }
      
      //background(bgcolor);
       if (iNarrativaE != 0){    
          drawBackgroundB();
          //drawSeta();
       }
       printImage(narrativaE[iNarrativaE],width/100,height/100,width,height);  
  }
  //iMenu 6 - NARRATIVA F João
  else if (iMenu == 6){ 
      iNarrativaF = iNarrativaF + param;
      if (iNarrativaF >= narrativaF.length) {
        iNarrativaF = narrativaF.length-1;
      } else if (iNarrativaF < 0) {
        iNarrativaF = 0;
      }
      
      //background(bgcolor);
       if (iNarrativaF != 0){    
          drawBackgroundB();
          //drawSeta();
       }
       printImage(narrativaF[iNarrativaF],width/100,height/100,width,height);
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
