class Circulo extends GameObject{
  private int diametro;
  private color miColor;
  private PVector velocidad;
  
//CONSTRUCTOR
  public Circulo(PVector posicion, int diametro, color miColor, PVector velocidad){
    super(posicion);
    this.diametro = diametro;
    this.miColor = miColor;
    this.velocidad = velocidad;
  }
  
//METODOS
  public void dibujar(){
    fill(this.miColor);
    circle(this.posicion.x, this.posicion.y, this.diametro);
  }
  public void mover(float deltaTime){
    this.posicion.x += this.velocidad.x * deltaTime;
    this.posicion.y += this.velocidad.y * deltaTime;
  }
  public void validarRebote(){
    if(this.posicion.x > width - this.diametro/2 || this.posicion.x < 0 + this.diametro/2){
      this.velocidad.x *= -1;
    }
    if(this.posicion.y > height - this.diametro/2 || this.posicion.y < 0 + this.diametro/2){
      this.velocidad.y *= -1;
    }
  }
}
