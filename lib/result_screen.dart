import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silicon_quiz/game_screen.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            GlowText(
              "Results",
              style: GoogleFonts.merriweatherSans(
                fontSize: 40,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 40,
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
      ),
    );
  }
}
