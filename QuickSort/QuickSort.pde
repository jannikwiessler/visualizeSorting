
/* 
2019-11-10
Jannik Wiessler
ToDo's:
---------------------------------------------
because of recursion "too fast to print"
there is only one loop of the draw() fcn.
need help more efforts to visualize this one 
---------------------------------------------
*/

int i = 0;
float[] values;
int[] colRed = {255, 0, 0};
int[] colBlack = {0, 0, 0};
int[] colWhite = {255, 255, 255};
int[] colGrey = {250, 250, 250};
int mode = 1;


void setup() {
  size(400, 200);
  background(0);
  values = new float[width];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
  }
  stroke(colWhite[0], colWhite[1], colWhite[2]);
  for (int i = 0; i < values.length; i++) {
    line(i, height, i, height-values[i]);
  }
i = 0;
//quickSort(values, 0, values.length-1);
}

void draw() {
  if(mode==1){
    quickSort(values, 0, values.length-1);
  }
  mode = 0;
}

void quickSort(float[] array, int startIdx, int endIdx){
  background(0);
  stroke(colWhite[0], colWhite[1], colWhite[2]);
  for (i = 0; i < values.length; i++) {
    line(i, height, i, height-array[i]);    
  }
  if(startIdx >= endIdx) return;
  int index = partition(array, startIdx, endIdx);
  quickSort(array, startIdx, index-1);
  quickSort(array, index+1, endIdx);
}

int partition(float[] array, int startIdx, int endIdx){
  int pivotIdx = startIdx;
  float pivotValue = array[endIdx];
  for(int i = startIdx; i < endIdx; i++){
    if(array[i] < pivotValue){
      swap(array, i, pivotIdx);
      pivotIdx++;
    }
  }
  swap(array, pivotIdx, endIdx);
  return pivotIdx;
}

void swap(float[] array, int i, int j) {
  float temp = array[i];
  array[i] = array[j];
  array[j] = temp;
  background(0);
  stroke(colWhite[0], colWhite[1], colWhite[2]);
  for (i = 0; i < values.length; i++) {
    line(i, height, i, height-array[i]);    
  }
  //delay(5);
}

/*void drawtest(int i){
  delay(1000);
  background(0);
  line(i, height, i, height-i);
}*/
