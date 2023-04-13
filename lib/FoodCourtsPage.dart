import 'package:flutter/material.dart';

class FoodCourtsPage extends StatelessWidget {
  const FoodCourtsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Court'),
      ),
      body: Center(
        child: Text('This is the Marena and Gym page.'),
      ),
    );
  }
}