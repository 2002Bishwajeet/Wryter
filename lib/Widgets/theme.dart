import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.blue[
          900], //primary swatch mein sirf ek single color jaega like blue not blue[100] shades not allowed
      fontFamily: GoogleFonts.poppins().fontFamily,
      buttonColor: darkBluishcolor,
      cardColor: Vx.white,
      canvasColor: creamcolor,
      accentColor: darkBluishcolor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
        
      ));

  static int get newMethod => 900;
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamcolor,
      buttonColor: lightBluishcolor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
         textTheme: Theme.of(context).textTheme.copyWith(headline6: context.textTheme.headline6.copyWith(color: Colors.white)),
      ));

//color
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkBluishcolor = Color(0xff403b58);
  static Color lightBluishcolor = Vx.indigo800;
  static Color darkCreamcolor = Vx.gray900;
}

