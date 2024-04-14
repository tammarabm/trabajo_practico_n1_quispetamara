String nombreUsuario;
String mensajeSaludo;

public void setup(){
  nombreUsuario= "Tamara";
  saludar();
}

public void saludar(){
  mensajeSaludo="Buen día " + nombreUsuario;
  println(mensajeSaludo);

}
