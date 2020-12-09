//CENÁRIOS E COMPORTAMENTO GERAL DOS MENUS

void cena(int param){

  debug();
  
  //MENU 0 - Tela descanso
  
  if (iMenu == 0) {
     println("iDescanso: " + iDescanso);
    // iMenu 0 Descanso 0 tela 1 ppt
    if (param!=0){
      iDescanso+=param;
    }

    if (iDescanso == 0)
    {
       
       iNarrativaT=0;
       iDescanso++;
    }
    else if (iDescanso == 1){
      delay(20 * delaySegundo);
      iNarrativaT=1;
      iDescanso++;
    }
    // iMenu 0 Descanso 1-9 tela 2 ppt
    else if (iDescanso >1 && iDescanso < 9)
    {
      delay (2 * delaySegundo); //TODO
      
      if (iNarrativaT==1){
        iNarrativaT=2;
      }
      else if (iNarrativaT==2){
        iNarrativaT=1;
      }
      else {
        iNarrativaT=1;
      }
      iDescanso++;

    }
    //tela 3 passagem com tempo 
    else if (iDescanso >= 9 && iDescanso <=20){
      delay (delaySegundo);      
      if (iNarrativaT==3){
        iNarrativaT=4;
      }
      else if (iNarrativaT==4){
        iNarrativaT=3;
      }
      else
      {
        iNarrativaT=3;
      }
      iDescanso++;

    }
    else if (iDescanso>20 && iDescanso < 31){
      delay (delaySegundo);      
      if (iNarrativaT==5){
        iNarrativaT=6;
      }
      else if (iNarrativaT==6){
        iNarrativaT=5;
      }
      else
      {
        iNarrativaT=5;
      }
      iDescanso++;
      
    }
    //tela 4a -- passagem sem click 5 seg
    else if (iDescanso == 31){
      if (!descansoAcao){
        startTime2 = millis()/1000 + countdown;
        descansoAcao=true;
      }
      else if (seconds2 < countdown-5){
       iNarrativaT=7;
       descansoAcao=false;
       iDescanso++;
      }

      if (!descansoInverso && seconds < countdown - 1){
        startTime = millis()/1000 + countdown;
        descansoInverso=!descansoInverso;
        iNarrativaT=6;
      }
      else if (seconds < countdown - 2){
         iNarrativaT=5;
         startTime = millis()/1000 + countdown;
         descansoInverso=!descansoInverso;
      
      }
    }
    //tela 4b -- passagem com click
    else if (iDescanso == 32){
      if (!descansoAcao){
        startTime2 = millis()/1000 + countdown;
        descansoAcao=true;
      }
      else if (seconds2 < countdown-20){
       iNarrativaT=0;
       iDescanso=0;
       descansoAcao=false;
       
      }

      if (!descansoInverso && seconds < countdown - 1){
        startTime = millis()/1000 + countdown;
        descansoInverso=!descansoInverso;
        iNarrativaT=6;
      }
      else if (seconds < countdown - 2){
         iNarrativaT=7;
         startTime = millis()/1000 + countdown;
         descansoInverso=!descansoInverso;
      
      }
      getMouse();
    }

    //tela 5 - movimento concluido com sucesso
    else if (iDescanso == 33){
      iNarrativaT=8;
      iDescanso++;
    }
    //tela 5 delay 5 * segundo (atualizado ppt)
    else if (iDescanso == 34){
      delay(5*delaySegundo);
      iNarrativaT=9;//proxima imagem tela 6
      iDescanso++;
    }
    //tela 6a 1a imagem 
    else if (iDescanso == 35){
      iNarrativaT=9;
      iDescanso++;
    }
    //tela 6a delay 15 * segundos
    else if (iDescanso == 36){
      delay(15 * delaySegundo);
      iNarrativaT=10;//proxima imagem tela 6
      iDescanso++;
    }
    //tela 6b 2a imagem 
    else if (iDescanso == 37){
      //mantem imagem
      iDescanso++;
    }
    //tela 6b delay 5 * segundos
    else if (iDescanso == 38){
      delay(5 * delaySegundo);
      iNarrativaT=11;
      iDescanso++;
    }
    //tela 6c 3a imagem 
    else if (iDescanso == 39){
      iNarrativaT=11;
      iDescanso++;
    }
    //tela 6c delay 7 * segundos
    else if (iDescanso == 40){
      delay(7 * delaySegundo);
      iNarrativaT=12;
      iDescanso++;
      startTime2 = millis()/1000 + countdown+20;
    }
    
   
    //tela 7a
    else if (iDescanso >= 41 && iDescanso <=51){
      delay (delaySegundo);      
      if (iNarrativaT==12){
        iNarrativaT=13;
      }
      else if (iNarrativaT==13){
        iNarrativaT=12; 
      }
      else
      {
        iNarrativaT=12;
        
      }
      iDescanso++;
    }
    //tela 7b
    else if (iDescanso >= 52 && iDescanso <=62){
      delay (delaySegundo);      
      if (iNarrativaT==14){
        iNarrativaT=13;
      }
      else if (iNarrativaT==13){
        iNarrativaT=14;
      }
      else
      {
        iNarrativaT=14;
      }
      iDescanso++;
    }
        
    //tela 8 - mao direita - avançar
    else if (iDescanso == 63){
      // muda imagem em 1 segundo TODO
      if (!descansoInverso && seconds < countdown - 1){
        startTime = millis()/1000 + countdown;
        descansoInverso=!descansoInverso;
        iNarrativaT=16;
      }
      else if (seconds < countdown - 2){
         iNarrativaT=15;
         startTime = millis()/1000 + countdown;
         descansoInverso=!descansoInverso;
      }
      if (seconds2 < 0){
        startTime2 = millis()/1000 + countdown+5;
        descansoInverso=!descansoInverso;
        zeracenas();
      }

      getMouse();
      drawSeta();
    }
    //tela 8a delay 5 * segundos
    else if (iDescanso == 64){
      iNarrativaT=8;
      iDescanso++;
    }
    else if (iDescanso == 65) {
      delay(5 * delaySegundo);       
      iNarrativaT=17;
      iDescanso++;
    }
    else if (iDescanso == 66) {       
      robot.mouseMove(width/2, mouseY);
      iNarrativaT=17;
      iDescanso++;
    }
    
    //tela 9 - mao esquerda - voltar
    else if (iDescanso == 67){
      // muda imagem em 1 segundo TODO
      if (!descansoInverso && seconds < countdown - 1){
        startTime = millis()/1000 + countdown;
        descansoInverso=!descansoInverso;
        iNarrativaT=17;
      }
      else if (seconds < countdown - 2){
         iNarrativaT=18;
         startTime = millis()/1000 + countdown;
         descansoInverso=!descansoInverso;
      }
      if (seconds2 < 0){
        startTime2 = millis()/1000 + countdown+5;
        descansoInverso=!descansoInverso;
        zeracenas();
      }
      getMouse();
      drawSeta();
    }
    
    //tela 10
    else if (iDescanso == 68){
        iNarrativaT=19;
        iDescanso++;

    }
    //tela 10 -- passagem com click
    else if (iDescanso >= 69){
      getMouse();
    }
    
    //exibe tela de descanso    
    if (iNarrativaT >= narrativaT.length) {
      iNarrativaT = narrativaT.length-1;
    }
    else if (iNarrativaT < 0) {
      iNarrativaT = 0;
    }
    if (iMenu == 0){
      printImage(narrativaT[iNarrativaT],0,0,narrativaT[iNarrativaT].width,narrativaT[iNarrativaT].height);
    }
  }

  //iMenu 1 - MENU PRINCIPAL
  else if (iMenu == 1) {
    iNarrativaM += param;
    if ( iNarrativaM < 1){
      iNarrativaM = 5; 
    }
    else if (iNarrativaM > 5 ) {
      iNarrativaM = 1;
    }
    //background(bgcolor);
    printImage(narrativaM[0],0,0,narrativaM[0].width,narrativaM[0].height);
    printImage(narrativaM[iNarrativaM],0,0,narrativaM[iNarrativaM].width,narrativaM[iNarrativaM].height);
  }

  //iMenu 2 - NARRATIVA B  Samira
  else if (iMenu == 2){
    iNarrativaB += param;
    if (iNarrativaB >= narrativaB.length) {
      iNarrativaB = narrativaB.length-1;
    } else if (iNarrativaB < 0) {
      iNarrativaB = 0;
    }     
    
    printImage(narrativaB[iNarrativaB],0,0,narrativaB[iNarrativaB].width,narrativaB[iNarrativaB].height);

  }
  //iMenu 3 NARRATIVA C Julia
  else if (iMenu == 3){ 
    iNarrativaC += param;
      if (iNarrativaC >= narrativaC.length) {
        iNarrativaC = narrativaC.length-1;
      } else if (iNarrativaC < 0) {
        iNarrativaC = 0;
      }    
      printImage(narrativaC[iNarrativaC],0,0,narrativaC[iNarrativaC].width,narrativaC[iNarrativaC].height);    
  }
  
  // iMenu 4 - NARRATIVA D -  Bernardo
  else if (iMenu == 4){ 
    iNarrativaD += param;
      if (iNarrativaD >= narrativaD.length) {
        iNarrativaD = narrativaD.length-1;
      } else if (iNarrativaD < 0) {
        iNarrativaD = 0;
      }
       printImage(narrativaD[iNarrativaD],0,0,narrativaD[iNarrativaD].width,narrativaD[iNarrativaD].height);
  }
  
  //iMenu 5 NARRATIVA E - Camila
  else if (iMenu == 5){ 
    iNarrativaE = iNarrativaE + param;
      if (iNarrativaE >= narrativaE.length) {
        iNarrativaE = narrativaE.length-1;
      } else if (iNarrativaE < 0) {
        iNarrativaE = 0;
      }
       printImage(narrativaE[iNarrativaE],0,0,narrativaE[iNarrativaE].width,narrativaE[iNarrativaE].height);  
  }
  //iMenu 6 - NARRATIVA F João
  else if (iMenu == 6){ 
      iNarrativaF = iNarrativaF + param;
      if (iNarrativaF >= narrativaF.length) {
        iNarrativaF = narrativaF.length-1;
      } else if (iNarrativaF < 0) {
        iNarrativaF = 0;
      }
       printImage(narrativaF[iNarrativaF],0,0,narrativaF[iNarrativaF].width,narrativaF[iNarrativaF].height);
    }
  } 


void zeracenas(){
       iDescanso=0;
       iNarrativaM=0;
       iNarrativaT=0;
       iNarrativaB=0;
       iNarrativaC=0;
       iNarrativaD=0;
       iNarrativaE=0;
       iNarrativaF=0;
       iMenu=0;
}
