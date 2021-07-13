import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saving_traget/views/components/glasscontainer.dart';

class SavingsTile extends StatelessWidget {
  const SavingsTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      size: size,
      widthPercentage: 0.425,
      heightPercentage: 0.2,
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.piggyBank),
                SizedBox(width: 5.0,),
                Text(
                  "Savings",
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 20
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Text(
              "\u20B9 4,315",
              style: GoogleFonts.montserratAlternates(
                fontSize: 26
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: IconButton(
                onPressed: () {}, 
                icon: FaIcon(FontAwesomeIcons.arrowAltCircleRight),
                iconSize: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}