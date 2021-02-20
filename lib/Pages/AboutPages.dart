import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/Widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  int _currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            "About Me".text.xl5.bold.blue700.make(),
            ProfilePhoto(),
            Intro(),
            "19 | App Developer | Video Editor |"
                .text
                .xl
                .color(Mytheme.darkBluishcolor)
                .make()
                .centered(),

                Icondata(),
          ]).p20(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfff5f5f5),
        currentIndex: _currentindex,
        // type: BottomNavigationBarType.fixed,
        // iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label:
                  'Feedback'), //backgroundcolor: Colors.yourchoice  // must use it in futures
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final picture = "assets/DP.jpg";
    return Container(
        child: CircleAvatar(
      backgroundImage: AssetImage(picture),
    )).circle().centered().py32();
  }
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text("Bishwajeet Parhi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.blue[700],
            ))).centered();
  }
}

class Icondata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            FontAwesome.twitter,
            color: Colors.blue,
          ).px20(),
          Icon(
            FontAwesome.github,
            color: Colors.purple,
          ).px20(),
          Icon(
            FontAwesome.linkedin,
            color: Colors.blue[600],
          ).px20(),
          //  Icon(FontAwesome.instagram,color: Colors.pink,).px20(),
          //  Icon(FontAwesome.facebook,color: Colors.blue[700],).px20(),
        ],
      ).centered(),
    ).px64();
  }
}
