ArrayList<GameObject> drawables = new ArrayList<GameObject>();
Player ship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); // aca se pueden almacenar la lista de balas

void setup() {
  size(1024, 768);
  ship = new Player("ship.png", new Vector2(512, 384));
}

void draw() {
  background(0);
  ship.ProcessInput();
  for (int i = bullets.size() - 1; i >= 0; i--) { // esta seccion itera las balas en un orden inverso.
    Bullet bullet = bullets.get(i);
    bullet.Update();
    bullet.Display();
    if (bullet.IsOffScreen()) { // esto elimita todas las balas que salgan de la ventana
      bullets.remove(i);
    }
  }
  for (GameObject go : drawables) {
    go.Display();
  }
}
