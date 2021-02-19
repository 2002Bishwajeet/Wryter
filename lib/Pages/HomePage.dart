import 'package:flutter/material.dart';
import 'package:todoapp/Widgets/theme.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentindex = 0;
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
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Feedback'), //backgroundcolor: Colors.yourchoice  // must use it in futures
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
