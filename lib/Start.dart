import 'package:flutter/material.dart';
import '3rd.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _regNoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Positioned(
            top: -2,
            right: -80,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/college.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 240),
                Padding(
                  padding: const EdgeInsets.only(right:170),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _regNoController,
                  decoration: InputDecoration(
                    hintText: 'Registration No.',
                    hintStyle: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(


                  onPressed: () {


                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VirtualCampusPage()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical:10),
                  ),
                ),
                SizedBox(height: 16.0),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
