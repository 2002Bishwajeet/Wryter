import 'package:flutter/material.dart';
import 'package:todoapp/Pages/AboutPages.dart';
import 'package:todoapp/Pages/Forms.dart';
import 'package:todoapp/Pages/HomePage.dart';
import 'package:todoapp/Pages/Notes.dart';
import 'package:todoapp/utils/routes.dart';
import 'Widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode
          .system, //Khali yeh daalne mein nhi chlega isne bas isse adopt kiya hai
      theme: Mytheme.lightTheme(context),
      // debugShowCheckedModeBanner: false,//trick to remove debug icon
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => Homepage(),
        MyRoutes.homeroute: (context) => Homepage(),
        "/About": (context) => AboutMe(),
        "/Feedback": (context) => Forms(),
         "/Notes": (context) => Notes(),
      },
    );
  }
}
