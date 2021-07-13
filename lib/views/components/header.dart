import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Yogesh",
            style: GoogleFonts.montserratAlternates(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5.0,),
          Text(
            "Happy Savings!",
            style: GoogleFonts.montserratAlternates(
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }
}