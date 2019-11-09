int[] colWhite = {255, 255, 255};
int[] colBlack = {0, 0, 0};
int[] colors;  
int i = 0;

void setup(){
size(1200, 70);
  background(0);
  colors = new int[width];
  for (int i = 0; i < colors.length; i++) {
    colors[i] = int(random(255));
    stroke(colors[i], 0, 20);
    line(i, height, i, 0);
  }
}

void draw(){

  for (int j = 0; j < colors.length-i-1; j++) {
    if (colors[j]>colors[j+1]) {
      swap(colors, j, j+1);
    }
  }
  
  i++;
 
}

void swap(int[] array, int i, int j) {
  printLine(i, j, array[i], array[j]);
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
  printLine(i, j, array[i], array[j]);
}


void printLine(int idx1, int idx2, int value1, int value2) {
  stroke(value1, 0, 20);
  line(idx1, height, idx1, 0);
  stroke(value2, 0, 20);
  line(idx2, height, idx2, 0);
}
