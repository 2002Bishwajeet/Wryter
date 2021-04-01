import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  String name = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var _currentindex = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/finalfeedback.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Hello $name",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: "Pls Enter Your Name",
                            labelText: "Name",
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Your Name';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Email Address",
                            labelText: "Email ID",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Wrong Email Address";
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        TextFormField(
                          minLines: 1,
                          maxLines: 10,
                          autocorrect: true,
                          enableInteractiveSelection: true,
                          enableSuggestions: true,
                          autofocus: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Type your message here",
                            labelText: "Message",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Pls Enter something";
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Thanks For Your Feedback')));
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            if (_currentindex == 1) {
              Navigator.pushNamed(context, '/');
            } else if (_currentindex == 2) {
              Navigator.pushNamed(context, '/About');
            }
          });
        },
      ),
    );
  }
}
