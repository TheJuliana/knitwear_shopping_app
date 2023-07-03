import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final int indexPage;
  InfoPage({super.key,  required this.indexPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Text('name' + indexPage.toString()),
          Text('description'),
          Text('price')
        ],
      ),
    );
  }
}
