import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:silicon_quiz/constants.dart';
import 'package:silicon_quiz/quiz_questions/AI_quiz_brain.dart';
import 'package:silicon_quiz/quiz_questions/questions.dart';
import 'package:silicon_quiz/result_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

AiQuizBrain ob = AiQuizBrain();

List<Questions> questionBank = ob.getQuestionBank();

List<Icons> scoreKeeper = [];

int questionIn = 0;

bool correct = false;

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    final CountDownController controller = CountDownController();
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: correct == false ? Colors.black : Colors.greenAccent),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GlowText(
                      "Player",
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 25,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                NeonCircularTimer(
                    onComplete: () {
                      controller.restart();

                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.warning,
                        text: 'Times Up!',
                      );

                      setState(() {
                        nextQuestion();
                      });
                    },
                    width: 140,
                    controller: controller,
                    duration: 60,
                    strokeWidth: 10,
                    isTimerTextShown: true,
                    neumorphicEffect: true,
                    outerStrokeColor: Colors.grey.shade100,
                    innerFillGradient: LinearGradient(colors: [
                      Colors.greenAccent.shade200,
                      Colors.blueAccent.shade400
                    ]),
                    neonGradient: LinearGradient(colors: [
                      Colors.greenAccent.shade200,
                      Colors.blueAccent.shade400
                    ]),
                    strokeCap: StrokeCap.round,
                    innerFillColor: Colors.black12,
                    backgroudColor: Colors.grey.shade600,
                    neonColor: Colors.blue.shade900),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: GlowText(
                    questionBank[questionIn].question,
                    style: GoogleFonts.merriweatherSans(
                      fontSize: 15,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                          onTap: () {
                            if (checkAnswer(questionBank[questionIn].option1)) {
                              setState(() {
                                correct = true;
                                playerScore++;
                                nextQuestion();
                              });
                            } else {
                              setState(() {
                                nextQuestion();
                              });
                            }
                          },
                          child: Button(
                            option: questionBank[questionIn].option1,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            if (checkAnswer(questionBank[questionIn].option2)) {
                              setState(() {
                                correct = true;
                                playerScore++;
                                nextQuestion();
                              });
                            } else {
                              setState(() {
                                nextQuestion();
                              });
                            }
                          },
                          child: Button(
                            option: questionBank[questionIn].option2,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            if (checkAnswer(questionBank[questionIn].option3)) {
                              setState(() {
                                correct = true;
                                playerScore++;
                                nextQuestion();
                              });
                            } else {
                              setState(() {
                                nextQuestion();
                              });
                            }
                          },
                          child: Button(
                            option: questionBank[questionIn].option3,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            if (checkAnswer(questionBank[questionIn].option4)) {
                              setState(() {
                                correct = true;
                                playerScore++;
                                nextQuestion();
                              });
                            } else {
                              setState(() {
                                nextQuestion();
                              });
                            }
                          },
                          child: Button(
                            option: questionBank[questionIn].option4,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void nextQuestion() {
    if (questionIn < questionBank.length - 1) {
      questionIn++;
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Results()));
    }
  }
}

int totalScore = AiQuizBrain().getNumberOfQuestions();

int playerScore = 0;

bool checkAnswer(String userPickedAnswer) {
  String correctAnswer = AiQuizBrain().getAnswer();

  if (userPickedAnswer.toLowerCase() == correctAnswer.toLowerCase()) {
    return true;
  } else {
    return false;
  }
}
