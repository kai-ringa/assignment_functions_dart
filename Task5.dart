import 'dart:io';

// Write a function called stringLength that takes an argument of type String and returns the length of that string.

int stringLength(String inputString) {
  return inputString.length;
}

void main() {
  // Ask user for a word
  stdout.write('Enter a string: ');
  String userString = stdin.readLineSync()!;

  // Calculate the length of the string
  int length = stringLength(userString);
  print('The length of the string is: $length');
}
