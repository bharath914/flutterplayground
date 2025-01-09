import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<String> items = List.generate(10000, (index) => "Item is $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Builder')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final current = items[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(current),
            subtitle: Text('Description of $current'),
            trailing: Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
