import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
              hintText: "Enter Your Note",

      ),
    
      )
    );
  }
}