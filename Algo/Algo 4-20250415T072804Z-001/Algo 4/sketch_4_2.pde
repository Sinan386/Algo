int position = 0; // Départ
int d = 0; // Déplacement total

boolean[] board = {
  false, false, true, false, true, false, false, false
};

void setup() {
  while (position < board.length - 1) {
    go(); // Toto avance ou saute
  }

  println("Toto est arrivé à la fin sans se mouiller !");
}

// Fonction de walk
void walk() {
  position = position + 1;
  d++;
  println("Toto marche à la position : " + position);
}

// Fonction de jump
void jump() {
  position = position + 2;
  d++;
  println("Toto saute à la position : " + position);
}

// Vérifie s’il y a une flaque juste devant
boolean isNearWater() {
  if (position + 1 >= board.length) return false;
  return board[position + 1];
}

// Fonction de décision : marcher ou sauter
void go() {
  if (isNearWater()) {
    jump();
  } else {
    walk();
  }
}
