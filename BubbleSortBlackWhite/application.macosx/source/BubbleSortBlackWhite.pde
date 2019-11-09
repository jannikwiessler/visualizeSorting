int i = 0;
float[] values;
int[] colRed = {255, 0, 0};
int[] colBlack = {0, 0, 0};
int[] colWhite = {255, 255, 255};
int[] colGrey = {250, 250, 250};

void setup() {
  size(800, 400);
  background(0);
  values = new float[width];
  stroke(colWhite[0], colWhite[1], colWhite[2]);
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
    line(i, height, i, height-values[i]);
  }
}

void draw() {
  for (int j = 0; j < values.length-i-1; j++) {
    //printLine(j, j+1, values[j], values[j+1], colRed);
    if (values[j]>values[j+1]) {
      swap(values, j, j+1);
    }
  }
  
  i++;
  if(i <= values.length){
    stroke(colGrey[0], colGrey[1], colGrey[2]);
    line(values.length-i, height, values.length-i, height-values[values.length-i]);
  }
}

void swap(float[] array, int i, int j) {
  printLine(i, j, array[i], array[j], colBlack);
  float temp = array[i];
  array[i] = array[j];
  array[j] = temp;
  printLine(i, j, array[i], array[j], colWhite);
}

void printLine(int idx1, int idx2, float value1, float value2, int[] col) {
  stroke(col[0], col[1], col[2]);
  line(idx1, height, idx1, height-value1);
  line(idx2, height, idx2, height-value2);
}
