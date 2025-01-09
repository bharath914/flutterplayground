import 'package:flutter/material.dart';

class StackWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Widget Example')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Stack:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[200],
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Top',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Bottom',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Stack with Alignment:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[200],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Stack with Positioned Widgets:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[200],
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 100,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green,
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
