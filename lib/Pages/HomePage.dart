import 'package:flutter/material.dart';
import 'package:todoapp/Widgets/theme.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       body: Center(child: Text('Tap the + icon to add Notes')),
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.blue[900],
        onPressed: () => setState(() => null),
        child: const Icon(Icons.add,
        color: Colors.white,
        ),
      ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: [
             BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Feedback'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'About'
              ),
              
          ],
        ),
    );
  }
}