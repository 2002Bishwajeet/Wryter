import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentindex = 1; // dont set it null

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Tap the + icon to add Notes')),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[900],
        onPressed: () => setState(() => null),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,

        // type: BottomNavigationBarType.fixed,
        // iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Feedback',
          ), //backgroundcolor: Colors.yourchoice  // must use it in futures
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.sticky_note), label: 'Notes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
        ],

        onTap: (index) {
          setState(() {
            _currentindex = index;
            if (_currentindex == 0) {
              Navigator.pushNamed(context, "/Feedback");
            } else if (_currentindex == 2) {
              Navigator.pushNamed(context, '/About');
            }
          });
        },
      ),
    );
  }
}
