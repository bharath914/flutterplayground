import 'package:flutter/material.dart';

class TextFieldWidgetScreen extends StatefulWidget {
  const TextFieldWidgetScreen({super.key});

  @override
  State<TextFieldWidgetScreen> createState() => _TextFieldWidgetScreenState();
}

class _TextFieldWidgetScreenState extends State<TextFieldWidgetScreen> {
  final TextEditingController _controller = TextEditingController();
  String _sumbittedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFields'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Text(
              'Simple TextField',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Some Text',
                  hintText: 'Type here'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Text field with Controller'),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Some Text",
                  hintText: "Type Here"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _sumbittedText = _controller.text;
                });
              },
              child: const Text('Submit'),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Submitted Text is :$_sumbittedText'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password Text field (obscured)',
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('TextField with custom sytles'),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Stylish Textfield',
                hintText: 'Custom border and colors',
                prefixIcon: Icon(Icons.person),
                filled: true,
                fillColor: Colors.blue,
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text('Multiline Text field'),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Multiline Textfield',
                hintText: 'Type multilines here....',
              ),
            )
          ],
        ),
      ),
    );
  }
}
