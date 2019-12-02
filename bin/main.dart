// Write a function that takes an array of unordered integers and logs percentile
// values at 25%, 50%, 75%, 90%, 95%, 99% and 100%

// For example, given the list [8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2] it should log the following:
//  25% of the numbers are less than or equal to 3
//  50% of the numbers are less than or equal to 8
//  75% of the numbers are less than or equal to 16
//  90% of the numbers are less than or equal to 20
//  95% of the numbers are less than or equal to 22
//  99% of the numbers are less than or equal to 22
//  100% of the numbers are less than or equal to 22


Map percentOfNumbers(int percent, List <int>inputList) {
  Map temp = {};
  int numberOfIntegers = (inputList.length * (percent / 100)).ceil();
  temp[percent] =(inputList[numberOfIntegers - 1]) ;
  
  return temp;
}

List <Map> logsPercentile(List<int> inputList){
  inputList.sort();
  List <int> percentages = [25, 50, 75, 90, 95, 99, 100];
  List <Map> outputList =[];

  for (int percent in percentages){
    outputList.add(calculateNPercentOfIntegers(percent, inputList));
  }
 
  for(var item in outputList){
    print("${item.keys}% of the numbers are less than or equal to ${item.values}");
  }

  return outputList;
}

main() {
  print(logsPercentile([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]));
}
