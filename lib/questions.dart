import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/question.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});
  final void Function (String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currquestionindex=0;
  void answerQuestion(String selectedAnswer){
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currquestionindex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currquestion=questions[currquestionindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(currquestion.text,style:  GoogleFonts.lato(
              color: const Color.fromARGB(255, 212, 124, 239),
              fontWeight: FontWeight.bold,
              fontSize:30
            ),),
            const SizedBox(height: 30,),
            ...currquestion.getShuffledAnswers().map((answer){
              return Answerbutton(answertxt:answer,ontap:(){
                answerQuestion(
                  answer
                  
                );
              },);
        
            }),
            
          ],
        
        ),
      ),
    );
  }
}