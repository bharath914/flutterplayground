import 'package:flutter/material.dart';

class InfiniteScrollingListViewScreen extends StatefulWidget {
  const InfiniteScrollingListViewScreen({super.key});

  @override
  State<InfiniteScrollingListViewScreen> createState() =>
      _InfiniteScrollingListViewSreenState();
}

class _InfiniteScrollingListViewSreenState
    extends State<InfiniteScrollingListViewScreen> {
  final List<int> items = List.generate(45, (index) => index);
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent-100 &&
          !isLoading) {
        loadMoreItems();
      }
    });
  }

  void loadMoreItems() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 5));

    setState(() {
      items.addAll(List.generate(20, (index) => items.length + index));
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite/Paging List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: const Icon(Icons.star),
                  ),
                  title: Text('Items ${items[index]}'),
                );
              },
            ),
          ),
          if (isLoading)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
