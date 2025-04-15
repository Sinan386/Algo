int position = 0; // Départ
int d = 0; // Déplacement total

void setup () {

  // Processing
  go(); // position +1 case N°1
  go(); // position +2 case N°3
  go(); // position +2 case N°5
  go(); // position +2 case N°7

  println("Déplacement total: " + d);

  float moyenne = (float)position/d;
  println(" Moyenne: " + moyenne);
}
// Fonction de walk
void walk () {
  position = position +1;
  d = d + 1;
  println(position, d );
}
// Fonction de jump
void jump () {
  position = position +2;
  d = d + 1;
  println(position, d);
}
// fonction si nous sommes à 1 case de l'eau
boolean isNearWater(int pos){
  if (pos == 1) {
    return true;
  }
  if (pos == 3) {
    return true;
  }
  return false;
}
// Fonction si on walk où jump
void go() {
  if (isNearWater(position)) {
    jump();
  } else {
    walk();
  }
}
