class Player extends GameObject
{
  Player(String image, Vector2 initPos)
  {
    super(image, initPos);
  }

  void ProcessInput() {
    if (keyPressed) {
        // esta seccion genera el movimiento hacia delante dependiendo del angulo en el que este la nave
        if (key == 'w'|| key == 'W') {          
            println(transform.rotation);
            float angleInRadians = radians(transform.rotation - 90); // pasamos los valores a radianes
            Vector2 forward = new Vector2(cos(angleInRadians), sin(angleInRadians)); 
            println(forward.x + " " + forward.y);
            transform.Translate(forward);
        }
        // Rotación a la izquierda
        if (key == 'a' || key == 'A') {
            transform.Rotate(-4); // Ajustas la velocidad con la que rota aqui
        }
        // Rotación a la derecha
        if (key == 'd' || key == 'D') {
            transform.Rotate(4); 
        }
        
        }
      if (key == ' ') { // Disparas con la tecla space
        bullets.add(new Bullet("small.png", new Vector2(transform.position.x, transform.position.y), transform.rotation));
      }
    }
}


            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            


 
