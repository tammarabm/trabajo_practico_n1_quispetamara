PVector lineaA, lineaB, coordenadasCirculo; 
float diametro;
int espacioLineas;
float distancia;

public void setup(){
  size(600,600);
  espacioLineas= height/6;
  diametro=50;
  distancia=10;
  lineaA= new PVector(0, espacioLineas);
  
  do{
  stroke(#4734FF);
  lineaB= new PVector(lineaA.x +width, lineaA.y);
  strokeWeight(4);
  line(lineaA.x, lineaA.y, lineaB.x, lineaB.y);
  coordenadasCirculo= new PVector(width/20, espacioLineas - (diametro/2));
  lineaA.y+=espacioLineas;
  for (float x=coordenadasCirculo.x; x < width; x+=(diametro+distancia)){
    for (float y=coordenadasCirculo.y; y < height; y+=(2*espacioLineas)){
      fill(random(0,255), random(0,255), random(0,255));
      stroke(0);
      strokeWeight(3);
      circle(x, y, diametro); 
    } 
  }
  }while (lineaA.y <= height); }
 
 
  
  
  
