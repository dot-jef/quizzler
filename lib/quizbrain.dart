import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionText: 'The creator of this app is Jeff', questionAnswer: true),
    Question(
        questionText: 'The Philippine flag has 4 colors', questionAnswer: true),
    Question(
        questionText: 'Carbon has a symbol of N in Periodic Table',
        questionAnswer: false),
    Question(questionText: 'She doesn\'t like you back', questionAnswer: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  reset() {
    _questionNumber = 0;
  }
}
