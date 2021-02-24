import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/Widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  int _currentindex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Container(
              padding: Vx.m24,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    IntroCard().py20(),
                    Hobbies(),
                  ]).p20(),
            ),
          ],
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
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.sticky_note), label: 'Notes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
            if (_currentindex == 0) {
              Navigator.pushNamed(context, '/Feedback');
            } else if (_currentindex == 1) {
              Navigator.pushNamed(context, '/');
            }
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
          InkWell(
            onTap: () async {
              const url = "https://twitter.com/Biswa_20p";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              FontAwesome.twitter,
              color: Colors.blue,
            ).px20(),
          ),
          InkWell(
            onTap: () async {
              const url = "https://github.com/2002Bishwajeet";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              FontAwesome.github,
              color: Colors.purple,
            ).px20(),
          ),
          InkWell(
            onTap: () async {
              const url = 'https://www.linkedin.com/in/2002bishwajeet/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              FontAwesome.linkedin,
              color: Colors.blue[600],
            ).px20(),
          ),
          //  Icon(FontAwesome.instagram,color: Colors.pink,).px20(),
          //  Icon(FontAwesome.facebook,color: Colors.blue[700],).px20(),
        ],
      ).centered(),
    ).px64();
  }
}

class IntroCard extends StatefulWidget {
  @override
  _IntroCardState createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> {
  String data = '';
  fetchFuncData() async {
    String txt = await rootBundle.loadString('assets/Intro.txt');

    setState(() {
      data = txt;
    });
  }

  @override
  void initState() {
    fetchFuncData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(0.0),
      child: Column(children: <Widget>[
        ListTile(
          title: Text(
            'Introduction',
            style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
                fontSize: 27),
          ).py1().centered(),
          subtitle: Text(
            data,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.deepPurple[800]),
          ),
        ),
      ]),
    );
  }
}

class Hobbies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(0.0),
      child: Column(children: <Widget>[
        ListTile(
          title: Text(
            'Hobbies',
            style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
                fontSize: 27),
          ).py1().centered(),
          subtitle: Text(
            "Love to play FPS Games. I Also Play Piano and loves to do Video Editing",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.deepPurple[800]),
          ),
        ),
      ]),
    );
  }
}
