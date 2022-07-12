import 'package:silicon_quiz/quiz_questions/questions.dart';

class DsQuizBrain {
  int _questionNumber = 0;
  final List<Questions> _questionBank = [
    Questions(
        question: "Identify the language which is used in data science?",
        option1: "C++",
        option2: "Ruby",
        option3: "R",
        option4: "Java",
        answer: "Ruby"),
    Questions(
        question: "Choose the correct components of data science.",
        option1: "domain expertise",
        option2: "data enginnering",
        option3: "advanced computing",
        option4: "all of the above",
        answer: "all of the above"),
    Questions(
        question:
            "Which of the following is not a part of the data science process?",
        option1: "communication building",
        option2: "operationalize",
        option3: "model planning",
        option4: "discovery",
        answer: "model planning"),
    Questions(
        question: "Total groups in which data can be characterized is?",
        option1: "1",
        option2: "2",
        option3: "3",
        option4: "4",
        answer: "2"),
    Questions(
        question:
            "Choose whether the following statement is true or false: Unstructured data is not organized",
        option1: "True",
        option2: "False",
        option3: "Maybe True or False",
        option4: "Cannot be determined",
        answer: "True"),
    Questions(
        question: "A column is a  _________- representation of data.",
        option1: "Diagonal",
        option2: "Vertical",
        option3: "Top",
        option4: "Horizontal",
        answer: "Vertical"),
    Questions(
        question:
            "Among the following identify the one in which dimensionality reduction reduces.",
        option1: "Performance",
        option2: "Entropy",
        option3: "Stochastics",
        option4: "Collinearity",
        answer: "Collinearity"),
    Questions(
        question: "Machine learning is a subset of which of the following.",
        option1: "Artificial Intelligence",
        option2: "Deep Learning",
        option3: "Data Learning",
        option4: "None of the above",
        answer: "Artificial Intelligence"),
    Questions(
        question: "FIND-S algorithm ignores?",
        option1: "Positive",
        option2: "Negative",
        option3: "Both",
        option4: "None",
        answer: "Negative"),
    Questions(
        question: "Full form of PAC is _________________",
        option1: "Probably Approx Cost",
        option2: "Probably Approximate Correct",
        option3: "Probablity Approx Communication",
        option4: "Probabilty Approx Computation",
        answer: "Probabilty Approximate Correct"),
    Questions(
        question:
            "Total types of layer in radial basis function neural networks is ______",
        option1: "1",
        option2: "2",
        option3: "3",
        option4: "4",
        answer: "3"),
    Questions(
        question:
            "Procedural Domain Knowledge in a rule-based system, is in the form of?",
        option1: "Meta Rules",
        option2: "Control Rules",
        option3: "Production Rules",
        option4: "None of the above",
        answer: "Production Rules"),
    Questions(
        question:
            "Which of the following architecture is also known as systolic arrays?",
        option1: "MISD",
        option2: "SISD",
        option3: "SIMD",
        option4: "None of the above",
        answer: "MISD"),
    Questions(
        question: "Machines running LISP are also called?",
        option1: "AI Workstations",
        option2: "Time Sharing Terminals",
        option3: "Both A and B",
        option4: "None of the above",
        answer: "AI Workstations"),
    Questions(
        question: "A hybrid Bayesian Network consists of?",
        option1: "Discrete Variables",
        option2: "Continous Variables",
        option3: "Both A and B",
        option4: "None of the above",
        answer: "Both A and B"),
  ];

  int getNumberOfQuestions() {
    return _questionBank.length;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  String getAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
