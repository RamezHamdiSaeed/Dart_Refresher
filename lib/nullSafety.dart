void nullSafety() {
  String? name;
  //late String name2;//late is optional in dart , to tell the compiler that the variable is not nullable and will be initialized later
  //print(name.length);//throw error because of null
  // if (name != null) {
  //   print(name.length);
  // }
  try {
    assert(name != null,
        "name is null"); //* the assert statement is used to check if the condition is true or not,if it is not true it will throw an error
    //* the assert like try catch block since the second argument like the catch scope
    //* the assert is usually used for debug methods'arguments, and for constructors'arguments
    print(name);
  } catch (e) {
    name = "";
    print(name);
  }
  // print(name!.isEmpty);
}
