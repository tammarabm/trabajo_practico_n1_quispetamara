PVector posicionLinea;
int anchoEllipse, altoEllipse;
int distancia;
int incremento =1;
public void setup(){
  size(500,500);
  anchoEllipse=80;
  altoEllipse=80;
  distancia=40;
  posicionLinea= new PVector(0,0);
}
public void draw(){
  background(0);
  //Dibujar la linea
  stroke(#22E023);
  line(posicionLinea.x, posicionLinea.y, width, posicionLinea.y);
  //Dibujar el ellipse
  fill(#22E023);
  ellipse(width/2, posicionLinea.y-distancia, anchoEllipse,altoEllipse);
  posicionLinea.y+=incremento; //Va aumentando de 1 en 1 hasta superar o igualar la posición de la altura del lienzo.
  if (posicionLinea.y >=height || posicionLinea.y <=0){
      incremento*=-1; //Va disminuyendo de 1 en 1
      distancia*=-1; //La distancia entre la linea y el elipse ahora se invierte y se dirige hacia arriba.
  }
}
