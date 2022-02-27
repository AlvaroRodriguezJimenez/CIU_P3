
PImage Espacio;

PShape Sol;
PImage solImg;
static int solRadius;

PShape Mercurio;
PImage mercurioImg;
static int mercurioRadius;

PShape Venus;
PImage venusImg;
static int venusRadius;

PShape Tierra;
PImage tierraImg;
static int tierraRadius;

PShape Marte;
PImage marteImg;
static int marteRadius;

PShape Jupiter;
PImage jupiterImg;
static int jupiterRadius;

PShape Saturno;
PImage saturnoImg;
static int saturnoRadius;

PShape Urano;
PImage uranoImg;
static int uranoRadius;

PShape Neptuno;
PImage neptunoImg;
static int neptunoRadius;

PShape Luna;
PImage lunaImg;
static int lunaRadius;

PShape Ganimedes;
PImage ganimedesImg;
static int ganimedesRadius;

int distancia;

void setup(){

  size(1700, 1000, P3D);

  Espacio = loadImage("espacio.jpeg");
  solImg = loadImage("sol.jpeg");
  mercurioImg = loadImage("mercurio.jpeg");
  venusImg = loadImage("venus.jpeg");
  tierraImg = loadImage("tierra.jpeg");
  marteImg = loadImage("marte.jpeg");
  jupiterImg = loadImage("jupiter.jpeg");
  saturnoImg = loadImage("saturno.jpeg");
  uranoImg = loadImage("urano.jpeg");
  neptunoImg = loadImage("neptuno.jpeg");
  lunaImg = loadImage("luna.jpeg");
  ganimedesImg = loadImage("ganimede.jpeg");
  
  solRadius = 150;
  beginShape();
  Sol = createShape(SPHERE, solRadius);
  Sol.setStroke(255);
  Sol.setTexture(solImg);
  endShape(CLOSE);
  
  mercurioRadius = 20;
  beginShape();
  Mercurio = createShape(SPHERE, mercurioRadius);
  Mercurio.setStroke(255);
  Mercurio.setTexture(mercurioImg);
  endShape(CLOSE);
  
  venusRadius = 35;
  beginShape();
  Venus = createShape(SPHERE, venusRadius);
  Venus.setStroke(255);
  Venus.setTexture(venusImg);
  endShape(CLOSE);
  
  tierraRadius = 40;
  beginShape();
  Tierra = createShape(SPHERE, tierraRadius);
  Tierra.setStroke(255);
  Tierra.setTexture(tierraImg);
  endShape(CLOSE);
  
  marteRadius = 30;
  beginShape();
  Marte = createShape(SPHERE, marteRadius);
  Marte.setStroke(255);
  Marte.setTexture(marteImg);
  endShape(CLOSE);
  
  jupiterRadius = 90;
  beginShape();
  Jupiter = createShape(SPHERE, jupiterRadius);
  Jupiter.setStroke(255);
  Jupiter.setTexture(jupiterImg);
  endShape(CLOSE);
  
  saturnoRadius = 80;
  beginShape();
  Saturno = createShape(SPHERE, saturnoRadius);
  Saturno.setStroke(255);
  Saturno.setTexture(saturnoImg);
  endShape(CLOSE);
  
  uranoRadius = 50;
  beginShape();
  Urano = createShape(SPHERE, uranoRadius);
  Urano.setStroke(255);
  Urano.setTexture(uranoImg);
  endShape(CLOSE);
  
  neptunoRadius = 50;
  beginShape();
  Neptuno = createShape(SPHERE, uranoRadius);
  Neptuno.setStroke(255);
  Neptuno.setTexture(neptunoImg);
  endShape(CLOSE);
  
  lunaRadius = 10;
  beginShape();
  Luna = createShape(SPHERE, lunaRadius);
  Luna.setStroke(255);
  Luna.setTexture(lunaImg);
  endShape(CLOSE);
  
  ganimedesRadius = 25;
  beginShape();
  Ganimedes = createShape(SPHERE, ganimedesRadius);
  Ganimedes.setStroke(255);
  Ganimedes.setTexture(lunaImg);
  endShape(CLOSE);
  
}

void draw(){
  
  textSize(30);
  
  hint(DISABLE_DEPTH_MASK);
  image(Espacio, 0, 0, width, height);
  hint(ENABLE_DEPTH_MASK);
  
  distancia = 0;
  
  pushMatrix();
  translate(width/2, height/9, -1500);
  
  
  //---------------- SOL ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 500);
  shape(Sol);
  
  rotateY(-PI * frameCount / 500);
  text("SOL", 0, -200);
  
  popMatrix();
  //--------------------------------------
  
  
  //---------------- MERCURIO ----------------
  pushMatrix();
  pointLight(255, 255, 255, 0, 0, 0);
  rotateX(radians(-50));
  rotateY(PI * frameCount / 70);
  distancia += solRadius + mercurioRadius + 40;
  translate(distancia, 0, 0);
  shape(Mercurio);
  
  rotateY(-PI * frameCount / 70);
  text("MERCURIO", 0, -100);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //--------------------------------------------
  
  
  //---------------- VENUS ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 90);
  distancia += mercurioRadius + venusRadius + 60;
  translate(distancia, 0, 0);
  shape(Venus);
  
  rotateY(-PI * frameCount / 90);
  text("VENUS", 0, -100);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //----------------------------------------
  
  
  //---------------- TIERRA ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 130);
  distancia += venusRadius + tierraRadius + 50;
  translate(distancia, 0, 0);
  shape(Tierra);
  
  rotateY(-PI * frameCount / 130);
  text("TIERRA", 0, -100);
  
  //LUNA
  rotateX(radians(45));
  rotateY(PI * frameCount / 70);
  translate(60, 0, 0);
  shape(Luna);
  
  rotateY(-PI * frameCount / 70);
  text("LUNA", 0, -10);
 
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //------------------------------------------
  
  
  //---------------- MARTE ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 200);
  distancia += tierraRadius + marteRadius + 40;
  translate(distancia, 0, 0);
  shape(Marte);
  
  rotateY(-PI * frameCount / 200);
  text("MARTE", 0, -100);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //-----------------------------------------
  
  
  //---------------- JUPITER ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 500);
  distancia += marteRadius + jupiterRadius + 100;
  translate(distancia, 0, 0);
  shape(Jupiter);
  
  rotateY(-PI * frameCount / 500);
  text("JUPITER", 0, -100);
  
  //GANIMEDES
  rotateX(radians(70));
  rotateY(-PI * frameCount / 100);
  translate(200, 0, 0);
  shape(Ganimedes);
  
  rotateY(PI * frameCount / 100);
  text("GANIMEDES", 0, -35);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //-------------------------------------------
  
  
  //---------------- SATURNO ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 700);
  distancia += jupiterRadius + saturnoRadius + 120;
  translate(distancia, 0, 0);
  shape(Saturno);
  
  rotateY(-PI * frameCount / 700);
  text("SATURNO", 0, -100);
  
  //ANILLO
  rotateX(radians(100));
  noFill();
  stroke(166, 125, 91);
  strokeWeight(5);
  ellipse(0, 0, saturnoRadius + 200, saturnoRadius + 200);
  strokeWeight(1);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //-------------------------------------------
  
  
  //---------------- URANO ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 800);
  distancia += saturnoRadius + uranoRadius + 90;
  translate(distancia, 0, 0);
  shape(Urano);
  
  rotateY(-PI * frameCount / 800);
  text("URANO", 0, -100);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //-------------------------------------------
  
  
  //---------------- NEPTUNO ----------------
  pushMatrix();
  rotateX(radians(-50));
  rotateY(PI * frameCount / 900);
  distancia += uranoRadius + neptunoRadius + 100;
  translate(distancia, 0, 0);
  shape(Neptuno);
  
  rotateY(-PI * frameCount / 900);
  text("NEPTUNO", 0, -100);
  
  popMatrix();
  
  //ORBITA
  pushMatrix();
  rotateX(radians(40));
  noFill();
  stroke(50);
  ellipse(0, 0, 2*distancia, 2*distancia);
  popMatrix();
  //-------------------------------------------


  popMatrix();
  
  


}
