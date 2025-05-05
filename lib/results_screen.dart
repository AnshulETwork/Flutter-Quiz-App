import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/data/question.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenanswers,
    required this.onRestart,
  });

  final List<String> chosenanswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenanswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 49, 171),
            Color.fromARGB(255, 65, 16, 108),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8,
                color: Colors.white.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          children: [
                            const TextSpan(
                              text: "You answered ",
                            ),
                            TextSpan(
                              text: "$numCorrectAnswers",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent,
                                fontSize: 24,
                              ),
                            ),
                            const TextSpan(text: " out of "),
                            TextSpan(
                              text: "$numTotalQuestions",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent,
                                fontSize: 24,
                              ),
                            ),
                            const TextSpan(text: " questions correctly!"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: QuestionsSummary(summaryData),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: onRestart,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 88, 35, 143),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  textStyle: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(Icons.restart_alt, size: 26),
                label: const Text("Restart Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
