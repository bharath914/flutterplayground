import 'package:flutter/material.dart';

class GestureDetectionScreen extends StatefulWidget {
  const GestureDetectionScreen({super.key});

  @override
  State<GestureDetectionScreen> createState() => _GestureDetectionScreenState();
}

class _GestureDetectionScreenState extends State<GestureDetectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detection Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Widget Single Tapped ")));
          },
          onDoubleTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Widget Double Tapped')));
          },
          onLongPress: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Widget Long Pressed')));
          },
          child: Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            child: Center(child: Text('Tap me here ....')),
          ),
        ),
      ),
    );
  }
}
