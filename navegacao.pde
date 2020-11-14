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

void cena(int param,boolean refresh){
  //MENU tutorial
  println("cena iMenu: " + iMenu + "param: " + param);
  if (iMenu == 0) {
  
    
    /*if (refresh == false && transparency != 255) {
      print ("aqui" + transparency);
       background(bgcolor);
       tint(255, transparency);
       drawCabecalho();
       printImage(narrativaT[iNarrativaT],width/100,height/100,width,height);
       return;

    } */   
     if ( iNarrativaT ==0 & param==0 || iNarrativaT==0 & param==-1){
      iNarrativaT =0; 
    }
    else if (iNarrativaT >= narrativaT.length-1 ) {
      iNarrativaT = 0;
    }
    else if (iNarrativaT == 1 && param == -1) {
      transparency=0;
      iNarrativaT = 5;
    }
    else  {
      transparency=0;
      iNarrativaT = iNarrativaT + param;
    }
       background(bgcolor);
       printImage(narrativaT[iNarrativaT],width/100,height/100,width,height);

    //printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
      
  }
  else if (iMenu == 1) {
    
    
    if (refresh == false && transparency != 255) {
      print ("aqui" + transparency);
       background(bgcolor);
       tint(255, transparency);
       drawCabecalho();
       printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
       return;

    }    
    else if ( iNarrativaM ==0 & param==0 || iNarrativaM==0 & param==-1){
      iNarrativaM =0; 
    }
    
    else if (iNarrativaM >= narrativaM.length-1 ) {
      iNarrativaM = 1;
    }
    else if (iNarrativaM == 1 && param == -1) {
      transparency=0;
      iNarrativaM = 5;
    }
    else  {
      transparency=0;
      iNarrativaM = iNarrativaM + param;
    }
    /*for (int i=0;i<255;i+=20){
      background(bgcolor);
      tint(255, i);
      print (i);
      printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
     }*/
       background(bgcolor);
       drawCabecalho();
       printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);

    //printImage(narrativaM[iNarrativaM],width/100,height/100,width,height);
      
  }
  else if (iMenu == 2){ 
    iNarrativaB = iNarrativaB + param;
    if (iNarrativaB >= narrativaB.length) {
      iNarrativaB = narrativaB.length-1;
    } else if (iNarrativaB < 0) {
      iNarrativaB =0;
    }
    
    printImage(narrativaB[iNarrativaB],width/100,height/100,width,height);
  }

  else if (iMenu == 3){ 
    iNarrativaC = iNarrativaC + param;
    if (iNarrativaC >= narrativaC.length) {
      iNarrativaC = narrativaC.length-1;
    } else if (iNarrativaC < 0) {
      iNarrativaC =0;
    }
    
    printImage(narrativaC[iNarrativaC],width/100,height/100,width,height);
  }
  else if (iMenu == 4){ 
    iNarrativaD = iNarrativaD + param;
    if (iNarrativaD >= narrativaD.length) {
      iNarrativaD = narrativaD.length-1;
    } else if (iNarrativaD < 0) {
      iNarrativaD =0;
    }
    
    printImage(narrativaD[iNarrativaD],width/100,height/100,width,height);
  }
 
  else if (iMenu == 5){ 
    iNarrativaE = iNarrativaE + param;
    if (iNarrativaE >= narrativaE.length) {
      iNarrativaE = narrativaE.length-1;
    } else if (iNarrativaE < 0) {
      iNarrativaE =0;
    }
    
    printImage(narrativaE[iNarrativaE],width/100,height/100,width,height);
  }
  else if (iMenu == 6){ 
    iNarrativaF = iNarrativaF + param;
    if (iNarrativaF >= narrativaF.length) {
      iNarrativaF = narrativaF.length-1;
    } else if (iNarrativaF < 0) {
      iNarrativaF =0;
    }
    
    printImage(narrativaF[iNarrativaF],width/100,height/100,width,height);
  }
  
       
    textFooter(height/5);
 
 
}
