import 'package:flutter/material.dart';

class SwipeGestureScreen extends StatefulWidget {
  const SwipeGestureScreen({super.key});

  @override
  State<SwipeGestureScreen> createState() => _SwipeGestureScreenState();
}

class _SwipeGestureScreenState extends State<SwipeGestureScreen> {
 void showSnackBar(String msg){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg))
  );
 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Swipe Gesture Screen"),
        ),
        body: Center(
          child: GestureDetector(
            onPanUpdate: (details){
                if(details.delta.dx > 0 ){
                  showSnackBar('Swiped Right');
                }
                else if(details.delta.dx <0){
                  showSnackBar('Swiped Left');
                }
                else if(details.delta.dy >0){
                  showSnackBar('Swiped Down');
                }
                else if(details.delta.dy <0) {
                    showSnackBar('Swiped Up');
                }
            },
            child: Container(
              width: 300,
              height: 300,
              color: Colors.greenAccent,
              child: Center(
                child: Text('Do swipe gestures here...'),
              ),
            ),
          ),
        ),
    );
  }
}