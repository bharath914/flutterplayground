import 'package:flutter/material.dart';

class BasicListViewWidgetScreen extends StatefulWidget {
  const BasicListViewWidgetScreen({super.key});

  @override
  State<BasicListViewWidgetScreen> createState() => _BasicListViewWidgetScreenState();
}

class _BasicListViewWidgetScreenState extends State<BasicListViewWidgetScreen> {
  final List<String> listItems = List.generate(10, (index)=>'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic List View'),

      ),
      body: ListView(
        children: listItems.map((item){
          return ListTile(
            leading: Icon(Icons.star),
            title: Text(item),
            subtitle: Text('This is $item'),
          );
        }).toList()
      ),
    );
  }
}
