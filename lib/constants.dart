import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String option;
  bool correct = false;

  Button({
    Key? key,
    required this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 50,
        width: 100,
        decoration: correct
            ? const BoxDecoration(color: Colors.greenAccent)
            : const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.tealAccent,
                  ],
                ),
              ),
        child: Center(child: Text(option)),
      ),
    );
  }
}
