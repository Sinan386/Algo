float i = 10.50; // Tarif d'un billet
int j = 9; // Tarif à partir de 6 personnes

void calculPrix(int x) {
  float total;
  
  if (x >= 6){
    total = j * x; // Prix pour 6 personnes ou plus
}
    else {
    total = i * x; // Prix standard
}
  println("Le tarif pour " + x + "personnes est de: " + total + "euros." );
  
}

void setup () {
  calculPrix(4); // calcul pour 4
  calculPrix(9); // calcul pour 9
}
