
import 'package:flutter/material.dart';

class Lockscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/Login.png",width: double.infinity,fit: BoxFit.fill,),
          Container(
            margin: EdgeInsets.only(top: 770,left: 25),
            width: 342,
            height: 60,
            child: FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(29)),onPressed: (){
              Navigator.of(context).pushNamed('home');
            },backgroundColor: Color(0XFFEE403D),
              child: Text("Explore                                        ->",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
            ),
          )
        ],
      ),
    );
  }

}