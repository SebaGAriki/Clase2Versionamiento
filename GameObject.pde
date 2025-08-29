abstract class GameObject{
  protected PVector posicion;
  protected PImage sprite;
  
  protected GameObject(PVector posicion) {
    this.posicion = posicion;
  }
  abstract void dibujar();
}
