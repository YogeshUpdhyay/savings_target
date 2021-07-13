import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'glasscontainer.dart';

class TargetsTile extends StatelessWidget {
  const TargetsTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      size: size,
      heightPercentage: 0.3,
      widthPercentage: 0.425,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.bullseye),
                  SizedBox(width: 5.0,),
                  Text(
                    "Targets",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 20
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "\u20B9",
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 26
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "200/\n8000",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 26
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {}, 
                    icon: FaIcon(FontAwesomeIcons.plusSquare),
                    iconSize: 32,
                  ),
                  SizedBox(width: 10.0,),
                  IconButton(
                    onPressed: () {}, 
                    icon: FaIcon(FontAwesomeIcons.arrowAltCircleRight),
                    iconSize: 32,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}