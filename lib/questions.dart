class Questions {
  late String questions;
  late List<String> options;
  late int answer;
  late List<int> index;

  Questions({
    required String questionText,
    required List<String> answerOptions,
    required int correctAnswer,
    required List<int> optionNumber,
  }) {
    questions = questionText;
    options = answerOptions;
    answer = correctAnswer;
    index = optionNumber;
  }
}
