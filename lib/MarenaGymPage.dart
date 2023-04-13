import 'package:flutter/material.dart';

class MarenaGymPage extends StatelessWidget {
  const MarenaGymPage({Key? key}) : super(key: key);

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
