import 'package:flutter/material.dart';

class DraggableDetectionScreen extends StatefulWidget {
  const DraggableDetectionScreen({super.key});

  @override
  State<DraggableDetectionScreen> createState() =>
      _DraggableDetectionScreenState();
}

class _DraggableDetectionScreenState extends State<DraggableDetectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag Gesture Detection'),
      ),
      body: Center(
        child: Draggable(
          data: "Hello, I'm being dragged!",
          feedback: Container(
            width: 100,
            height: 100,
            color: Colors.blue.withOpacity(0.5),
            child: Center(
              child: Text(
                'Dragging',
                style: TextStyle(color: Colors.white,fontSize: 10),
              ),
            ),
          ),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Drag me ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          childWhenDragging: Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: Center(
              child: Text(
                'Original',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
