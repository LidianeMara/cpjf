PFont p, p1, p2, p3;
void setup() {
  size(displayWidth,displayHeight);
  background(253,245,232);
}
void draw () {
  stroke(36,46,54);
  fill(36,46,54);
  rect(0,0,width,340);
  fill(253,245,232);
  fill(253,245,232);
  rectMode(CENTER);
  p = createFont("IBMPlexMono-Medium.ttf", 40);
  textFont(p);
  text("Aqui você pode trilhar alguns dos diferentes", width/5, 120);
  fill(253,245,232);
  rectMode(CENTER);
  text("caminhos de um processo judicial na Justiça", width/5, 170);
  fill(253,245,232);
  rectMode(CENTER);
  text("Federal. As histórias são ilustrativas e os", width/5, 210);
  fill(253,245,232);
  rectMode(CENTER);
  text("personagens fictícios.", width/5, 260);
  textFooter(height/5);
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
