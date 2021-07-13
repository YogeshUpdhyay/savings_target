import 'package:flutter/material.dart';
import 'package:saving_traget/views/components/expensetile.dart';
import 'package:saving_traget/views/components/savingstile.dart';
import 'package:saving_traget/views/components/targesttile.dart';

class TilesSection extends StatelessWidget {
  const TilesSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpenseTile(size: size),
          ],
        ),
        SizedBox(width: 5.0,),
        Column(
          children: [
            SavingsTile(size: size),
            SizedBox(height: 5.0,),
            TargetsTile(size: size),
          ],
        )
      ],
    );
  }
}