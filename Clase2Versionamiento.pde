private Circulo miCirculo;

public void setup(){
  size(400, 400);
  miCirculo = new Circulo(new PVector(width/2, height/2), 50, color(190, 0, 0)); 
}

public void draw(){
  background(210);
  miCirculo.dibujar();
}
