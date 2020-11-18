//CENÁRIOS E COMPORTAMENTO GERAL DOS MENUS

void cena(int param, boolean refresh){
  if (refresh){
    iddle=false;
    transparency=0;
  }
  
  if (iMenu == 0) {
      background(bgcolor);
<<<<<<< HEAD
      tint(255, transparency);
=======
      iNarrativaT = iNarrativaT + param;
>>>>>>> f9c45ca8b26fc813571402688c26e115c73306fb
      printImage(narrativaT[iNarrativaT],width/500,height/750,width,height);
  }
  //MENU PRINCIPAL
  else if (iMenu == 1) {

    iNarrativaM = iNarrativaM + param;
    
    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       drawCabecalho();
       tint(255, transparency);
       printImage(narrativaM[iNarrativaM],width/50,height/50,width,height);
    }
    else {
      if ( iNarrativaM<0){
        iNarrativaM = 4; 
      }
      
      else if (iNarrativaM >4 ) {
        iNarrativaM = 0;
      }
      
      else  {

        //iddle=true;
      }
       background(bgcolor);
       drawCabecalho();
       printImage(narrativaM[iNarrativaM],width/50,height/50,width,height);
      // printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
       textFooter(height/5);
      
    }
  }
  //NARRATIVA B
  else if (iMenu == 2){ 
    if (refresh == false && transparency != 255) {  
      // background(bgcolor);
       tint(255, 255);
       if (iNarrativaB != 0){    
        drawBackgroundB();
        drawCabecalhoB();
       }
       tint(255, transparency);
       printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);
       
    }
    else{
      background(bgcolor);
      iNarrativaB = iNarrativaB + param;
      if (iNarrativaB >= narrativaB.length) {
        iNarrativaB = narrativaB.length-1;
      } else if (iNarrativaB < 0) {
        iNarrativaB = 0;
      }
      background(bgcolor);
       tint(255, 255);
      if (iNarrativaB != 0){  
         drawBackgroundB();
         drawCabecalhoB();
       }
      printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);      
    }
    

  }
  //NARRATIVA C
  else if (iMenu == 3){ 
    if (refresh == false && transparency != 255) {  
       //background(bgcolor);
       tint(255, 255);
       
       if (iNarrativaC != 0){   
         drawBackgroundB();
         drawCabecalhoB();
       }tint(255, transparency);
       printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);
       
    }
    else{
      iNarrativaC = iNarrativaC + param;
      if (iNarrativaC >= narrativaC.length) {
        iNarrativaC = narrativaC.length-1;
      } else if (iNarrativaC < 0) {
        iNarrativaC =0;
      }
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaC != 0){          
         drawBackgroundB();
         drawCabecalhoB();
       }
      printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);
      
    }
  }
  //NARRATIVA D
  else if (iMenu == 4){ 
    if (refresh == false && transparency != 255) {  
       //background(bgcolor);
       tint(255, 255);
       if (iNarrativaD != 0){  
         drawBackgroundB();
         drawCabecalhoB();
       }
       tint(255, transparency);
       printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);
       
    }
    else{
      iNarrativaD = iNarrativaD + param;
      if (iNarrativaD >= narrativaD.length) {
        iNarrativaD = narrativaD.length-1;
      } else if (iNarrativaD < 0) {
        iNarrativaD=0;
      }
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaD != 0){  
         drawBackgroundB();
         drawCabecalhoB();
       }
      printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);
     }
  }
  //NARRATIVA E
  else if (iMenu == 5){ 
    if (refresh == false && transparency != 255) {  
       //background(bgcolor);
       tint(255, 255);
       if (iNarrativaE != 0){    
         drawBackgroundB();
         drawCabecalhoB();
       }
       tint(255, transparency);
       printImage(narrativaE[iNarrativaE],width/100,height/100,width,height);
    }
    else{
      iNarrativaE = iNarrativaE + param;
      if (iNarrativaE >= narrativaE.length) {
        iNarrativaE = narrativaE.length-1;
      } else if (iNarrativaE < 0) {
        iNarrativaE =0;
      }
      background(bgcolor);
       tint(255, 255);
       if (iNarrativaE != 0){      
         drawBackgroundB();
         drawCabecalhoB();
       }
      printImage(narrativaE[iNarrativaE],width/100,height/100,width,height);
      
    }
  }
  //NARRATIVA F
  else if (iMenu == 6){ 
    if (refresh == false && transparency != 255) {  
       //background(bgcolor);
       tint(255, 255);
       if (iNarrativaF != 0){     
         drawBackgroundB();
         drawCabecalhoB();
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
         drawCabecalhoB();
       }
      printImage(narrativaF[iNarrativaF],width/100,height/100,width,height);
    }
  } 
}
