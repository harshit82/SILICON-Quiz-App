import 'package:silicon_quiz/quiz_questions/questions.dart';

class AiQuizBrain {
  int questionNumber = 0;
  final List<Questions> questionBank = [
    Questions(
        question: "Artificial Intelligence is about_____.",
        option1: "Playing a game on Computer",
        option2: "Making a machine Intelligent",
        option3: "Programming on Machine with your Own Intelligence",
        option4: "Putting your intelligence in Machine",
        answer: "Making a machine Intelligent."),
    Questions(
        question: "Who is known as the -Father of AI?",
        option1: "Fisher Ada",
        option2: "Alan Turing",
        option3: "John McCarthy",
        option4: "Allen Newell",
        answer: "John McCarthy"),
    Questions(
        question:
            "Select the most appropriate situation for that a blind search can be used. ",
        option1: "Real-life situation",
        option2: "Small Search Space",
        option3: "Complex game",
        option4: "All of the above",
        answer: "Small Search Space"),
    Questions(
        question:
            "The application/applications of Artificial Intelligence is/are",
        option1: "Expert Systems",
        option2: "Gaming",
        option3: "Vision Systems",
        option4: "All of the above",
        answer: "All of the above"),
    Questions(
        question:
            "Among the given options, which search algorithm requires less memory?",
        option1: "Optimal Search",
        option2: "Depth First Search",
        option3: "Breadth-First Search",
        option4: "Linear Search",
        answer: "Depth First Search"),
    Questions(
        question:
            " If a robot is able to change its own trajectory as per the external conditions, then the robot is considered as the__",
        option1: "Mobile",
        option2: "Non-Servo",
        option3: "Open Loop",
        option4: "Intelligent",
        answer: "Intelligent"),
    Questions(
      question: "Which of the given language is not commonly used for AI?",
      option1: "LISP",
      option2: "PROLOG",
      option3: "Python",
      option4: "Perl",
      answer: "Perl",
    ),
    Questions(
        question:
            "A technique that was developed to determine whether a machine could or could not demonstrate the artificial intelligence known as the___",
        option1: "Boolean Algebra",
        option2: "Turing Test",
        option3: "Logarithm",
        option4: "Algorithm",
        answer: "Turing Test"),
    Questions(
        question: "The component of an Expert system is_________.",
        option1: "Knowledge Base",
        option2: "Inference Engine",
        option3: "User Interface",
        option4: "All of the above",
        answer: "All of the above"),
    Questions(
        question:
            "Which algorithm is used in the Game tree to make decisions of Win/Lose?",
        option1: "Heuristic Search Algorithm",
        option2: "DFS/BFS algorithm",
        option3: "Greedy Search Algorithm",
        option4: "Min/Max algorithm",
        answer: "Min/Max algorithm"),
    Questions(
        question:
            "The available ways to solve a problem of state-space-search. ",
        option1: "1",
        option2: "2",
        option3: "3",
        option4: "4",
        answer: "2"),
    Questions(
        question:
            "Among the given options, which is not the required property of Knowledge representation?",
        option1: "Inferential Efficiency",
        option2: "Inferential Adequacy",
        option3: "Representational Verification",
        option4: "Representational Adequacy",
        answer: "Representational Verification"),
    Questions(
        question:
            "An AI agent perceives and acts upon the environment using___.",
        option1: "Sensors",
        option2: "Perceiver",
        option3: "Actuators",
        option4: "Both a and c",
        answer: "Both a and c"),
    Questions(
        question: "Which rule is applied for the Simple reflex agent?",
        option1: "Simple-action rule",
        option2: "Simple & Condition-action rule",
        option3: "Condition-action rule",
        option4: "None of the above",
        answer: "Condition-action rule"),
    Questions(
        question: "Which agent deals with the happy and unhappy state?",
        option1: "Utility-based agent",
        option2: "Model-based agent",
        option3: "Goal-based Agent",
        option4: "Learning Agent",
        answer: "Utility-based agent"),
  ];

  int getNumberOfQuestions() {
    return questionBank.length;
  }

  String getQuestionText() {
    return questionBank[questionNumber].question;
  }

  String getAnswer() {
    return questionBank[questionNumber].answer;
  }

  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  getQuestionBank(){
    return questionBank;
  }

  void reset() {
    questionNumber = 0;
  }
}
