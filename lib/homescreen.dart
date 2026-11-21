
import 'package:flutter/material.dart';
import 'package:space_app/homewidget.dart';

class Homescreen extends StatefulWidget{
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;
  List<String>Images=[
    'assets/images/earth.png',
    'assets/images/jupiter.png',
    'assets/images/mars.png',
    'assets/images/mercury.png',
    'assets/images/neptune.png',
    'assets/images/saturn.png',
    'assets/images/sun.png',
    'assets/images/uranus.png',
    'assets/images/venus.png',
  ];

  List<String>names=[
    'Earth',
    'Jupiter',
    'Mars',
    'Mercury',
    'Neptune',
    'Saturn',
    'Sun',
    'Uranus',
    'Venus'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/Home.png",width: double.infinity,fit: BoxFit.fill,),
          Homewidget(
            name: names[currentIndex],
            image: Images[currentIndex],
            onNext: forwardArrow,
            onPrev: backwardArrow,
          ),

        ],
      ),
    );
  }

  void forwardArrow() {
    setState(() {
      if (currentIndex < Images.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    });
  }

  void backwardArrow() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = Images.length - 1;
      }
    });
  }
}
