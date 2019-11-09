import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class BubbleSortBlackWhite extends PApplet {

int i = 0;
float[] values;
int[] colRed = {255, 0, 0};
int[] colBlack = {0, 0, 0};
int[] colWhite = {255, 255, 255};
int[] colGrey = {250, 250, 250};

public void setup() {
  
  background(0);
  values = new float[width];
  stroke(colWhite[0], colWhite[1], colWhite[2]);
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
    line(i, height, i, height-values[i]);
  }
}

public void draw() {
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

public void swap(float[] array, int i, int j) {
  printLine(i, j, array[i], array[j], colBlack);
  float temp = array[i];
  array[i] = array[j];
  array[j] = temp;
  printLine(i, j, array[i], array[j], colWhite);
}

public void printLine(int idx1, int idx2, float value1, float value2, int[] col) {
  stroke(col[0], col[1], col[2]);
  line(idx1, height, idx1, height-value1);
  line(idx2, height, idx2, height-value2);
}
  public void settings() {  size(800, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "BubbleSortBlackWhite" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
