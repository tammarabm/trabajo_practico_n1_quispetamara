String consola = "Ingrese su nombre: "; 
String mensajeSaludo="";
String nombreUsuario="";

void setup (){
 size(500, 500); 
 println(consola); //Muestra lo que contiene la variable en la consola
}
void draw(){
  background(#DCF523); //color del fondo
  text(mensajeSaludo, 90, 250); //Muestra el mensaje de saludo en la pantalla en esa posición 
  textSize(50); //tamaño de la letra
} 
void keyPressed(){
  
  if (key!='\n'){ //Si key es distinto que el ENTER
    nombreUsuario += key; //cada letra que presionemos se guardará en esta variable
    println(nombreUsuario); //Muestra en la consola las letras que vamos presionando
  }
  else { //Si presionamos el ENTER
    mensajeSaludo= "Buen día " + nombreUsuario;
    println(mensajeSaludo); //Muestra el mensaje saludo en la pantalla
    nombreUsuario=""; //el nombre se "borrará", quedará vacia la variable
    setup(); //vuelve a la función setup y se pedirá otra vez un nombre
  }
}
