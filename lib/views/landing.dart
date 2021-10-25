import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
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

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: <Widget>[
          LandingSeqOne(liquidController: liquidController,),
          LandingSeqTwo(liquidController: liquidController,),
          LandingSeqThree()
        ],
        waveType: WaveType.liquidReveal,
        liquidController: liquidController,
        onPageChangeCallback: pageChangeCallback,
        ignoreUserGestureWhileAnimating: true,
        enableLoop: false,
      ),
    );
  }
}


