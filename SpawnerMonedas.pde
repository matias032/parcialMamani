class SpawnerMonedas {
  float x;
  float y;

  SpawnerMonedas(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void mover(float mov) {
    x += mov;
    x = constrain(x, 0, width);  
  }

  void spawnMoneda(ArrayList<Monedas> monedas) {
    if (frameCount % 70 == 0) {  
      monedas.add(new Monedas(x, y));
    }
  }

  void display() {
  }
  
}
