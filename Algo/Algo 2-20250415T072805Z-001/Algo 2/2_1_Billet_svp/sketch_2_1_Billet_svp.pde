float i = 10.50; // Tarif d'un billet

void calculPrix(int x) {
  float total = i * x ; // Prix Total
  println("Le tarif est de: " + total);
  
}

void setup () {
  calculPrix(4); // calcul pour 4
  calculPrix(9); // calcul pour 9
}
