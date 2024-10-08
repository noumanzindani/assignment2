import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');

  // Read the input from the user
  String? input = stdin.readLineSync();

  // Check if the input is not null and not empty
  if (input != null && input.isNotEmpty) {
    // Check if the input contains only digits (and possibly a negative sign)
    bool isNumeric = RegExp(r'^-?\d+$').hasMatch(input);

    if (isNumeric) {
      // Convert the input to an integer
      int number = int.parse(input);

      // Check if the number is positive, negative, or zero
      if (number > 0) {
        print('The number $number is positive.');
      } else if (number < 0) {
        print('The number $number is negative.');
      } else {
        print('The number $number is zero.');
      }
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('No input provided.');
  }
}
