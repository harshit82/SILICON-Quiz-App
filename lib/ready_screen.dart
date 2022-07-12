import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';

class Ready extends StatelessWidget {
  Widget chooseQuiz;

  Ready({Key? key, required this.chooseQuiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              Center(
                child: GlowText(
                  "Ready ?",
                  style: GoogleFonts.merriweatherSans(
                    fontSize: 40,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              const Spacer(flex: 1),
              Center(
                child: GlowButton(
                  child: const Text("Start"),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => chooseQuiz));
                  },
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
