// 3.7 + parametre
void setup () {
  //int result = calcul (57);
  //println(result);
  println(calcul(100));
}

int calcul (int n) {
  int s = 0; // Somme totale
  int i = 0; // incrément
  while (i < n) {
    i = i+1;
    s = s + i;
  }
  return s;
}
