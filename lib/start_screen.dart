import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class startScreen extends StatelessWidget {
  const startScreen(this.Startquiz, {super.key});
  final void Function() Startquiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          "Flutter Fundamentals Quiz",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: Startquiz,
            label: const Text("Start Quizz"))
      ],
    ));
  }
}
