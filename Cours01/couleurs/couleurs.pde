float rapport=16./9.;
int largeur, hauteur;
int rouge=127;
int vert=127;
int bleu=127;

int gd=25;
int pt=15;

boolean hsb = false;

void setup() {
  size(800, 450);
  largeur=width;
  hauteur=height;
}

void draw() {
  if(hsb) colorMode(HSB); else colorMode(RGB);
  
  background(rouge,vert,bleu);
  textAlign(CENTER);
  fill(0);
  rouge=constrain(rouge,0,255);
  vert=constrain(vert,0,255);
  bleu=constrain(bleu,0,255);

  if (mousePressed){
      if (dist(mouseX,mouseY,largeur*1/4,hauteur*3/4)<gd/2) rouge++;
      if (dist(mouseX,mouseY,largeur*1/4,hauteur*9/10)<pt/2) rouge--;
      if (dist(mouseX,mouseY,largeur*2/4,hauteur*3/4)<gd/2) vert++;
      if (dist(mouseX,mouseY,largeur*2/4,hauteur*9/10)<pt/2) vert--;
      if (dist(mouseX,mouseY,largeur*3/4,hauteur*3/4)<gd/2) bleu++;
      if (dist(mouseX,mouseY,largeur*3/4,hauteur*9/10)<pt/2) bleu--;
  }
  etiquette(1);
  etiquette(2);
  etiquette(3);
  plus();
  moins();
  fill(0); 
  text(rouge, largeur*1/4,hauteur*2/3);
  text(vert, largeur*2/4,hauteur*2/3);
  text(bleu, largeur*3/4,hauteur*2/3);
}

void plus()
{
  if(hsb) fill(rouge, 255, 255); else fill(255,0,0);
  ellipse(largeur*1/4.,hauteur*3/4.,25.,25.);
  if(hsb) fill(vert); else fill(0,255,0);
  ellipse(largeur*2/4.,hauteur*3/4.,25.,25.);
  if(hsb) fill(bleu); else fill(0,0,255);
  ellipse(largeur*3/4.,hauteur*3/4.,25.,25.);
}

void moins()
{
  if(hsb) fill(rouge, 255, 255); else fill(255,0,0);
  ellipse(largeur*1/4.,hauteur*9/10.,15.,15.);
  if(hsb) fill(vert); else fill(0,255,0);
  ellipse(largeur*2/4.,hauteur*9/10.,15.,15.);
  if(hsb) fill(bleu); else fill(0,0,255);
  ellipse(largeur*3/4.,hauteur*9/10.,15.,15.);
}

void etiquette(int i)
{
  fill(255);
  rect(largeur*i/4.-15,hauteur*2/3-15,30.,20.,5);
}

void keyPressed() {
  hsb = !hsb;
}