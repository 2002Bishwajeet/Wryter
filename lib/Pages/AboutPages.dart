import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class AboutMe extends StatelessWidget {
  final imagedp = "assets/images/DP.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          alignment: Alignment.topCenter,
         
          child: Text("About Me",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900],fontSize: 36,fontFamily: GoogleFonts.poppins().fontFamily),)

        ),
      ),
    );
  }
}
