SpawnerMonedas spawner;
ContadorDeMonedas contador;
ArrayList<Monedas> monedas = new ArrayList<Monedas>();
PImage fondo;

void setup() {
  //tamaño de la pantalla
  size(900, 600);
  //cargar imagen del fondo de pantalla y modificarlo
  fondo = loadImage("fondo.jpg");
  fondo.resize(width, height);  
  //creacion de los objetos de las clases 
  spawner = new SpawnerMonedas(width / 2,15);
  contador = new ContadorDeMonedas();
}

void draw() {
  background(fondo);
  spawner.display();
  //generador de monedas
  spawner.spawnMoneda(monedas);

  int i = monedas.size() - 1;
    while (i >= 0) {
    Monedas moneda = monedas.get(i);
    moneda.update();
    moneda.display();
    if (moneda.y > height) {
        monedas.remove(i);
        contador.incrementar();
    }
    i--;
   }
  contador.display();
}
//joypad de generador de monedas "Usar flechas"
void keyPressed() {
  if (keyCode == LEFT) {
    spawner.mover(-20);
  } else if (keyCode == RIGHT) {
    spawner.mover(20);
  }
}

void keyReleased() {
  if (key == ' ' || key == CODED) {
    spawner.mover(0);
  }
}
