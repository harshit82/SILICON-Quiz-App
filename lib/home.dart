import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silicon_quiz/game_screen.dart';
import 'package:silicon_quiz/ready_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: GlowText(
                  'Let\'s Play the Quiz',
                  style: GoogleFonts.merriweatherSans(
                    fontSize: 40,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration: BoxDecoration(color: Colors.blueGrey[900]),
                  child: Column(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              GlowText(
                                "Welcome, ",
                                style: GoogleFonts.merriweatherSans(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: GlowText(
                                  "Player",
                                  style: GoogleFonts.merriweatherSans(
                                    fontSize: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const GlowIcon(
                                  Icons.edit,
                                  color: Colors.blueAccent,
                                  size: 20,
                                  blurRadius: 9,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height /
                                        3.5,
                                    height: MediaQuery.of(context).size.height /
                                        3.5,
                                    color: Colors.blue[300],
                                    child: Stack(
                                      children: [
                                        Image.asset("AI_background.jpeg"),
                                        Center(
                                          child: GlowText(
                                            "Artificial Intelligence",
                                            style: GoogleFonts.merriweatherSans(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ready(
                                            chooseQuiz: const GameScreen(),
                                          )),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height /
                                        3.5,
                                    height: MediaQuery.of(context).size.height /
                                        3.5,
                                    color: Colors.blue[200],
                                    child: Stack(
                                      children: [
                                        Image.asset("DS_background.jpeg"),
                                        Center(
                                          child: GlowText(
                                            "Data Science",
                                            style: GoogleFonts.merriweatherSans(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ready(
                                            chooseQuiz: const GameScreen(),
                                          )),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
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
