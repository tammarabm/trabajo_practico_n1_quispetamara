PVector posicionLink;
PVector posicionTesoro;
float distancia, catetoA, catetoB;

public void setup(){
  size(500,500);
  posicionLink= new PVector (100,400);
  posicionTesoro= new PVector (width/2,height/2);
}
public void draw(){
  background(0);
  fill(#3ED371);
  dibujarLink();
  posicionLink.x=mouseX;
  posicionLink.y=mouseY;
  fill(#E5CA2A);
  distanciaLinkTesoro();
}
public void dibujarLink(){
  circle(posicionLink.x, posicionLink.y, 50);
}
public void dibujarTesoro(){
  rectMode(CENTER);
  rect(posicionTesoro.x,posicionTesoro.y,100,50);
}
public float calcularDistancia(){
  distancia=0;
  catetoA= posicionTesoro.y - posicionLink.y ;
  catetoB= posicionTesoro.x - posicionLink.x;
  distancia= pow((pow(catetoA, 2)+pow(catetoB,2)), 0.5);
  return distancia; 
}
public void distanciaLinkTesoro(){
  if (calcularDistancia() < 110){
    //Desaparece el tesoro
  }
  else{
    dibujarTesoro();
  }
}
