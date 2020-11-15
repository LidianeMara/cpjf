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

//CENÁRIOS E COMPORTAMENTO GERAL DOS MENUS

void cena(int param,boolean refresh){

  //MENU tutorial
  println("cena iMenu: " + iMenu + " param: " + param + " iM: " + iNarrativaM + " iT: " + iNarrativaT);
  
  if (iMenu == 0) {
      
    if (refresh == false && transparency != 255) {
      print ("aqui" + transparency);
       background(bgcolor);
       tint(255, transparency);
       drawCabecalho();
       printImage(narrativaT[iNarrativaT],width/100,height/100,width,height);
       return;

    } 
    else{
     iNarrativaT = iNarrativaT + param;
       printImage(narrativaT[iNarrativaT],width/100,height/100,width,height);
    }
      
  }
  //MENU PRINCIPAL
  else if (iMenu == 1) {

    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       drawCabecalho();
       tint(255, transparency);
       printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
    }
    else {
      if ( iNarrativaM==0 & param==-1){
        iNarrativaM = narrativaM.length-1; 
      }
      
      else if (iNarrativaM >= narrativaM.length-1 ) {
        iNarrativaM = 1;
      }
      
      else  {
        iNarrativaM = iNarrativaM + param;
      }
       background(bgcolor);
       drawCabecalho();
       println(iNarrativaM);
       printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
       textFooter(height/5);
      
    }
  }
  //NARRATIVA B
  else if (iMenu == 2){ 
    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       tint(255, 255);
       drawCabecalho();
       tint(255, transparency);
       printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);
       
    }
    else{
      iNarrativaB = iNarrativaB + param;
      if (iNarrativaB >= narrativaB.length) {
        iNarrativaB = narrativaB.length-1;
      } else if (iNarrativaB < 0) {
        iNarrativaB = 0;
      }
      background(bgcolor);
       tint(255, 255);
       drawCabecalho();
      printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);
      
    }
    

  }
  //NARRATIVA C
  else if (iMenu == 3){ 
    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       tint(255, 255);
       drawCabecalho();
       tint(255, transparency);
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
       drawCabecalho();
      printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);
      
    }
  }
  //NARRATIVA D
  else if (iMenu == 4){ 
    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       tint(255, 255);
       drawCabecalho();
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
       drawCabecalho();
      printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);
      
    }
  }
  //NARRATIVA E
  else if (iMenu == 5){ 
    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       tint(255, 255);
       drawCabecalho();
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
       drawCabecalho();
      printImage(narrativaE[iNarrativaE],width/100,height/100,width,height);
      
    }
  }
  //NARRATIVA F
  else if (iMenu == 6){ 
    if (refresh == false && transparency != 255) {  
       background(bgcolor);
       tint(255, 255);
       drawCabecalho();
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
       drawCabecalho();
      printImage(narrativaF[iNarrativaF],width/100,height/100,width,height);
      
    }
  }
  
}
