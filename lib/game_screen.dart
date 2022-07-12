import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:silicon_quiz/quiz_questions/AI_quiz_brain.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountDownController controller = CountDownController();
    return SafeArea(
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
                  GlowText(
                    "$playerScore/$totalScore",
                    style: GoogleFonts.merriweatherSans(
                      fontSize: 25,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              GlowText(
                "Artificial Intelligence",
                style: GoogleFonts.merriweatherSans(
                  fontSize: 20,
                  color: Colors.lightBlue,
                ),
              ),
              Spacer(),
              NeonCircularTimer(
                  onComplete: () {
                    controller.restart();

                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.warning,
                      text: 'Times Up!',
                    );
                  },
                  width: 140,
                  controller: controller,
                  duration: 30,
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
              Spacer(flex: 2),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: GlowText(
                  "Question Text",
                  style: GoogleFonts.merriweatherSans(
                    fontSize: 30,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Spacer(flex: 1),
              Container(
                height: 50,
                width: 100,
                child: Center(child: Text("Answer")),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
