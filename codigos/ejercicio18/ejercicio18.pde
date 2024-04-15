float a, b, c, x1, x2, resultadoRaiz1, resultadoRaiz2, discriminante;
int opcion;
String mensajeDiscriminante;
public void setup(){
  a=1;
  b=-5;
  c=6;
  println("a: "+a);
  println("b: "+b);
  println("c: "+c);
  calcularRaices();
  analizarDiscriminante();
}
public void calcularRaices(){
  x1=(-b + (pow((pow(b,2)-4*a*c), (0.5)))) /(2*a);
  x2=(-b - (pow((pow(b,2)-4*a*c), (0.5)))) /(2*a); 
  resultadoRaiz1= x1;
  resultadoRaiz2= x2;
  
  println("Primera Raiz: ", resultadoRaiz1);
  println("Segunda Raiz: ", resultadoRaiz2);
}
public void analizarDiscriminante(){
  discriminante= pow(b, 2) - 4*a*c;
  if (discriminante > 0){
    opcion=1;  
  }
  else if (discriminante==0){
    opcion=2;  
  }
  else if (discriminante < 0){
    opcion=3;
  }
  switch (opcion){
    case 1:
      mensajeDiscriminante="Son dos raíces reales diferentes";
      break;
    case 2:
      mensajeDiscriminante="Son dos raíces reales iguales";
      break; 
    case 3: 
      mensajeDiscriminante="Son dos raíces complejas diferentes"; 
      break;
    default:
      mensajeDiscriminante= "ERROR";
      break;
  }
  println(mensajeDiscriminante);
}
