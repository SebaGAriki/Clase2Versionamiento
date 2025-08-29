private Circulo miCirculo;
private int tiempoAnterior;

public void setup(){
  size(400, 400);
  miCirculo = new Circulo(new PVector(width/4, height/2), 50, color(190, 0, 0), new PVector(150, 100)); 
  tiempoAnterior = millis();
}

public void draw(){
//DELTATIME
  int tiempoActual = millis();
  float deltaTime = (tiempoActual - tiempoAnterior) / 1000.0;
  tiempoAnterior = tiempoActual;
  
  background(210);
  miCirculo.dibujar();
  miCirculo.mover(deltaTime);
}
