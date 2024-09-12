import 'package:flutter/material.dart';
import 'package:adv_basics/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestionIdentifier(
                questionIndex: data['question_index'] as int,
                isCorrect: data['çorrect_answer'] == data['chosen_answer'],
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['chosen_answer'] as String,style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 242, 144, 255),
                      fontSize: 14,
                    ),),
                    Text(data['çorrect_answer'].toString(), style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 72, 207, 248),
                      fontSize: 14,
                    ),),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
