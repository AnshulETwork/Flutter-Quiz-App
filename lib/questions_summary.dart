import 'package:adv_basics/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String,Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,

      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return summaryItem(data);
          }).toList(),
        
          
        
        
        ),
      ),
    );
  }


}