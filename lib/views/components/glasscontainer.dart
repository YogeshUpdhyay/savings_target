import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    Key? key,
    required this.size, 
    required this.widthPercentage, 
    required this.heightPercentage, 
    required this.child,
  }) : super(key: key);

  final Size size;
  final double widthPercentage;
  final double heightPercentage;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      width: size.width*widthPercentage,
      height: size.height*heightPercentage,
      borderRadius: 45,
      blur: 50,
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff1f727a).withOpacity(0.1),
          Color(0xff43c59e).withOpacity(0.05),
        ],
        stops: [
          0.1,
          1,
        ]
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffffff).withOpacity(0.5),
          Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      child: child
    );
  }
}