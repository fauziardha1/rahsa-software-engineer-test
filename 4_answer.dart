// code in dart
// by Fauzi Arda
main(List<String> args) {
  print(Max2(1, 2));
  print(Max3(1, 2, 3));
  print(Max9(1, 2, 3, 4, 5, 6, 7, 8, 9));
}

int Max2(int firstNumber, int secondNumber) {
  return firstNumber > secondNumber ? firstNumber : secondNumber;
}

int Max3(int firstNum, int secondNum, int thirdNum) {
  int tempMax = Max2(firstNum, secondNum);
  return tempMax > thirdNum ? tempMax : thirdNum;
}

int Max9(int a, b, c, d, e, f, g, h, i) {
  int firstTemp = Max3(a, b, c);
  int secondTemp = Max3(d, e, f);
  int thirdTemp = Max3(g, h, i);
  return Max3(firstTemp, secondTemp, thirdTemp);
}
