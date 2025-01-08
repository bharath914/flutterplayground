import 'package:flutter/material.dart';

class ImageWidgetScreen extends StatefulWidget {
  const ImageWidgetScreen({super.key});

  @override
  State<ImageWidgetScreen> createState() => _ImageWidgetScreenState();
}

class _ImageWidgetScreenState extends State<ImageWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Text('Image From Asset'),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/bike.jpg',
              width: 400,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Image From Network'),
            Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
              width: 300,
              height: 200,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Circular Image(ClipRRect'),
            SizedBox(
              height: 10,
            ),
           ClipRRect(
             borderRadius: BorderRadius.circular(100),
             child: Image.network(
               'https://img.stablecog.com/insecure/1920w/aHR0cHM6Ly9iLnN0YWJsZWNvZy5jb20vN2EzODhlOGUtYjAwMS00ZWFmLWJlZGMtMjA1NjhmNmEzMjJmLmpwZWc.webp',
                width: 200,
               height: 200,
               fit: BoxFit.fill,
             ),
           )
          ],
        ),
      ),
    );
  }
}
