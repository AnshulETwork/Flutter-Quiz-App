import 'package:flutter/material.dart';

class Questionidentifier extends StatelessWidget {
  const Questionidentifier({
    super.key,
    required this.isCorrectanswer,
    required this.questionIndex
  
  });
  final int questionIndex;
  final bool isCorrectanswer;

  @override
  Widget build(BuildContext context) {
    final questionnumber=questionIndex+1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectanswer ? const  Color.fromARGB(255, 150, 198, 241)
        : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        questionnumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),

        ),
        
      ),
    );
  }
}