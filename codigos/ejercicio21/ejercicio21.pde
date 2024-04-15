PVector puntoA, puntoB, puntoC, puntoD;
int anchoEscalon=60;
int altoEscalon=60;

public void setup(){
  size(500,500);
  background(#ADABB4);
  puntoA= new PVector(0, altoEscalon);  
  
  while (puntoA.y < height){
    dibujarEscalones();
    actualizarCoordenadas();
  }
}

public void dibujarEscalones(){
    strokeWeight(3);
    stroke(#20A8E5); //linea color azul
    puntoB=new PVector(puntoA.x+anchoEscalon, puntoA.y);
    line(puntoA.x, puntoA.y, puntoB.x, puntoB.y);
    puntoC= new PVector(puntoB.x, puntoB.y+altoEscalon);
    line(puntoB.x, puntoB.y, puntoC.x, puntoC.y);
    dibujarPuntos();
}

public void dibujarPuntos(){
  strokeWeight(9.5);
  stroke(#FC0522); //punto color rojo
  puntoD= new PVector(puntoA.x+anchoEscalon, puntoA.y-10);
  point(puntoD.x, puntoD.y);
  
}
public void actualizarCoordenadas(){
  puntoA.x=puntoC.x;
  puntoA.y=puntoC.y;
}
