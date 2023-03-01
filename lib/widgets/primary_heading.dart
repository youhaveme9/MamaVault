import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryHeading extends StatelessWidget {
  final String text;
  const PrimaryHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
      ),
    );
  }
}
