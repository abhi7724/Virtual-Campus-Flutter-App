import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marena and Gym'),
      ),
      body: Center(
        child: Text('This is the Marena and Gym page.'),
      ),
    );
  }
}