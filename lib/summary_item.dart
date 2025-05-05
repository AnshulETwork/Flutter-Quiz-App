import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/questions_identyfier.dart';

class summaryItem extends StatelessWidget {
  const summaryItem(this.itemData,{super.key});
  final Map<String,Object>itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectanswer=itemData['user_answer']==itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Questionidentifier(isCorrectanswer: isCorrectanswer, questionIndex: itemData['question_index'] as int),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color:Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize:16,
                  ),
                ),
                const SizedBox(height: 5,),
                Text(itemData['correct_answer'] as String,style:const  TextStyle(color: Color.fromARGB(255, 202, 171, 252), ),),
                Text(itemData['user_answer'] as String,style:const  TextStyle(color: Color.fromARGB(255, 181, 254, 246), ),),
              ],
              
            ),
          )
        ],
      ),
    );
  }
}