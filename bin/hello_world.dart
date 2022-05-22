// import 'package:hello_world/hello_world.dart' as hello_world;

import 'conditionalStatement.dart';
import 'functions.dart';
import 'instance&inheritence.dart';
import 'nullSafety.dart';
// import 'nullSafety.dart';
// import 'operators.dart';
// import 'operators.dart';

void main(List<String> arguments) {
  // int increment = 1;
  // increment = 2;
  // //data types
  // int a = 1;
  // int b = 2;
  // int c = a + b;
  // print(c);
  // //strings
  // String name = "John";
  // String greeting = "Hello, $name";
  // print(greeting + " my name is Ramez , nice to meet you");
  // //booleans
  // bool isTrue = true;
  // bool isFalse = false;
  // print(isTrue);
  // //dynamic
  // dynamic aDynamic = 1;
  // aDynamic = "Hello";
  // aDynamic = true;
  // print(aDynamic);
  // var variable = "Hello";
  // print(variable);
  // variable = 1;//* this is not a string so it will throw an error
  // print(variable);
  // //constants
  // const PI = 3.14;
  // print(PI);
  // final PI; //* this is a constant but can be initialized later not like const
  // PI = 3.14;
  // print(PI);
  // //lists
  // List<int> numbers = [1, 2, 3];
  // numbers.add(4);
  // numbers.addAll([5, 6, 3]);
  // numbers.removeWhere(((element) => element == 3));
  // // print(numbers);
  // for (var number in numbers) { //* the advanced looops like for-in loops and methods which get a callback functions to be executed on each element of the list or sets (any object driven from iterable objects) depending on the iterator object fetched from iterator method(getter)
  //   print(number);
  // }
  // Iterable iterable = [1, 2, 3];
  // Iterator iterator = iterable.iterator;
  // while (iterator.moveNext()) {
  //   print(iterator.current);
  // }
//* so to make methods like List.where() and List.map(), we need to use the iterator object from iterator methods
  // //maps
  // Map<String, int> ages = {"John": 21, "Bob": 22, "Alice": 23};
  // print(ages);
  // ages.addAll({"Ramez": 24});
  // print(ages.values);

  // Set setOfNumber = {1, 2, 3, 4, 5};
  // print(setOfNumber.elementAt(1));
  // print(setOfNumber.add(
  //     5)); //* returns true if the element was added successfully (unique elements)
  // print(setOfNumber);
  // print("Hello world:\n${hello_world.calculate() + increment + 1}!");
  // nullSafety();
  // doSomeWithOperators();
  // doSomeConditionalStatements();
  // testFunctions();
  // nullSafety();
  Parent hamdi = Parent("Hamdi", "trader", 58)
    ..setJob =
        "developer"; // .. is a cascade operator recommended for custom configurations for a specific object and used to make volatile objects whith configuraton on the same statement
  hamdi.printInfo();
  hamdi.setJob = "trader";
  Parent parent = Parent(
      "Ramez", "Developer", 5); //! the below methods won't run when debugging
  //!!!!!!!!!!!!
  // parent.printInfo();
  // // parent._age = 25;//* this is a private variable so we can access it from outside the class
  // print(parent.getAge);
  //!!!!!!!!!!!!
}
