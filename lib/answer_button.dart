import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton({super.key,required this.answertxt,required this.ontap});
  final String answertxt;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: const  Color.fromARGB(255, 53, 4, 106),
        foregroundColor: Colors.white,

      ),
     child: Text(answertxt, textAlign: TextAlign.center,)
    );
  }
}