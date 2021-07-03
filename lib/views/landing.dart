
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/ms_undraw.dart';

class Landing extends StatefulWidget {
  const Landing({ Key? key }) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: size.height*0.3,
                child: UnDraw(
                  color: const Color(0xff43c59e),
                  illustration: UnDrawIllustration.gift_box
                ),
              ),
              MaterialButton(
                height: 60,
                elevation: 10.0,
                onPressed: () => Navigator.pushNamed(context, '/login'),
                color: const Color(0xff43c59e),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward),
                    SizedBox(width: 10.0,),
                    Text(
                      "Get Started",
                      style: GoogleFonts.montserratAlternates(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}