
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/ms_undraw.dart';

class Landing extends StatefulWidget {
  const Landing({ Key? key }) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  final landingSequence = [
    {
      'buttonText': 'Next',
      'centerIllustration': UnDrawIllustration.product_hunt,
      'title': 'Find what you want?'
    },
    {
      'buttonText': 'Next',
      'centerIllustration': UnDrawIllustration.add_to_cart,
      'title': 'Set a goal!'
    },
    {
      'buttonText': 'Get Started',
      'centerIllustration': UnDrawIllustration.savings,
      'title': 'Start saving'
    },
  ];

  int _currentIndex = 0;

  void moveToNext() {
    if (_currentIndex+1 < landingSequence.length) {
        setState(() {
        _currentIndex = _currentIndex + 1;
      });
    } else {
      Navigator.of(context).pushNamed('/login');
    }
    
  }
  
  @override
  Widget build(BuildContext context) {

    var currDetails = landingSequence[_currentIndex];

    return Scaffold(
      body: SafeArea(
        child: LandingLayout(
          title: currDetails['title'],
          centerIllustration: currDetails['centerIllustration'],
          buttonText: currDetails['buttonText'],
          changeFunc: moveToNext,
        ),
      ),
    );
  }
}

class LandingLayout extends StatelessWidget {

  final buttonText;
  final centerIllustration;
  final title;
  final changeFunc;

  const LandingLayout({
    Key? key, 
    required this.buttonText, 
    required this.centerIllustration, 
    required this.title, 
    required this.changeFunc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserratAlternates(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.width*0.3),
          Container(
            height: size.height*0.3,
            child: UnDraw(
              color: const Color(0xff1f727a),
              illustration: centerIllustration
            ),
          ),
          SizedBox(height: size.width*0.3),
          MaterialButton(
            minWidth: size.width*0.8,
            height: 60,
            elevation: 10.0,
            onPressed: changeFunc,
            color: const Color(0xff1f727a),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Text(
              buttonText,
              style: GoogleFonts.montserratAlternates(
                color: Colors.white,
                fontSize: 20
              ),
            )
          )
        ],
      ),
    );
  }
}