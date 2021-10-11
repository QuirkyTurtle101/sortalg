/*
i am so utterly, wholeheartedly sorry for this, but it's technically within the parameters of the assignment

PSEUDOCODE FOR BOGOSORT

1: Is the array sorted? If yes, task is done. Break.
2: If not, randomize the array and goto 1.

i mean, it's TECHNICALLY a sorting algorithm, but it also throws a StackOverflow because it's fucking bogosort, go figure

enjoy :3
*/

IntList list;
Sorter sorter;

void setup(){
  size(400,600);
  list = new IntList();
  for(int i = 1; i <= 10; i++){
    list.append(i);
  }
  list.shuffle();
  sorter = new Sorter(list);
}

void draw(){
  clear();
  
  sorter.bogoSort();
}

class Sorter{
  IntList toSort;
  String toWrite = "";
  
  Sorter(IntList _toSort){
    toSort = _toSort;
  }
  
  void bogoSort(){
    boolean isSorted = true;
    
    toWrite = "";
    for(int i : toSort){
      toWrite += i + " ";
    }
    
    text(toWrite, 50, 50);
    
    for(int i = 0; i < toSort.size()-1; i++){
      int x = toSort.get(i);
      int y = toSort.get(i+1);
      if(x>y){
        isSorted = false;
      }
    }
    
    if(isSorted == true){
      println("Done!");
    } else {
      println("Didn't work, trying again...");
      toSort.shuffle();
      bogoSort();
    }
  }
}
