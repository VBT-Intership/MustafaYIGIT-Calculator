import 'dart:io';

import 'enum/OperatorType.dart';

main() {
  while (true) {
    double numberFirst = getNumberFromConsole();
    double numberTwo = getNumberFromConsole();

    var operatorType = getOperatorFromConsole();

    print("Result: ${calculate(numberFirst, numberTwo, operatorType)}");
  }
}

double calculate(
    double numberFirst, double numberTwo, OperatorType operatorType) {
  double result;
  switch (operatorType) {
    case OperatorType.ADD:
      result = numberFirst + numberTwo;
      break;
    case OperatorType.SUBTRACT:
      result = numberFirst - numberTwo;
      break;
    case OperatorType.MULTIPLY:
      result = numberFirst * numberTwo;
      break;
    case OperatorType.DIVIDE:
      result = numberFirst / numberTwo;
      break;
  }
  return result;
}

OperatorType getOperatorFromConsole() {
  print(
      "Select an Operator(Default Operator: /):\n1) --> +\n2) --> -\n3) --> *\n4) --> /\n");
  var userInput = stdin.readLineSync();
  OperatorType operatorType;
  switch (userInput) {
    case "1":
      operatorType = OperatorType.ADD;
      break;
    case "2":
      operatorType = OperatorType.SUBTRACT;
      break;
    case "3":
      operatorType = OperatorType.MULTIPLY;
      break;
    default:
      operatorType = OperatorType.DIVIDE;
  }

  return operatorType;
}

double getNumberFromConsole() {
  print("Give me a number (Press 'Q' or 'q' for quit):");
  var input = stdin.readLineSync();
  if (input.toUpperCase() == "Q") {
    exit(0);
  }
  return double.parse(input);
}
