void main() {
  //Student Data
  num bio = 83;
  num chemistry = 85;
  num physics = 66;
  num urdu = 85;
  num english = 87;
  //Logical
  var totalObtainnumber = bio + chemistry + physics + urdu + english;
  var totalNumber = 500;
  var percantage = (totalObtainnumber / totalNumber) * (100);
  //Alagorathem
  print(percantage);
  if (percantage <= 50) {
    print("Failed");
  } else if (percantage >= 80) {
    print("A+");
  }
  else if (percantage >= 70) {
    print("A");
  }
  else if (percantage >= 60) {
    print("B");
  }
  else if (percantage >= 50) {
    print("C");
  }
   else {
    print("no data");
  }
}
