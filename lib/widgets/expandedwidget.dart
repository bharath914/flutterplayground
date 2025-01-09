  import 'package:flutter/material.dart';

  class ExpandedWidgetScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Expanded Widget Example')),
        body: Column(
          children: [
            Text(
              'Row with Expanded Widgets:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1, // Takes 1 part of the space
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        '1 Flex',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2, // Takes 2 parts of the space
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        '2 Flex',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Takes 1 part of the space
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '1 Flex',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Column with Expanded Widgets:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2, // Takes 2 parts of the vertical space
              child: Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    '2 Flex',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3, // Takes 3 parts of the vertical space
              child: Container(
                color: Colors.purple,
                child: Center(
                  child: Text(
                    '3 Flex',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1, // Takes 1 part of the vertical space
              child: Container(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    '1 Flex',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

