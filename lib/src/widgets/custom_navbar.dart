import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNavbar {
  static Widget get mainIcon => Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(
          'W',
          textAlign: TextAlign.center,
          style: GoogleFonts.specialElite(color: Colors.white, fontSize: 40.0),
        ),
      );

  static List<Widget> pageName(String title) {
    return [
      Padding(
        padding: const EdgeInsets.only(top: 26.0, right: 26.0),
        child: Text(
          title,
          style: GoogleFonts.specialElite(),
        ),
      )
    ];
  }
}
