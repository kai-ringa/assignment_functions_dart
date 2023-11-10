import 'dart:io';

// Write a function called getFirstElement that takes a list as an argument and returns the first element of that list.

T getFirstElement<T>(List<T> inputList) {
  if (inputList.isEmpty) {
    throw Exception('The list is empty');
  }
  return inputList[0];
}

void main() {
  // Ask user for the list
  stdout.write('Enter a list of elements separated by commas: ');
  String userInput = stdin.readLineSync()!;

  // Parsing the user input into a list of integers
  List<String> elements = userInput.split(',');
  List<int> numbers = elements.map((e) => int.parse(e.trim())).toList();

  try {
    int firstElement = getFirstElement(numbers);
    print('The first element of that list is: $firstElement');
  } catch (e) {
    print(e);
  }
}
