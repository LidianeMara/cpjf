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
      delay(25 * delaySegundo);
      iNarrativaT=1;
      iDescanso++;
    }
    // iMenu 0 Descanso 1-9 tela 2 ppt
    else if (iDescanso >1 && iDescanso < 9)
    {
      delay (delayPadrao); //TODO
      
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
    }
    
   
    //tela 7a
    else if (iDescanso == 41){

      //permanece por 15 segundos
      if (!descansoAcao){
        startTime2 = millis()/1000 + countdown;
        descansoAcao=true;
      }
      else if (seconds2 < countdown-10){
       iNarrativaT=14;// carrega proxima cena tela 8
       iDescanso++;
       descansoAcao=false;
      }

      // muda imagem em 1 segundo TODO
      if (!descansoInverso && seconds < countdown - 1){
        startTime = millis()/1000 + countdown;
        descansoInverso=!descansoInverso;
        iNarrativaT=13;
      }
      else if (seconds < countdown - 2){
         iNarrativaT=12;
         startTime = millis()/1000 + countdown;
         descansoInverso=!descansoInverso;
      }    }    
    
    //tela 7b 
    else if (iDescanso == 42){
      //permanece por 10 segundos
      if (!descansoAcao){
        startTime2 = millis()/1000 + countdown;
        descansoAcao=true;
      }
      else if (seconds2 < countdown-10){
       iNarrativaT=15; // carrega proxima cena tela 8
       iDescanso++;
       descansoAcao=false;
      }

      // muda imagem em 1 segundo TODO
      if (!descansoInverso && seconds < countdown - 1){
        startTime = millis()/1000 + countdown;
        descansoInverso=!descansoInverso;
        iNarrativaT=13;
      }
      else if (seconds < countdown - 2){
         iNarrativaT=14;
         startTime = millis()/1000 + countdown;
         descansoInverso=!descansoInverso;
      }
    }
        
    //tela 8 - mao direita - avançar
    else if (iDescanso == 43){
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
      getMouse();
      drawSeta();
    }
    //tela 8a delay 5 * segundos
    else if (iDescanso == 44){
      iNarrativaT=8;
      iDescanso++;
    }
    else if (iDescanso == 45) {
      delay(5 * delaySegundo);       
      iNarrativaT=17;
      iDescanso++;
    }
    else if (iDescanso == 46) {       
      robot.mouseMove(width/2, mouseY);
      iNarrativaT=17;
      iDescanso++;
    }
    
    //tela 9 - mao esquerda - voltar
    else if (iDescanso == 47){
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
      getMouse();
      drawSeta();
    }
    
    //tela 10
    else if (iDescanso == 48){
        iNarrativaT=19;
        iDescanso++;

    }
    //tela 10 -- passagem com click
    else if (iDescanso >= 49){
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
    println("iM: " + iNarrativaM);
    if ( iNarrativaM < 1){
      iNarrativaM = 4; 
    }
    else if (iNarrativaM > 5 ) {
      iNarrativaM = 1;
    }
    //background(bgcolor);
    printImage(narrativaM[0],width/500,height/50,width,height);
    printImage(narrativaM[iNarrativaM],width/500,height/50,width,height);
  }

  //iMenu 2 - NARRATIVA B  Samira
  else if (iMenu == 2){
    iNarrativaB += param;
    if (iNarrativaB >= narrativaB.length) {
      iNarrativaB = narrativaB.length-1;
    } else if (iNarrativaB < 0) {
      iNarrativaB = 0;
    }     
    
    if (iNarrativaB != 0){    
      drawBackgroundB();
      //drawSeta();
    }
    printImage(narrativaB[iNarrativaB],width/500,height/500,width,height);

  }
  //iMenu 3 NARRATIVA C Julia
  else if (iMenu == 3){ 
    iNarrativaC += param;
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
     
      printImage(narrativaC[iNarrativaC],width/500,height/500,width,height);    
  }
  
  // iMenu 4 - NARRATIVA D -  Bernardo
  else if (iMenu == 4){ 
    iNarrativaD += param;
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
       printImage(narrativaD[iNarrativaD],width/500,height/500,width,height);
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
       printImage(narrativaE[iNarrativaE],width/500,height/500,width,height);  
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
       printImage(narrativaF[iNarrativaF],width/500,height/500,width,height);
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
