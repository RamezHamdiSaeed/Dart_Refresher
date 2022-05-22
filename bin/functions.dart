void testFunctions() {
  // welcomTo("Ramez");
  // int base =
  //     2; //*note the base variable of this scope (main scope) is not passed to the function so it is not visible,and the global base variable is the one which passed to the function
  // bool result = isEvenPrime(10);
  // print(result);
  print(ceaserCipher("Ramez hamdi sa'eed nice to fuck you ALL"));
}

String ceaserCipher(String plainText) {
  plainText = plainText.toUpperCase();
  String cipherText = "";
  for (int i = 0; i < plainText.length; i++) {
    int asciiCode = plainText.codeUnitAt(i);
    if (asciiCode >= 65 && asciiCode <= 90) {
      asciiCode += 3;
      if (asciiCode > 90) {
        asciiCode -= 26;
      }
    }
    cipherText += String.fromCharCode(asciiCode);
  }
  return cipherText;
}

int base =
    2; //*this is a global variablej,the variables from the outer most scope can be accessed in the inner most scope not the opposite
void welcomTo(String name) {
  print("Welcome to Dart, $name!");
}

bool isEvenPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (base; base < number; base++) {
    if (number % base == 0) {
      return false;
    }
  }
  return true;
}
