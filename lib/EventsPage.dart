import 'package:flutter/material.dart';
import 'KaalravPage.dart';
import 'TechAdrishtaPage.dart';
import 'AthlemaPage.dart';
import 'ClubsatSmitPage.dart';
import 'CulturalFestivalPage.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
      Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: [
      Colors.teal.withOpacity(0.4),
      Colors.tealAccent.withOpacity(0.3),
      ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    ),
    ),
    ),
    Padding(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10, left: 10),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.start, // align items to the top
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Text(
    'Events',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 44,
    color: Colors.lightBlue,
    shadows: [
    Shadow(
    color: Colors.black.withOpacity(0.9),
    blurRadius: 2,
    offset: Offset(1, 1),
    ),
    ],
    ),
    ),
    ),
    ),
    Spacer(),
    Align(
    alignment: Alignment.topRight,
    child: IconButton(
    icon: Icon(
    Icons.arrow_back,
    color: Colors.blue,
    ),
    onPressed: () => Navigator.of(context).pop(),
    ),
    ),
    ],
    ),
    ),
    Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 80),
    Padding(
      padding: const EdgeInsets.all(8.0),

      child: ElevatedButton(
      onPressed: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => KaalravPage()),
      ),
      style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.blue,
      elevation: 5,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      ),
        minimumSize: Size(200, 60),
      ),
      child: Text(
      'Kaalrav',
      style: TextStyle(
      color: Colors.blue,
      fontSize: 24,
      ),
      ),
      ),
    ),
    SizedBox(height: 20),
    ElevatedButton(
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TechAdrishtaPage()),
    ),
    style: ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
    elevation: 5,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    ),
      minimumSize: Size(200, 60),
    ),
    child: Text(
    'Tech Adrishta',
    style: TextStyle(
    color: Colors.blue,
    fontSize: 24,
    ),
    ),
    ),
    SizedBox(height: 30),
    ElevatedButton(
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CulturalFestivalsPage()),
    ),
    style: ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
    elevation: 5,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    ),
      minimumSize: Size(200, 60),
    ),
    child: Text(
    'Cultural Festivals',
    style: TextStyle(
    color: Colors.blue,
    fontSize: 24,
    ),
    ),
    ),
    SizedBox(height: 30),
    ElevatedButton(
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AthlemaPage()),
    ),
    style: ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
    elevation: 5,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    ),
      minimumSize: Size(200, 60),
    ),
    child: Text(
    'Athlema',
    style: TextStyle(
    color: Colors.blue,
    fontSize: 24,
    ),
    ),
    ),
    SizedBox(height: 30),
    ElevatedButton(
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ClubsatSmitPage()),
    ),
    style: ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
    elevation: 5,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    ),
      minimumSize: Size(200, 60),
    ),
    child: Text(
    'Clubs at SMIT',
    style: TextStyle(
    color: Colors.blue,
    fontSize: 24,
    ),
    ),
    ),


    ]),
    ),
    ],
    ),
    );
  }
}
