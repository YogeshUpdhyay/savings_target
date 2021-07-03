import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: GoogleFonts.montserratAlternates(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Email"
              ),
            ),
            SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Password"
              ),
            ),
            SizedBox(height: 10.0,),
            MaterialButton(
              onPressed: () {},
              color: const Color(0xff43c59e),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login),
                  SizedBox(width: 10.0,),
                  Text(
                    "Submit",
                    style: GoogleFonts.montserratAlternates(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}