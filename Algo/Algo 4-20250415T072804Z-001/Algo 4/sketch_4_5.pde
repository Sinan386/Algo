int[][] board;
int x = 0;               // compteur pour les mines posées
int testLigne = 1;       // y à tester
int testColonne = 2;     // x à tester

void setup() {
  initboard(10, 10, 5);
  displayboard();
  // On affiche directement le résultat de isamine()
  println(
    isamine(testLigne, testColonne)
    ? "Case minée"
    : "Pas de mine"
    );
}

void initboard(int lignes, int colonnes, int nbre_mines) {
  board = new int[lignes][colonnes];
  x = 0;  // remise à zéro du compteur

  while (x < nbre_mines) {
    int y = int(random(lignes));     // ligne aléatoire
    int col = int(random(colonnes)); // colonne aléatoire
    if (board[y][col] != 99) {
      board[y][col] = 99; // place une mine
      x++;
    }
  }
}

void displayboard() {
  for (int i = 0; i < board.length; i++) {
    for (int j = 0; j < board[i].length; j++) {
      if (board[i][j] == 99) {
        print("X ");
      } else {
        print(board[i][j] + " ");
      }
    }
    println();
  }
}

boolean isamine(int y, int x) { // Vérifie les mines en Y et X
  if (board[y][x] == 99) {
    return true;
  } else {
    return false;
  }
}

int getmines(int y, int x) {
  int compte = 0;

  for (int i = y - 1; i <= y + 1; i++) {
    for (int j = x - 1; j <= x + 1; j++) {
      // 1) On vérifie qu’on reste dans la grille
      if (i >= 0 && i < board.length &&
          j >= 0 && j < board[i].length) {
        // 2) On ignore la case centrale
        if (i == y && j == x) continue;
        // 3) On compte si c’est une mine
        if (isamine(i, j)) {
          compte++;
        }
      }
    }
  }

  return compte;  // Un seul return, plus de doublon
}
