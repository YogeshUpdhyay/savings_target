import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: GoogleFonts.montserratAlternates(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
            SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
            SizedBox(height: 10.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
            SizedBox(height: 20.0,),
            MaterialButton(
              onPressed: () => Navigator.of(context).pushNamed("/"),
              color: const Color(0xff43c59e),
              height: 50,
              minWidth: size.width*0.8,
              elevation: 10.0,
              child: Text(
                "Submit",
                style: GoogleFonts.montserratAlternates(
                  color: Colors.white,
                  fontSize: 18
                ),
              )
            ),
            Divider(
              color: Colors.black,
              height: 40.0,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: size.width*0.8,
              height: 50,
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.google),
                  SizedBox(width: 20.0,),
                  Text(
                    "Sign In with Google",
                    style: GoogleFonts.montserratAlternates(),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            TextButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text(
                "Login",
                style: GoogleFonts.montserratAlternates(
                  fontSize: 16
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}