import 'package:flutter/material.dart';
import 'EventsPage.dart';
import 'FoodCourtsPage.dart';
import 'LibraryPage.dart';
import 'MarenaGymPage.dart';



class VirtualCampusPage extends StatelessWidget {
  const VirtualCampusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),


          child: Icon(
            Icons.account_circle,
            color: Colors.lightBlue,
            size: 32,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.lightBlue,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Virtual Campus',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
                shadows: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            color: Colors.white,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton('Home', Colors.lightBlue, Colors.white),
                _buildButton('Scan ID', Colors.lightBlue, Colors.white),
                _buildButton('Report Lost ID', Colors.lightBlue, Colors.white),
                _buildButton('Find', Colors.lightBlue, Colors.white),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [

                    Colors.tealAccent.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildElevatedButton(
                        'Library',
                        Colors.white,
                        Colors.lightBlue,
                        AssetImage("assets/images/college.jpeg"),
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                LibraryPage()),
                          );
                        }
                    ),

                    SizedBox(height: 20),
                    _buildElevatedButton(
                        'Food Courts', Colors.white, Colors.lightBlue,
                        AssetImage("assets/images/college.jpeg"), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            FoodCourtsPage()),
                      );
                    }),
                    SizedBox(height: 20),
                    _buildElevatedButton(
                        'Marena and Gym', Colors.white, Colors.lightBlue,
                        AssetImage("assets/images/college.jpeg"), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            MarenaGymPage()),
                      );
                    }),
                    SizedBox(height: 20),
                    _buildElevatedButton(
                        'Events', Colors.white, Colors.lightBlue,
                        AssetImage("assets/images/college.jpeg"), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsPage()),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildButton(String title, Color color, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(String title, Color color, Color textColor,
      AssetImage image, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70)),
          minimumSize: Size(double.infinity, 100),
          elevation: 8,
          shadowColor: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                  title, style: TextStyle(fontSize: 16, color: textColor)),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image(image: image, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}

