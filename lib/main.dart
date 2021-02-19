import 'package:flutter/material.dart';
import 'package:todoapp/Pages/HomePage.dart';
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
        themeMode: ThemeMode.light, //Khali yeh daalne mein nhi chlega isne bas isse adopt kiya hai
        theme: Mytheme.lightTheme(context),
        // debugShowCheckedModeBanner: false,//trick to remove debug icon
        darkTheme: Mytheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
         initialRoute: MyRoutes.homeroute,
         routes: {
           MyRoutes.homeroute: (context) => Homepage()
         },
        );
  }
}
