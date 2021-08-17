
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getDrawer(context) {
  return Drawer(
    child: Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: Colors.black,
            height: 10.0,
          ),
          ListTile(
            title: Text(
              "Logout",
              style: GoogleFonts.montserratAlternates(
                fontSize: 16
              ),
            ),
            leading: FaIcon(FontAwesomeIcons.signOutAlt),
            onTap: () => Navigator.of(context).pushReplacementNamed("/login"),
          )
        ],
      ),
    ),
  );
}