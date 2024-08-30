import 'dart:io';

void main() {
  // Prompt the user to enter three numbers
  print('Enter the first number:');
  String? input1 = stdin.readLineSync();
  
  print('Enter the second number:');
  String? input2 = stdin.readLineSync();
  
  print('Enter the third number:');
  String? input3 = stdin.readLineSync();
  
  // Check if inputs are not null and not empty
  if (input1 != null && input1.isNotEmpty &&
      input2 != null && input2.isNotEmpty &&
      input3 != null && input3.isNotEmpty) {
    
    // Check if inputs contain only digits
    bool isNumeric1 = RegExp(r'^-?\d+$').hasMatch(input1);
    bool isNumeric2 = RegExp(r'^-?\d+$').hasMatch(input2);
    bool isNumeric3 = RegExp(r'^-?\d+$').hasMatch(input3);
    
    if (isNumeric1 && isNumeric2 && isNumeric3) {
      // Convert the inputs to integers
      int number1 = int.parse(input1);
      int number2 = int.parse(input2);
      int number3 = int.parse(input3);
      
      // Find the largest number
      int largest = number1;
      
      if (number2 > largest) {
        largest = number2;
      }
      
      if (number3 > largest) {
        largest = number3;
      }
      
      // Output the largest number
      print('The largest number is $largest.');
    } else {
      print('Invalid input. Please enter valid integers.');
    }
  } else {
    print('No input provided.');
  }
}