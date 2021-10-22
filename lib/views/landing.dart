import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:saving_traget/theme.dart';
import 'package:saving_traget/views/components/landingSeqOne.dart';
import 'package:saving_traget/views/components/landingSeqThree.dart';
import 'package:saving_traget/views/components/landingSeqTwo.dart';

class Landing extends StatefulWidget {
  const Landing({ Key? key }) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  int page = 0;
  late LiquidController liquidController;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color: Colors.black,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Stack(
        children: <Widget>[
          LiquidSwipe(
            pages: <Widget>[
              LandingSeqOne(),
              LandingSeqTwo(),
              LandingSeqThree()
            ],
            slideIconWidget: FaIcon(FontAwesomeIcons.chevronLeft),
            waveType: WaveType.liquidReveal,
            liquidController: liquidController,
            onPageChangeCallback: pageChangeCallback,
            enableSideReveal: true,
            ignoreUserGestureWhileAnimating: true,
            enableLoop: false,
          ),

          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(3, _buildDot),
                ),
              ],
            ),
          ),

          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(25.0),
          //     child: TextButton(
          //       onPressed: () {
          //         liquidController.animateToPage(
          //           page: 2, 
          //           duration: 700
          //         );
          //       },
          //       child: Text("Skip")
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
