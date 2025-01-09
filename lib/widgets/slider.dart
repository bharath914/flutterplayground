import 'package:flutter/material.dart';

class SliderWidgetScreen extends StatefulWidget {
  const SliderWidgetScreen({super.key});

  @override
  State<SliderWidgetScreen> createState() => _SliderWidgetScreenState();
}

class _SliderWidgetScreenState extends State<SliderWidgetScreen> {
  double _currentValue = 50;
  RangeValues _currentRangeValues = RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Basic Slider'),
            SizedBox(
              height: 10,
            ),
            Slider(
              value: _currentValue,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: _currentValue.round().toString(),
            ),
            Text(
              'Selected value : ${_currentValue.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Range Slider ',
            ),
            SizedBox(
              height: 10,
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(_currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString()),
              onChanged: (values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            Text(
              'Selected Range : ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Slider with multi colors'),
            SizedBox(
              height: 10,
            ),
            Slider(
              value: _currentValue,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
              min: 0,
              max: 100,
              activeColor: Colors.green[400],
              inactiveColor: Colors.green[100],
              thumbColor: Colors.red,
              label: _currentValue.round().toString(),
              divisions: 100,
            )
          ],
        ),
      ),
    );
  }
}
