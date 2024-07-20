import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'list_view_page.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Change this to your desired color
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set text color
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecondPage(name: '', email: '', address: '')),
                      );
                    },
                    child: Text('Go to Second Page'),
                  ),
                  SizedBox(height: 20), // Add spacing between buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set text color
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => FirstPage()),
                      );
                    },
                    child: Text('Go to First Page'),
                  ),
                  SizedBox(height: 20), // Add spacing between buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set text color
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListViewPage()),
                      );
                    },
                    child: Text('Go to List View'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
