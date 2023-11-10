import 'dart:io';

// Write a function called subtractTwo that takes two numbers as arguments and returns the difference of those two numbers.

int subtractTwo(int a, int b) {
  return a - b;
}

void main() {
  // Check whether input is an integer
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

  // Asking user for the first number
  int firstNumber = getUserInput('Enter the first number: ');

  // Asking user for the second number
  int secondNumber = getUserInput('Enter the second number: ');

  // Calculation
  int result = subtractTwo(firstNumber, secondNumber);
  print('The difference of the two numbers is: $result');
}
