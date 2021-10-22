import 'package:flutter/material.dart';
import 'package:saving_traget/theme.dart';

class LandingSeqOne extends StatelessWidget {
  const LandingSeqOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/landing-seq-backdrop.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
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
      ),
    );
  }
}