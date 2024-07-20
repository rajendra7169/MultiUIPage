import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List<Map<String, String>> fruits = [
    {'name': 'Apple', 'image': 'assets/apple.png'},
    {'name': 'Banana', 'image': 'assets/banana.png'},
    {'name': 'Orange', 'image': 'assets/orange.png'},
    {'name': 'Grapes', 'image': 'assets/grapes.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('List View Page'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300, // Border color
                  width: 1.0, // Border width
                ),
              ),
            ),
            child: ListTile(
              leading: Image.asset(fruit['image']!),
              title: Text(fruit['name']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FruitDetailPage(fruit: fruit),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class FruitDetailPage extends StatelessWidget {
  final Map<String, String> fruit;

  FruitDetailPage({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('${fruit['name']} Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(fruit['image']!), // Display the image
            SizedBox(height: 20),
            Text('This is ${fruit['name']}'),
          ],
        ),
      ),
    );
  }
}
