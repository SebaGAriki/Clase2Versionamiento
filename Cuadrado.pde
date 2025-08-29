class Cuadrado extends GameObject{
  private int tamanio;
  private color miColor;
  
//CONSTRUCTOR
  public Cuadrado(PVector posicion, int tamanio, color miColor){
    super(posicion);
    this.tamanio = tamanio;
    this.miColor = miColor;
  }
  
//METODOS
  public void dibujar(){
    fill(miColor);
    rectMode(CENTER);
    rect(this.posicion.x, this.posicion.y, tamanio, tamanio);
  }
}
