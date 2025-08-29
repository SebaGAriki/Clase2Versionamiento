private Circulo miCirculo;
private Cuadrado miCuadrado;
private int tiempoAnterior;

public void setup(){
  size(400, 400);
  miCirculo = new Circulo(new PVector(width/4, height/2), 50, color(190, 0, 0), new PVector(150, 100));
  miCuadrado = new Cuadrado(new PVector(width/2, height/2), 100, color(0, 0, 190));
  tiempoAnterior = millis();
}

public void draw(){
//DELTATIME
  int tiempoActual = millis();
  float deltaTime = (tiempoActual - tiempoAnterior) / 1000.0;
  tiempoAnterior = tiempoActual;
  
  background(210);
  miCuadrado.dibujar();
  miCirculo.dibujar();
  miCirculo.validarRebote();
  miCirculo.mover(deltaTime);
}
