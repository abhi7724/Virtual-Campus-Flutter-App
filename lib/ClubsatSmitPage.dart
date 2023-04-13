import 'package:flutter/material.dart';

class ClubsatSmitPage extends StatelessWidget {
  const ClubsatSmitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -2,
            left: -60,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/college.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.blue),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 320,
            left: 20,
            child: Text(
              'CLubs',
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 20,
            right: 20,
            bottom: 80,
            child: SingleChildScrollView(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vel velit sapien. Suspendisse nec dolor eu nisi lobortis euismod nec vel nibh. Aliquam vitae nunc dolor. Sed non nulla auctor, sagittis nunc sit amet, facilisis libero. Ut ac orci at dolor venenatis sodales sit amet quis magna. Curabitur dignissim bibendum lacus a dignissim. Aliquam euismod vehicula nisi vel tincidunt. Integer vestibulum lectus vitae lacus venenatis tincidunt. Sed non interdum risus. Sed quis nisi enim. Nam viverra velit vitae consectetur fringilla. Integer sit amet bibendum dolor. In suscipit felis eu orci consectetur, a luctus quam feugiat. Suspendisse potenti. Nulla facilisi. Donec commodo tincidunt mauris, a vulputate enim commodo in.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('More Info'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),

                  ),

                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}