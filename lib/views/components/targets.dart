import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Targets extends StatelessWidget {
  const Targets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0,),
        Text(
          "Targets",
          style: GoogleFonts.montserratAlternates(
            fontSize: 28,
          ),
        ),
        SizedBox(height: 10.0,),
        
      ],
    );
  }
}