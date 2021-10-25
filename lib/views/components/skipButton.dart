import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:saving_traget/theme.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
    required this.liquidController,
  }) : super(key: key);

  final LiquidController liquidController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: TextButton(
          onPressed: () {
            liquidController.animateToPage(
              page: 2, 
              duration: 700
            );
          },
          child: Text(
            "Skip",
            style: AppTheme.subtitleTextStyle,
          )
        ),
      ),
    );
  }
}