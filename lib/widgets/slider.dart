import 'package:flutter/material.dart';

class SliderWidgetScreen extends StatefulWidget {
  const SliderWidgetScreen({super.key});

  @override
  State<SliderWidgetScreen> createState() => _SliderWidgetScreenState();
}

class _SliderWidgetScreenState extends State<SliderWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget'),
      ),
    );
  }
}
