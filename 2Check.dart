import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');

  // Read the input from the user
  String? input = stdin.readLineSync();

  // Check if the input is not null and is a valid integer
  if (input != null && input.isNotEmpty) {
    // Convert the input to an integer
    int number = int.parse(input);

    // Check if the number is even or odd
    if (number % 2 == 0) {
      print('The number $number is even.');
    } else {
      print('The number $number is odd.');
    }
  } else {
    print('Invalid input. Please enter a valid integer.');
  }
  print("ok");
}
