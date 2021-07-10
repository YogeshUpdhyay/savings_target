import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  Text(
                    "Hello, Yogesh",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Happy Savings!",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: size.width*0.45,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.lightGreenAccent
                              ),
                              child: Text("Wishlist"),
                              
                            ),
                            Text("Current Value")
                          ],
                        ),
                      ),
                      Container(
                        width: size.width*0.45,
                        child: Column(
                          children: [
                            Text("Current Targets"),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}