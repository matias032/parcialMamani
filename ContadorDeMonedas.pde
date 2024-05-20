class ContadorDeMonedas {
  int contador;
  //incrementar el contador
  public void incrementar() {
    contador++;
  }
  //mostras el contador en pantalla
  public void display() {
    fill(#3965E3);
    textSize(35);
    text("Monedas: " + contador, 10, 25);
  }
}
