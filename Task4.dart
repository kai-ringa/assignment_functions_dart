import 'dart:io';

// Write a function called divideTwo that takes two numbers as arguments and returns the quotient of those two numbers.

double divideTwo(int a, int b) {
  return a / b;
}

void main() {
  // Check if input is valid
  int getUserInput(String prompt) {
    while (true) {
      stdout.write(prompt);
      String input = stdin.readLineSync()!;
      try {
        return int.parse(input);
      } catch (e) {
        print('Invalid input. Please enter a valid number.');
      }
    }
  }

  // Ask user for the first number
  int firstNumber = getUserInput('Enter the first number: ');

  // Ask user for the second number
  int secondNumber = getUserInput('Enter the second number: ');

  // Calculate the quotient
  double result = divideTwo(firstNumber, secondNumber);
  print('The quotient of those two numbers is: $result');
}
