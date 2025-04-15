void setup () {
  int [] board =new int [6];
  board[0]=7;
  board[1]=2;
  board[2]=9;
  board[3]=10;
  board[4]=1;
  board[5]=-4;
  println(board);
  println(board.length);
  getmax(board);
  getsum(board);
  getmean(board);
}

void getmax (int[] b) {
  int max = b[0];
  for (int i = 1; i < b.length; i++){
    if (b[i] > max) {
      max = b [i];
    }
  }
  println("la plus grande valeur est : "+max);
}

void getsum (int[]b) {
  int sum = 0;
  for (int i = 0; i<b.length; i++) {
    sum = sum + b[i];
  }
  println ("la somme total est : "+sum);
}

void getmean(int[] b) {
  int sum = 0; // ← on initialise sum ici pour pouvoir additionner toutes les valeurs

  for (int i = 0; i < b.length; i++) {
    sum += b[i]; // on accumule la somme
  }

  float mean = (float) sum / b.length; // on calcule la moyenne
  println("La moyenne est : " + mean);
}

  
  
