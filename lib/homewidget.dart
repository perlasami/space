
import 'package:flutter/material.dart';

class Homewidget extends StatelessWidget{
  String image;
  String name;
  VoidCallback onNext;
  VoidCallback onPrev;
  Homewidget({required this.name,required this.image,required this.onNext,
    required this.onPrev});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 170,right: 80,bottom: 15),
            child:
            Text("Which Planet \nwould you like to explore?",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),)),
        Container(
          width: 400,
            height: 400,

            child: Image.asset(image)
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 90,
            children: [
              Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: onPrev,
                ),
              ),
              Text(name,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
              Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  onPressed: onNext,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          width: 342,
          height: 60,
          child: FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(29)),onPressed: (){
            Navigator.of(context).pushNamed('details',arguments: name,);
          },backgroundColor: Color(0XFFEE403D),
            child: Text("Explore $name                              ->",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
          ),
        )
      ],
    );
  }

}