import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget{

const QuestionIdentifier(this.isCorrectAns, this.questionIndex, {super.key});

final bool isCorrectAns; 
final int questionIndex;

  @override
  Widget build(context) {
    final  questionNumber = questionIndex+1;

   return Container(
    height: 30,
    width: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isCorrectAns
      ? const Color.fromARGB(255, 157, 59, 237)
      :const Color.fromARGB(255, 6, 67, 117),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Text(
      questionNumber.toString(),
      style: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
   );
  }
}