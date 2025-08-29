class Circulo extends GameObject{
  private int radio;
  private color miColor;
  
//CONSTRUCTOR
  public Circulo(PVector posicion, int radio, color miColor){
    super(posicion);
    this.radio = radio;
    this.miColor = miColor;
  }
  
//METODOS
  public void dibujar(){
    fill(this.miColor);
    circle(this.posicion.x, this.posicion.y, this.radio);
  }
}
