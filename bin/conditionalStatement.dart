void doSomeConditionalStatements() {
  //we want to but at least one movile device and at most
  int iphone = 25000;
  int s10plus = 20000;
  int s10 = 15000;
  int myCashe = 20000;
  if (myCashe >= iphone) {
    print("I can buy an iphone");
  } else if (myCashe >= s10plus) {
    print("I can buy a s10plus");
  } else if (myCashe >= s10) {
    print("I can buy a s10");
  } else {
    print("I can buy nothing");
  }
}
