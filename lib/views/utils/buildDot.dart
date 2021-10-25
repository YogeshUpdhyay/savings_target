import 'dart:math';
import 'package:flutter/material.dart';

Widget buildDot(int index, int page) {
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