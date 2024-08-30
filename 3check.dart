import 'dart:io';

void main() {
  // Prompt the user to enter a year
  print('Enter a year:');

  // Read the input from the user
  String? input = stdin.readLineSync();

  // Check if the input is not null and not empty
  if (input != null && input.isNotEmpty) {
    // Check if the input contains only digits
    bool isNumeric = RegExp(r'^\d+$').hasMatch(input);

    if (isNumeric) {
      // Convert the input to an integer
      int year = int.parse(input);

      // Check if the year is a leap year
      if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        print('The year $year is a leap year.');
      } else {
        print('The year $year is not a leap year.');
      }
    } else {
      print('Invalid input. Please enter a valid year.');
    }
  } else {
    print('No input provided.');
  }
}
