class Monedas {
  float x;
  float y;
  float velocidadCaida = 5;
  PImage moneda;

  Monedas(float x, float y) {
    this.x = x;
    this.y = y;
    moneda = loadImage("Moneda.png");
    moneda.resize(70, 70);  
  }
  //resfrecamiento de la posicion de la moneda
  void update() {
    y += velocidadCaida;  
  }
  //mostrar la moneda en pantalla en el centro del lienzo 
  void display() {
    imageMode(CENTER);
    image(moneda, x, y);
  }
}
