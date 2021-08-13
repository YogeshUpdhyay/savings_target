import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {

  final openDrawer;
  
  const Header({
    Key? key, required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: openDrawer,
            icon: FaIcon(FontAwesomeIcons.cog),
          ),
          Column(
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
        ],
      ),
    );
  }
}