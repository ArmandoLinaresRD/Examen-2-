class GameObject { //<>//
  Transform transform = new Transform();
  PImage sprite;

  GameObject() {}

  GameObject(String image, Vector2 initPos) {
    transform.position = initPos;
    sprite = loadImage(image);
    drawables.add(this);
  }

  void Display() {
    imageMode(CENTER);
    pushMatrix(); // esto guarda toda la matriz de transformacion
    translate(transform.position.x, transform.position.y);
    rotate(transform.rotation * (TWO_PI / 360));
    scale(transform.scale.x, transform.scale.y); // se encarga del escalado en ambos ejes
    image(sprite, 0, 0, 50, 50);
    popMatrix(); // Restaura toda la matriz a su forma anterior
  }
}
