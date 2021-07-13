import 'package:flutter/material.dart';
import 'package:saving_traget/views/components/header.dart';
import 'package:saving_traget/views/components/tilessection.dart';

class Index extends StatefulWidget {
  const Index({ Key? key }) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                child: Image.asset(
                  "assets/img/topCorner.png",
                  width: size.width,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(size.width*0.05, 20, size.width*0.05, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(height: 30.0,),
                  TilesSection(size: size)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}












