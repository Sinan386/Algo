// 3.8 syracuse
void setup () {
  syracuse(14); // Parametre que l'on peux modifier
}
void syracuse (int n) {
  while (n !=1) {
    print(n+">");
    if (n % 2 == 0){ // détermine si le chiffre est paire
      n = n/2;
  } else {
  n = n * 3 + 1; // n est impaire
}
}
print(n);
}
