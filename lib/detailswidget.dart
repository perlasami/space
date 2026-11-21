
import 'package:flutter/material.dart';

import '3dmodel.dart';

class Detailswidget  extends StatelessWidget{
  String name;
  String title;
  String details;
  String distance;
  double hours;
  double orbitalPeriod;
  double radius;
  String mass;
  double gravity;
  String area;
  Detailswidget({
    required this.name,
    required this.title,
    required this.details,
    required this.distance,
    required this.hours,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.area,

});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 100,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 50,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ),
            Text(name,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),


          ],
        ),
        Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),
        Models(name: name),
        Text("About",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),
        Text(details,style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w300),),
        Text(
          'Distance from Sun (km) : ${distance}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          'Length of Day (hours) : ${hours}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          'Orbital Period (Earth years) : ${orbitalPeriod}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          'Radius (km) : ${radius}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          'Mass (kg) : ${mass}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          'Gravity (m/s²) : ${gravity}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          'Surface Area (km²) : ${area}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),

      ],
    );
  }

}