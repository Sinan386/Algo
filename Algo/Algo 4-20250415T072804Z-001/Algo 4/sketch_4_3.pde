int[] board;
int x = 0;  // compteur pour les mines posées

void setup() {
  initboard(10, 3); // Initialise le tableau de 10 cases et y place 3 mines
  
}

void initboard(int nbre_ligne, int nbre_mine) {
  board = new int[nbre_ligne];  // Création d'un tableau de la taille indiquée
  
  // Tant que le nombre de mines posées (x) est inférieur 
  while (x < nbre_mine) {
    int pose_mine = int(random(nbre_ligne)); 
    
    // Vérifie s'il n'y a pas déjà une mine à cette position
    if (board[pose_mine] != 99) {  
      board[pose_mine] = 99; // Place une mine
      x++;                 // Incrémente le compteur de mines posées
    }
    // Si la case contient déjà une mine (== 99), on ne fait rien et la boucle recommence
  }
  
  // Affiche le contenu du tableau
  println(board);
}
