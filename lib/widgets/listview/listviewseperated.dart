import 'package:flutter/material.dart';

class ListViewSeperatedScreen extends StatefulWidget {
  const ListViewSeperatedScreen({super.key});

  @override
  State<ListViewSeperatedScreen> createState() => _ListViewSeperatedScreenState();
}

class _ListViewSeperatedScreenState extends State<ListViewSeperatedScreen> {
  final List<String> list = List.generate(10, (index)=>'$index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Separated'),
      ),
      body: ListView.separated(
          itemCount: list.length,
          itemBuilder: (context,index){
        return ListTile(
        leading: Icon(Icons.label),
          title: Text(list[index]),
          subtitle: Text('Details of ${list[index]}'),
        );
      },
        separatorBuilder: (context,index){
            return Divider(color: Colors.grey,);
        },
      ),
    );
  }
}
