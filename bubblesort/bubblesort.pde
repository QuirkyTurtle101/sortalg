/*
okay, with that shitshow out of the way, let's try something a little more serious

PSEUDOCODE FOR BUBBLE SORT
1: Iterate through the array, comparing each entry to the one before it
2: If you find two entries that should be swapped, swap them.
3: If you make a whole loop through the array without swapping anything, it is sorted.
*/

int[] list = new int[10];

void setup(){
  for(int i = 0; i < 10; i++){
    list[i] = round(random(0,10));
  }
  
  bubbleSort(list);
}

void draw(){
  
}

void bubbleSort(int[] array){
  int n = array.length;
  boolean isNotSorted = true;
  
  for(int output : array){
    print(output + " ");
  }
  
  while(isNotSorted == true){
    isNotSorted = false;
    for(int j = 1; j<n; j++){
      int i = j-1;
      if(array[i]>array[j]){
        int temp = array[j];
        array[j]=array[i];
        array[i]=temp;
        isNotSorted = true;
        println("");
          for(int output : array){
          print(output + " ");
        }
      }
    }
  }
}
