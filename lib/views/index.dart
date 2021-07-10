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
        child: Container(
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
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Container(
                    width: size.width*0.45,
                    child: Column(
                      children: [
                        Text("Widhlist"),
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
      ),
    );
  }
}