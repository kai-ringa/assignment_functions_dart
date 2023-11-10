import 'dart:io';

// Write a function called addTwo that takes two numbers as arguments and returns the sum of those two numbers.

int addTwo(int a, int b) {
  return a + b;
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

  // Asking for first number from user
  int firstNumber = getUserInput('Enter the first number: ');

  // Asking for second number from user
  int secondNumber = getUserInput('Enter the second number: ');

  // Calculating the sum
  int result = addTwo(firstNumber, secondNumber);
  print('The sum of those two numbers is: $result');
}
