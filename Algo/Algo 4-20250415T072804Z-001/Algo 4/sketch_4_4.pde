int[] board;
int x = 0;  // compteur pour les mines posées
int position = 3;  // position qu'on veut tester

void setup() {
  initboard(10, 3); // Initialise un tableau de 10 cases avec 3 mines
  isamine(position); // Vérifie si la case est une mine


  tableauX(); // Affiche le tableau avec X et 0
}

// Fonction pour initialiser le tableau
void initboard(int nbre_ligne, int nbre_mine) {
  board = new int[nbre_ligne];

  while (x < nbre_mine) {
    int pose_mine = int(random(nbre_ligne));
    if (board[pose_mine] != 99) {
      board[pose_mine] = 99;
      x++;
    }
  }

  println("Contenu du Tableau : ");
  println(board);
}

// Vérifie si la case est une mine
void isamine(int position) {
  if (board[position] == 99) {
    println("Case minée");
  } else {
    println("Pas de mine");
  }
}

// Vérifie les cases adjacentes et retourne un code
int getmines(int position) {
  boolean gauche = position > 0 && board[position - 1] == 99;
  boolean droite = position < board.length - 1 && board[position + 1] == 99;

  if (gauche && droite) {
    
    return 2;
  } else if (gauche) {
    
    return 1;
  } else if (droite) {
    
    return 1;
  } else {
    
    return 0;
  }
}

// Tableau avec les mines adjacentes
void tableauX() {
  for (int i = 0; i < board.length; i++) {
    if (board[i] == 99) {
      print("X ");
    } else {
      int nb_adj = getmines(i);
      print(nb_adj + " ");
    }
  }
  println(); // saut de ligne après l'affichage
}
