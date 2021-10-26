import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:saving_traget/theme.dart';
import 'package:saving_traget/views/components/skipButton.dart';
import 'package:saving_traget/views/utils/buildDot.dart';

class LandingSeqTwo extends StatelessWidget {
  const LandingSeqTwo({ 
    Key? key,
    required this.liquidController, 
  }) : super(key: key);

  final LiquidController liquidController;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.primaryDarkColor.withOpacity(0.5),
          image: DecorationImage(
            image: AssetImage("assets/img/landing-seq-backdrop.png"),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/landing-seq-2-ill.png",
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Set a goal!",
                        style: AppTheme.headingTextStyle,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Set a goal for what you want. Save and achieve it",
                        style: AppTheme.subtitleTextStyle,
                        textAlign: TextAlign.start
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(3, (index) => buildDot(index, 0)),
                  ),
                ],
              ),
            ),
            SkipButton(liquidController: liquidController)
          ],
        ),
      ),
    );
  }
}