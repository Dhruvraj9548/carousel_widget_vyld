import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Transfer', style: TextStyle(color: Colors.black54),),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height : 30),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Who do you want to\ntransfer money to?',style: TextStyle(fontSize: 35),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 50) ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      primary: Colors.black54, // Change this color to the desired one
                    ),
                    onPressed: (){}, child: Text('+   New', style: TextStyle(fontSize: 20),),),
                ],
              ),
            ),

            Center(
              child: CarouselSlider(
                items: [
                  // Your widgets here
              Stack(
              children: [
              // Add your circular images with uneven sizes and positions
              Positioned(
              top: 50.0,
                left: 1.0,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/dog.png'),
                  backgroundColor: Colors.white,
                ),
              ),
                Positioned(
                  bottom: 50.0,
                  left: 50.0,
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/images/cat.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 80.0,
                  right: 20.0,
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/images/dog.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
              Positioned(
                top: 150.0,
                left: 150.0,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/images/cat.png'),
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                top: 250.0,
                left: 220.0,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/dog.png'),
                  backgroundColor: Colors.white,
                ),
              ),
              // Add more Positioned widgets for additional images

              // You can add as many Positioned widgets as needed for your layout
              ],
            ),
            Stack(
              children: [
                // Add your circular images with uneven sizes and positions
                Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/cat.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 50.0,
                  left: 20.0,
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/images/dog.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 80.0,
                  right: 1.0,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/images/cat.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 150.0,
                  left: 80.0,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/dog.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 250.0,
                  left: 270.0,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/cat.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                // Add more Positioned widgets for additional images


              ],
            )

                ],
                options: CarouselOptions(
                  pageSnapping: true,
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.decelerate,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    // Callback when the page is changed
                  },
                ),
              ),
            ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30),
                            Text('SALARY', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                              Text('\$12,475', style: TextStyle(color: Colors.white, fontSize: 33, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      width: 200, // Adjust the width as needed
                      height: 200, // Adjust the height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(200)),
                        color: Colors.blue, // Change the color as needed

                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

