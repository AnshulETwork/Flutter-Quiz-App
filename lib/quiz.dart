import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions.dart';
import 'package:adv_basics/data/question.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen="start-screen";
  
  void switchScreen(){
    setState(() {
      activeScreen="questions-screen";
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(questions.length == selectedAnswers.length){
      //selectedAnswers=[];
      setState(() {
        activeScreen="results-screen";
        
      });
      
    }

  }
  void Restartquiz(){
    setState(() {
      selectedAnswers=[];
      activeScreen="questions-screen";

    });
  }
  
 
 
  @override
  Widget build(BuildContext context) {
    Widget screenwidget=startScreen(switchScreen);
    if(activeScreen=="questions-screen"){
      screenwidget= QuestionsScreen(onSelectedAnswer: chooseAnswer,);
    }
    if(activeScreen=="results-screen"){
      screenwidget= ResultsScreen(chosenanswers: selectedAnswers,onRestart:Restartquiz ,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 50, 3, 112),
              Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
          ),
          child: screenwidget,
          ),
      ),
    );
  }
}