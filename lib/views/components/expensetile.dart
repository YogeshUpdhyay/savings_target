import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saving_traget/views/components/glasscontainer.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      size: size, 
      widthPercentage: 0.425, 
      heightPercentage: 0.3, 
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.productHunt),
                SizedBox(width: 5.0,),
                Text(
                  "Expenses",
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 20
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Text(
              "\u20B9 7000",
              textAlign: TextAlign.left,
              style: GoogleFonts.montserratAlternates(
                fontSize: 26
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              "out of 25000",
              style: GoogleFonts.montserratAlternates(
                fontSize: 16,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.minusSquare),
                  iconSize: 32,
                ),
                SizedBox(width: 10.0,),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.plusSquare),
                  onPressed: () {},
                  iconSize: 32,
                )
              ],
            ),
            SizedBox(height: 5.0,),
            IconButton(
              onPressed: () {}, 
              icon: FaIcon(FontAwesomeIcons.arrowCircleRight),
              iconSize: 32,
            )
          ],
        ),
      )
    );
  }
}