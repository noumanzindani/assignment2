import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');

  // Read the input from the user
  String? input = stdin.readLineSync();

  // Check if the input is not null and not empty
  if (input != null && input.isNotEmpty) {
    // Check if the input contains only digits
    bool isNumeric = RegExp(r'^-?\d+$').hasMatch(input);

    if (isNumeric) {
      // Convert the input to an integer
      int number = int.parse(input);

      // Check if the number is divisible by both 5 and 11
      if (number % 5 == 0 && number % 11 == 0) {
        print('The number $number is divisible by both 5 and 11.');
      } else {
        print('The number $number is not divisible by both 5 and 11.');
      }
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('No input provided.');
  }
}
