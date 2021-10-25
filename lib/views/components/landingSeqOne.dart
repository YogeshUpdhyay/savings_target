import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:saving_traget/theme.dart';
import 'package:saving_traget/views/components/skipButton.dart';
import 'package:saving_traget/views/utils/buildDot.dart';

class LandingSeqOne extends StatelessWidget {
  const LandingSeqOne({ 
    Key? key,
    required this.liquidController,
  }) : super(key: key);

  final LiquidController liquidController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          image: DecorationImage(
            image: AssetImage("assets/img/landing-seq-backdrop.png"),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Like Something",
                        style: AppTheme.headingTextStyle,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Like something you want feel like getting it ?",
                        style: AppTheme.subtitleTextStyle,
                        textAlign: TextAlign.start
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/img/landing-seq-1-ill.png",
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