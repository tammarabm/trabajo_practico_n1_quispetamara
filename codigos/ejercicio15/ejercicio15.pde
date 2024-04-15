float numero1, numero2, suma, resta, multiplicacion, division; 

public void setup(){
  numero1=44;
  numero2=7.5;
  sumarNumeros();
  restarNumeros();
  multiplicarNumeros();
  dividirNumeros();
}
public void sumarNumeros(){
  suma=numero1+numero2;
  println("La suma de estos dos números es: "+ suma);
}
public void restarNumeros(){
  resta=numero1-numero2;
  println("La resta de estos dos números es: "+ resta);
}
public void multiplicarNumeros(){
  multiplicacion=numero1*numero2;
  println("La multiplicación de estos dos números es: "+ multiplicacion);
}
public void dividirNumeros(){
  if (numero2==0){
      println("No se puede dividir por cero");
  }
  else{
      division=numero1/numero2;
      println("La division de estos dos números es: "+ division);
  }
}
