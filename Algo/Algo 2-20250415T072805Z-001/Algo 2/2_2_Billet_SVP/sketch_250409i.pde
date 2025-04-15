float i = 10.50; // Tarif d'un billet

float calculPrix(int x) {
  float total = i * x ; // Prix Total
  return total;
}

void setup () {
  float total = calculPrix(4) + calculPrix(9);
  println("Le total encaissé est de: " + total);
}
