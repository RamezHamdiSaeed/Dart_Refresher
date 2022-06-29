import 'dart:io';

class MathQuestions {
  late String question;
  late double answer;
  MathQuestions({required this.question, required this.answer});
  void getAnswer() {
    print(question);
    print("Enter your answer: ");
    double userAnswer = double.parse(stdin.readLineSync() ?? "0.0");
    print("your answer is : $userAnswer");
    (userAnswer == answer) ? print("true") : print("false");
  }
}
