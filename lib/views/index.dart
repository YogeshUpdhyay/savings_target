import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GlassmorphicContainer(
                            width: size.width*0.425,
                            height: size.height*0.3,
                            borderRadius: 20,
                            blur: 20,
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
                            child: Text("Current Targets")
                          ),
                          SizedBox(height: 5.0,),
                          GlassmorphicContainer(
                            width: size.width*0.425,
                            height: size.height*0.2,
                            borderRadius: 20,
                            blur: 20,
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
                            child: Text("Current Targets")
                          ),
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        children: [
                          GlassmorphicContainer(
                            width: size.width*0.425,
                            height: size.height*0.2,
                            borderRadius: 20,
                            blur: 20,
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
                            child: Text("Current Targets")
                          ),
                          SizedBox(height: 5.0,),
                          GlassmorphicContainer(
                            width: size.width*0.425,
                            height: size.height*0.3,
                            borderRadius: 20,
                            blur: 20,
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
                            child: Text("Current Targets")
                          ),
                        ],
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