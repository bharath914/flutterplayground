import 'package:flutter/material.dart';

class InkWellWithSnackbarScreen extends StatefulWidget {
  const InkWellWithSnackbarScreen({super.key});

  @override
  State<InkWellWithSnackbarScreen> createState() =>
      _InkWellWithSnackbarScreenState();
}

class _InkWellWithSnackbarScreenState extends State<InkWellWithSnackbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ink Well Screen"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Ink well has been tapped')));
          },
          focusColor: Colors.green,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Tap me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
