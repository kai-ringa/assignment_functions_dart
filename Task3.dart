import 'dart:io';

// Write a function called multiplyTwo that takes two numbers as arguments and returns the product of those two numbers.

int multiplyTwo(int a, int b) {
  return a * b;
}

void main() {
  // Check if the number is valid
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

  // Ask for the first number
  int firstNumber = getUserInput('Enter the first number: ');

  // Ask for the second number
  int secondNumber = getUserInput('Enter the second number: ');

  // Calculate the product
  int result = multiplyTwo(firstNumber, secondNumber);
  print('The product of those two numbers is: $result');
}
