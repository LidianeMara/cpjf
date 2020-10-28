/*  FONTES  */
PFont p, p1, p2, p3;

/*  IMAGENS    */
float timer = 0.0;
PImage[] photos = new PImage[5];

PImage maoDireita;
PImage maoEsquerda;


int backgroundIndex = 0;
boolean auto = true;
void setup() {
  size(displayHeight, displayWidth);
  background(253,245,232);
  frameRate(10);
  
  photos[0] = requestImage("A001.png");
  photos[1] = requestImage("A002.png");
  photos[2] = requestImage("A003.png");
  photos[3] = requestImage("A004.png");
  photos[4] = requestImage("A005.png");
  
  maoDireita = loadImage("A006_maoDireita.png");
  maoEsquerda = loadImage("A007_maoEsquerda.png");
}
void draw () {
  stroke(36,46,54);
  fill(36,46,54);
  rect(0,0,width,340);
  fill(253,245,232);
  fill(253,245,232);
  p = createFont("IBMPlexMono-Medium.ttf", 40);
  textFont(p);
  text("Aqui você pode trilhar alguns dos diferentes", width/50, 120);
  fill(253,245,232);
  rectMode(CENTER);
  text("caminhos de um processo judicial na Justiça", width/50, 170);
  fill(253,245,232);
  rectMode(CENTER);
  text("Federal. As histórias são ilustrativas e os", width/50, 210);
  fill(253,245,232);
  rectMode(CENTER);
  text("personagens fictícios.", width/50, 260);  
  menuPrincipal();
  drawDots();
  drawPrevNext();
  textFooter(height/5);
}

void menuPrincipal() {

  timer= timer + (1.0/10.0);
  if (timer > 2)
  {
    backgroundIndex= backgroundIndex + 1;
    timer= 0;
  }
  if (backgroundIndex >= photos.length)
  {
    backgroundIndex= 0;
  }
  if (photos[backgroundIndex].width > 0)
  {
    printImage(photos[backgroundIndex],width/100,height/100,width,height);
  } 
}

void printImage(PImage photo, float X, float Y, float W, float H)
{
  if (photo.width > 0)
  {
    image(photo,X,Y,W,H);
  }
}
void drawPrevNext(){
image(maoDireita, 50, 900, 75, 75);
image(maoEsquerda, width*0.9,900, 75, 75);
}
void drawDots(){
  int offset = width/2 - (photos.length * 20 )/2;
  for( int i = 0; i < photos.length; i++){
      if( backgroundIndex == i)   fill( 150 );
      else              fill( 225 );
      ellipse(i*20 + offset + 10, height-10, 10, 10);
  }
}

void textFooter(float y) {
  p2 = createFont("IBMPlexMono-Light.ttf", 97);
  textFont(p2);
  fill(223, 215, 202);
  text("PROCESSO", -140, y*4.05);
  p3 = createFont("IBMPlexMono-SemiBold.ttf", 68);
  textFont(p3);
  fill(223, 215, 202);
  text("AUTOR", 350, y*4.05);
  fill(223, 215, 202);
  p2 = createFont("IBMPlexMono-Light.ttf", 97);
  textFont(p2);
  text("DEMOCRACIA", width/2, y*4.05);
  fill(223, 215, 202);
  p1 = createFont("IBMPlexMono-Bold.ttf", 97);
  textFont(p1);
  text("JUSTIÇA", -205, y*4.75);
  fill(223, 215, 202);
  p2 = createFont("IBMPlexMono-Light.ttf", 57);
  textFont(p2);
  text("RÉU", 250, y*4.75);
  fill(223, 215, 202);
  p1 = createFont("IBMPlexMono-Bold.ttf", 203);
  textFont(p1);
  text("DIREITO", width/2, y*4.75);
  fill(223, 215, 202);
}

void mouseMoved(){
  //handle cursor pointer effects
  if( mouseX < 10 || mouseX > width-10 || mouseY > 300) cursor(HAND);  
  else                                                  cursor(ARROW);
}

void mousePressed(){
  auto = false;
  //handle prev / next
  if( mouseX < 10 || mouseX > width-10){
    if( mouseX < 10) backgroundIndex = backgroundIndex>0?backgroundIndex-1:2;
    else             backgroundIndex = backgroundIndex<2?backgroundIndex+1:0;
  }
  else if(mouseY > 300){
    // calculate index position of chosen ball
    int idxOffset = floor((10+mouseX-(width/2))/20);
    //console.log(idxOffset);
    int newIdx = 1 + idxOffset;
    if( newIdx < 0) newIdx = 0;
    if( newIdx > photos.length-1) newIdx = photos.length-1;
    backgroundIndex = newIdx;   
  }
}
